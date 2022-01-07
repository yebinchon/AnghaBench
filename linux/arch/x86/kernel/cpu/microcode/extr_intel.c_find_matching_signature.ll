; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/microcode/extr_intel.c_find_matching_signature.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/microcode/extr_intel.c_find_matching_signature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.microcode_header_intel = type { i32, i32 }
%struct.extended_sigtable = type { i32 }
%struct.extended_signature = type { i32, i32 }

@MC_HEADER_SIZE = common dso_local global i64 0, align 8
@EXT_HEADER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @find_matching_signature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_matching_signature(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.microcode_header_intel*, align 8
  %9 = alloca %struct.extended_sigtable*, align 8
  %10 = alloca %struct.extended_signature*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.microcode_header_intel*
  store %struct.microcode_header_intel* %13, %struct.microcode_header_intel** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.microcode_header_intel*, %struct.microcode_header_intel** %8, align 8
  %17 = getelementptr inbounds %struct.microcode_header_intel, %struct.microcode_header_intel* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.microcode_header_intel*, %struct.microcode_header_intel** %8, align 8
  %20 = getelementptr inbounds %struct.microcode_header_intel, %struct.microcode_header_intel* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @cpu_signatures_match(i32 %14, i32 %15, i32 %18, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %75

25:                                               ; preds = %3
  %26 = load %struct.microcode_header_intel*, %struct.microcode_header_intel** %8, align 8
  %27 = call i64 @get_totalsize(%struct.microcode_header_intel* %26)
  %28 = load %struct.microcode_header_intel*, %struct.microcode_header_intel** %8, align 8
  %29 = call i32 @get_datasize(%struct.microcode_header_intel* %28)
  %30 = sext i32 %29 to i64
  %31 = load i64, i64* @MC_HEADER_SIZE, align 8
  %32 = add nsw i64 %30, %31
  %33 = icmp sle i64 %27, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %75

35:                                               ; preds = %25
  %36 = load i8*, i8** %5, align 8
  %37 = load %struct.microcode_header_intel*, %struct.microcode_header_intel** %8, align 8
  %38 = call i32 @get_datasize(%struct.microcode_header_intel* %37)
  %39 = sext i32 %38 to i64
  %40 = getelementptr i8, i8* %36, i64 %39
  %41 = load i64, i64* @MC_HEADER_SIZE, align 8
  %42 = getelementptr i8, i8* %40, i64 %41
  %43 = bitcast i8* %42 to %struct.extended_sigtable*
  store %struct.extended_sigtable* %43, %struct.extended_sigtable** %9, align 8
  %44 = load %struct.extended_sigtable*, %struct.extended_sigtable** %9, align 8
  %45 = bitcast %struct.extended_sigtable* %44 to i8*
  %46 = load i32, i32* @EXT_HEADER_SIZE, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr i8, i8* %45, i64 %47
  %49 = bitcast i8* %48 to %struct.extended_signature*
  store %struct.extended_signature* %49, %struct.extended_signature** %10, align 8
  store i32 0, i32* %11, align 4
  br label %50

50:                                               ; preds = %71, %35
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.extended_sigtable*, %struct.extended_sigtable** %9, align 8
  %53 = getelementptr inbounds %struct.extended_sigtable, %struct.extended_sigtable* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %74

56:                                               ; preds = %50
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.extended_signature*, %struct.extended_signature** %10, align 8
  %60 = getelementptr inbounds %struct.extended_signature, %struct.extended_signature* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.extended_signature*, %struct.extended_signature** %10, align 8
  %63 = getelementptr inbounds %struct.extended_signature, %struct.extended_signature* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @cpu_signatures_match(i32 %57, i32 %58, i32 %61, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %56
  store i32 1, i32* %4, align 4
  br label %75

68:                                               ; preds = %56
  %69 = load %struct.extended_signature*, %struct.extended_signature** %10, align 8
  %70 = getelementptr inbounds %struct.extended_signature, %struct.extended_signature* %69, i32 1
  store %struct.extended_signature* %70, %struct.extended_signature** %10, align 8
  br label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %11, align 4
  br label %50

74:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %74, %67, %34, %24
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i64 @cpu_signatures_match(i32, i32, i32, i32) #1

declare dso_local i64 @get_totalsize(%struct.microcode_header_intel*) #1

declare dso_local i32 @get_datasize(%struct.microcode_header_intel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
