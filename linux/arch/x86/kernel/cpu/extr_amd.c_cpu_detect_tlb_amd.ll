; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_amd.c_cpu_detect_tlb_amd.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_amd.c_cpu_detect_tlb_amd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_x86 = type { i32, i32, i32 }

@tlb_lld_4k = common dso_local global i32* null, align 8
@ENTRIES = common dso_local global i64 0, align 8
@tlb_lli_4k = common dso_local global i32* null, align 8
@tlb_lld_2m = common dso_local global i32* null, align 8
@tlb_lld_4m = common dso_local global i32* null, align 8
@tlb_lli_2m = common dso_local global i32* null, align 8
@tlb_lli_4m = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpuinfo_x86*)* @cpu_detect_tlb_amd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpu_detect_tlb_amd(%struct.cpuinfo_x86* %0) #0 {
  %2 = alloca %struct.cpuinfo_x86*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cpuinfo_x86* %0, %struct.cpuinfo_x86** %2, align 8
  store i32 4095, i32* %7, align 4
  %8 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %9 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp slt i32 %10, 15
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %112

13:                                               ; preds = %1
  %14 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %15 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ult i32 %16, -2147483642
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %112

19:                                               ; preds = %13
  %20 = call i32 @cpuid(i32 -2147483642, i32* %4, i32* %3, i32* %5, i32* %6)
  %21 = load i32, i32* %3, align 4
  %22 = ashr i32 %21, 16
  %23 = load i32, i32* %7, align 4
  %24 = and i32 %22, %23
  %25 = load i32*, i32** @tlb_lld_4k, align 8
  %26 = load i64, i64* @ENTRIES, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  store i32 %24, i32* %27, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %28, %29
  %31 = load i32*, i32** @tlb_lli_4k, align 8
  %32 = load i64, i64* @ENTRIES, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  store i32 %30, i32* %33, align 4
  %34 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %35 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 15
  br i1 %37, label %38, label %40

38:                                               ; preds = %19
  %39 = call i32 @cpuid(i32 -2147483643, i32* %4, i32* %3, i32* %5, i32* %6)
  store i32 255, i32* %7, align 4
  br label %40

40:                                               ; preds = %38, %19
  %41 = load i32, i32* %4, align 4
  %42 = ashr i32 %41, 16
  %43 = load i32, i32* %7, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %40
  %47 = call i32 @cpuid_eax(i32 -2147483643)
  %48 = ashr i32 %47, 16
  %49 = and i32 %48, 255
  %50 = load i32*, i32** @tlb_lld_2m, align 8
  %51 = load i64, i64* @ENTRIES, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  store i32 %49, i32* %52, align 4
  br label %61

53:                                               ; preds = %40
  %54 = load i32, i32* %4, align 4
  %55 = ashr i32 %54, 16
  %56 = load i32, i32* %7, align 4
  %57 = and i32 %55, %56
  %58 = load i32*, i32** @tlb_lld_2m, align 8
  %59 = load i64, i64* @ENTRIES, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  store i32 %57, i32* %60, align 4
  br label %61

61:                                               ; preds = %53, %46
  %62 = load i32*, i32** @tlb_lld_2m, align 8
  %63 = load i64, i64* @ENTRIES, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = ashr i32 %65, 1
  %67 = load i32*, i32** @tlb_lld_4m, align 8
  %68 = load i64, i64* @ENTRIES, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  store i32 %66, i32* %69, align 4
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* %7, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %96, label %74

74:                                               ; preds = %61
  %75 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %76 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 21
  br i1 %78, label %79, label %88

79:                                               ; preds = %74
  %80 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %81 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = icmp sle i32 %82, 31
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load i32*, i32** @tlb_lli_2m, align 8
  %86 = load i64, i64* @ENTRIES, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  store i32 1024, i32* %87, align 4
  br label %95

88:                                               ; preds = %79, %74
  %89 = call i32 @cpuid(i32 -2147483643, i32* %4, i32* %3, i32* %5, i32* %6)
  %90 = load i32, i32* %4, align 4
  %91 = and i32 %90, 255
  %92 = load i32*, i32** @tlb_lli_2m, align 8
  %93 = load i64, i64* @ENTRIES, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  store i32 %91, i32* %94, align 4
  br label %95

95:                                               ; preds = %88, %84
  br label %103

96:                                               ; preds = %61
  %97 = load i32, i32* %4, align 4
  %98 = load i32, i32* %7, align 4
  %99 = and i32 %97, %98
  %100 = load i32*, i32** @tlb_lli_2m, align 8
  %101 = load i64, i64* @ENTRIES, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  store i32 %99, i32* %102, align 4
  br label %103

103:                                              ; preds = %96, %95
  %104 = load i32*, i32** @tlb_lli_2m, align 8
  %105 = load i64, i64* @ENTRIES, align 8
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = ashr i32 %107, 1
  %109 = load i32*, i32** @tlb_lli_4m, align 8
  %110 = load i64, i64* @ENTRIES, align 8
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  store i32 %108, i32* %111, align 4
  br label %112

112:                                              ; preds = %103, %18, %12
  ret void
}

declare dso_local i32 @cpuid(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @cpuid_eax(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
