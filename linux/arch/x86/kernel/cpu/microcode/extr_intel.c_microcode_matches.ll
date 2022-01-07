; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/microcode/extr_intel.c_microcode_matches.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/microcode/extr_intel.c_microcode_matches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.microcode_header_intel = type { i64 }
%struct.extended_sigtable = type { i32 }
%struct.extended_signature = type { i64 }

@MC_HEADER_SIZE = common dso_local global i64 0, align 8
@EXT_HEADER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.microcode_header_intel*, i64)* @microcode_matches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @microcode_matches(%struct.microcode_header_intel* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.microcode_header_intel*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.extended_sigtable*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.extended_signature*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.microcode_header_intel* %0, %struct.microcode_header_intel** %4, align 8
  store i64 %1, i64* %5, align 8
  %16 = load %struct.microcode_header_intel*, %struct.microcode_header_intel** %4, align 8
  %17 = call i64 @get_totalsize(%struct.microcode_header_intel* %16)
  store i64 %17, i64* %6, align 8
  %18 = load %struct.microcode_header_intel*, %struct.microcode_header_intel** %4, align 8
  %19 = call i64 @get_datasize(%struct.microcode_header_intel* %18)
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @x86_family(i64 %20)
  store i32 %21, i32* %12, align 4
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @x86_model(i64 %22)
  store i32 %23, i32* %13, align 4
  %24 = load %struct.microcode_header_intel*, %struct.microcode_header_intel** %4, align 8
  %25 = getelementptr inbounds %struct.microcode_header_intel, %struct.microcode_header_intel* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @x86_family(i64 %26)
  store i32 %27, i32* %9, align 4
  %28 = load %struct.microcode_header_intel*, %struct.microcode_header_intel** %4, align 8
  %29 = getelementptr inbounds %struct.microcode_header_intel, %struct.microcode_header_intel* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @x86_model(i64 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %2
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 1, i32* %3, align 4
  br label %92

40:                                               ; preds = %35, %2
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* @MC_HEADER_SIZE, align 8
  %44 = add i64 %42, %43
  %45 = icmp ule i64 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %92

47:                                               ; preds = %40
  %48 = load %struct.microcode_header_intel*, %struct.microcode_header_intel** %4, align 8
  %49 = bitcast %struct.microcode_header_intel* %48 to i8*
  %50 = load i64, i64* %7, align 8
  %51 = getelementptr i8, i8* %49, i64 %50
  %52 = load i64, i64* @MC_HEADER_SIZE, align 8
  %53 = getelementptr i8, i8* %51, i64 %52
  %54 = bitcast i8* %53 to %struct.extended_sigtable*
  store %struct.extended_sigtable* %54, %struct.extended_sigtable** %8, align 8
  %55 = load %struct.extended_sigtable*, %struct.extended_sigtable** %8, align 8
  %56 = bitcast %struct.extended_sigtable* %55 to i8*
  %57 = load i32, i32* @EXT_HEADER_SIZE, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr i8, i8* %56, i64 %58
  %60 = bitcast i8* %59 to %struct.extended_signature*
  store %struct.extended_signature* %60, %struct.extended_signature** %11, align 8
  %61 = load %struct.extended_sigtable*, %struct.extended_sigtable** %8, align 8
  %62 = getelementptr inbounds %struct.extended_sigtable, %struct.extended_sigtable* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %64

64:                                               ; preds = %88, %47
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* %14, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %91

68:                                               ; preds = %64
  %69 = load %struct.extended_signature*, %struct.extended_signature** %11, align 8
  %70 = getelementptr inbounds %struct.extended_signature, %struct.extended_signature* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @x86_family(i64 %71)
  store i32 %72, i32* %9, align 4
  %73 = load %struct.extended_signature*, %struct.extended_signature** %11, align 8
  %74 = getelementptr inbounds %struct.extended_signature, %struct.extended_signature* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @x86_model(i64 %75)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %68
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  store i32 1, i32* %3, align 4
  br label %92

85:                                               ; preds = %80, %68
  %86 = load %struct.extended_signature*, %struct.extended_signature** %11, align 8
  %87 = getelementptr inbounds %struct.extended_signature, %struct.extended_signature* %86, i32 1
  store %struct.extended_signature* %87, %struct.extended_signature** %11, align 8
  br label %88

88:                                               ; preds = %85
  %89 = load i32, i32* %15, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %15, align 4
  br label %64

91:                                               ; preds = %64
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %91, %84, %46, %39
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i64 @get_totalsize(%struct.microcode_header_intel*) #1

declare dso_local i64 @get_datasize(%struct.microcode_header_intel*) #1

declare dso_local i32 @x86_family(i64) #1

declare dso_local i32 @x86_model(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
