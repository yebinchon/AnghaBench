; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/microcode/extr_intel.c_scan_microcode.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/microcode/extr_intel.c_scan_microcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.microcode_intel = type { %struct.microcode_header_intel }
%struct.microcode_header_intel = type { i32, i32, i32 }
%struct.ucode_cpu_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.microcode_intel* (i8*, i64, %struct.ucode_cpu_info*, i32)* @scan_microcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.microcode_intel* @scan_microcode(i8* %0, i64 %1, %struct.ucode_cpu_info* %2, i32 %3) #0 {
  %5 = alloca %struct.microcode_intel*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ucode_cpu_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.microcode_header_intel*, align 8
  %11 = alloca %struct.microcode_intel*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.microcode_header_intel*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.ucode_cpu_info* %2, %struct.ucode_cpu_info** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.microcode_intel* null, %struct.microcode_intel** %11, align 8
  br label %14

14:                                               ; preds = %103, %50, %4
  %15 = load i64, i64* %7, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %108

17:                                               ; preds = %14
  %18 = load i64, i64* %7, align 8
  %19 = icmp ult i64 %18, 12
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  br label %108

21:                                               ; preds = %17
  %22 = load i8*, i8** %6, align 8
  %23 = bitcast i8* %22 to %struct.microcode_header_intel*
  store %struct.microcode_header_intel* %23, %struct.microcode_header_intel** %10, align 8
  %24 = load %struct.microcode_header_intel*, %struct.microcode_header_intel** %10, align 8
  %25 = call i32 @get_totalsize(%struct.microcode_header_intel* %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %21
  %29 = load i32, i32* %12, align 4
  %30 = zext i32 %29 to i64
  %31 = load i64, i64* %7, align 8
  %32 = icmp ugt i64 %30, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %28
  %34 = load i8*, i8** %6, align 8
  %35 = call i64 @microcode_sanity_check(i8* %34, i32 0)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33, %28, %21
  br label %108

38:                                               ; preds = %33
  %39 = load i32, i32* %12, align 4
  %40 = zext i32 %39 to i64
  %41 = load i64, i64* %7, align 8
  %42 = sub i64 %41, %40
  store i64 %42, i64* %7, align 8
  %43 = load %struct.microcode_header_intel*, %struct.microcode_header_intel** %10, align 8
  %44 = load %struct.ucode_cpu_info*, %struct.ucode_cpu_info** %8, align 8
  %45 = getelementptr inbounds %struct.ucode_cpu_info, %struct.ucode_cpu_info* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @microcode_matches(%struct.microcode_header_intel* %43, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %38
  %51 = load i32, i32* %12, align 4
  %52 = load i8*, i8** %6, align 8
  %53 = zext i32 %51 to i64
  %54 = getelementptr i8, i8* %52, i64 %53
  store i8* %54, i8** %6, align 8
  br label %14

55:                                               ; preds = %38
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i8*, i8** %6, align 8
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @save_microcode_patch(i8* %59, i32 %60)
  br label %103

62:                                               ; preds = %55
  %63 = load %struct.microcode_intel*, %struct.microcode_intel** %11, align 8
  %64 = icmp ne %struct.microcode_intel* %63, null
  br i1 %64, label %83, label %65

65:                                               ; preds = %62
  %66 = load i8*, i8** %6, align 8
  %67 = load %struct.ucode_cpu_info*, %struct.ucode_cpu_info** %8, align 8
  %68 = getelementptr inbounds %struct.ucode_cpu_info, %struct.ucode_cpu_info* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ucode_cpu_info*, %struct.ucode_cpu_info** %8, align 8
  %72 = getelementptr inbounds %struct.ucode_cpu_info, %struct.ucode_cpu_info* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ucode_cpu_info*, %struct.ucode_cpu_info** %8, align 8
  %76 = getelementptr inbounds %struct.ucode_cpu_info, %struct.ucode_cpu_info* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @has_newer_microcode(i8* %66, i32 %70, i32 %74, i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %65
  br label %103

82:                                               ; preds = %65
  br label %100

83:                                               ; preds = %62
  %84 = load %struct.microcode_intel*, %struct.microcode_intel** %11, align 8
  %85 = getelementptr inbounds %struct.microcode_intel, %struct.microcode_intel* %84, i32 0, i32 0
  store %struct.microcode_header_intel* %85, %struct.microcode_header_intel** %13, align 8
  %86 = load i8*, i8** %6, align 8
  %87 = load %struct.microcode_header_intel*, %struct.microcode_header_intel** %13, align 8
  %88 = getelementptr inbounds %struct.microcode_header_intel, %struct.microcode_header_intel* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.microcode_header_intel*, %struct.microcode_header_intel** %13, align 8
  %91 = getelementptr inbounds %struct.microcode_header_intel, %struct.microcode_header_intel* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.microcode_header_intel*, %struct.microcode_header_intel** %13, align 8
  %94 = getelementptr inbounds %struct.microcode_header_intel, %struct.microcode_header_intel* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @has_newer_microcode(i8* %86, i32 %89, i32 %92, i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %83
  br label %103

99:                                               ; preds = %83
  br label %100

100:                                              ; preds = %99, %82
  %101 = load i8*, i8** %6, align 8
  %102 = bitcast i8* %101 to %struct.microcode_intel*
  store %struct.microcode_intel* %102, %struct.microcode_intel** %11, align 8
  br label %103

103:                                              ; preds = %100, %98, %81, %58
  %104 = load i32, i32* %12, align 4
  %105 = load i8*, i8** %6, align 8
  %106 = zext i32 %104 to i64
  %107 = getelementptr i8, i8* %105, i64 %106
  store i8* %107, i8** %6, align 8
  br label %14

108:                                              ; preds = %37, %20, %14
  %109 = load i64, i64* %7, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %108
  store %struct.microcode_intel* null, %struct.microcode_intel** %5, align 8
  br label %114

112:                                              ; preds = %108
  %113 = load %struct.microcode_intel*, %struct.microcode_intel** %11, align 8
  store %struct.microcode_intel* %113, %struct.microcode_intel** %5, align 8
  br label %114

114:                                              ; preds = %112, %111
  %115 = load %struct.microcode_intel*, %struct.microcode_intel** %5, align 8
  ret %struct.microcode_intel* %115
}

declare dso_local i32 @get_totalsize(%struct.microcode_header_intel*) #1

declare dso_local i64 @microcode_sanity_check(i8*, i32) #1

declare dso_local i32 @microcode_matches(%struct.microcode_header_intel*, i32) #1

declare dso_local i32 @save_microcode_patch(i8*, i32) #1

declare dso_local i32 @has_newer_microcode(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
