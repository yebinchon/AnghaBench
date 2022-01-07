; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_amd.c_cpu_has_amd_erratum.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_amd.c_cpu_has_amd_erratum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_x86 = type { i32, i32, i64 }

@X86_FEATURE_OSVW = common dso_local global i32 0, align 4
@MSR_AMD64_OSVW_ID_LENGTH = common dso_local global i64 0, align 8
@MSR_AMD64_OSVW_STATUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpuinfo_x86*, i32*)* @cpu_has_amd_erratum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpu_has_amd_erratum(%struct.cpuinfo_x86* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpuinfo_x86*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cpuinfo_x86* %0, %struct.cpuinfo_x86** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = getelementptr inbounds i32, i32* %11, i32 1
  store i32* %12, i32** %5, align 8
  %13 = load i32, i32* %11, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp sge i32 %14, 0
  br i1 %15, label %16, label %48

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 65536
  br i1 %18, label %19, label %48

19:                                               ; preds = %16
  %20 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %4, align 8
  %21 = load i32, i32* @X86_FEATURE_OSVW, align 4
  %22 = call i64 @cpu_has(%struct.cpuinfo_x86* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %48

24:                                               ; preds = %19
  %25 = load i64, i64* @MSR_AMD64_OSVW_ID_LENGTH, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @rdmsrl(i64 %25, i32 %26)
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %24
  %32 = load i64, i64* @MSR_AMD64_OSVW_STATUS, align 8
  %33 = load i32, i32* %6, align 4
  %34 = ashr i32 %33, 6
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %32, %35
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @rdmsrl(i64 %36, i32 %37)
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = load i32, i32* %6, align 4
  %42 = and i32 %41, 63
  %43 = zext i32 %42 to i64
  %44 = shl i64 1, %43
  %45 = and i64 %40, %44
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %3, align 4
  br label %82

47:                                               ; preds = %24
  br label %48

48:                                               ; preds = %47, %19, %16, %2
  %49 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %4, align 8
  %50 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = shl i32 %51, 4
  %53 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %4, align 8
  %54 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %52, %55
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %80, %48
  %58 = load i32*, i32** %5, align 8
  %59 = getelementptr inbounds i32, i32* %58, i32 1
  store i32* %59, i32** %5, align 8
  %60 = load i32, i32* %58, align 4
  store i32 %60, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %81

62:                                               ; preds = %57
  %63 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %4, align 8
  %64 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i64 @AMD_MODEL_RANGE_FAMILY(i32 %66)
  %68 = icmp eq i64 %65, %67
  br i1 %68, label %69, label %80

69:                                               ; preds = %62
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @AMD_MODEL_RANGE_START(i32 %71)
  %73 = icmp sge i32 %70, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @AMD_MODEL_RANGE_END(i32 %76)
  %78 = icmp sle i32 %75, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  store i32 1, i32* %3, align 4
  br label %82

80:                                               ; preds = %74, %69, %62
  br label %57

81:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %81, %79, %31
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i64 @cpu_has(%struct.cpuinfo_x86*, i32) #1

declare dso_local i32 @rdmsrl(i64, i32) #1

declare dso_local i64 @AMD_MODEL_RANGE_FAMILY(i32) #1

declare dso_local i32 @AMD_MODEL_RANGE_START(i32) #1

declare dso_local i32 @AMD_MODEL_RANGE_END(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
