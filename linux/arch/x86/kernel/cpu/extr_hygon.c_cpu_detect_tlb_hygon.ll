; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_hygon.c_cpu_detect_tlb_hygon.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_hygon.c_cpu_detect_tlb_hygon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_x86 = type { i32 }

@tlb_lld_4k = common dso_local global i32* null, align 8
@ENTRIES = common dso_local global i64 0, align 8
@tlb_lli_4k = common dso_local global i32* null, align 8
@tlb_lld_2m = common dso_local global i32* null, align 8
@tlb_lld_4m = common dso_local global i32* null, align 8
@tlb_lli_2m = common dso_local global i32* null, align 8
@tlb_lli_4m = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpuinfo_x86*)* @cpu_detect_tlb_hygon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpu_detect_tlb_hygon(%struct.cpuinfo_x86* %0) #0 {
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
  %11 = icmp ult i32 %10, -2147483642
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %84

13:                                               ; preds = %1
  %14 = call i32 @cpuid(i32 -2147483642, i32* %4, i32* %3, i32* %5, i32* %6)
  %15 = load i32, i32* %3, align 4
  %16 = ashr i32 %15, 16
  %17 = load i32, i32* %7, align 4
  %18 = and i32 %16, %17
  %19 = load i32*, i32** @tlb_lld_4k, align 8
  %20 = load i64, i64* @ENTRIES, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  store i32 %18, i32* %21, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* %7, align 4
  %24 = and i32 %22, %23
  %25 = load i32*, i32** @tlb_lli_4k, align 8
  %26 = load i64, i64* @ENTRIES, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  store i32 %24, i32* %27, align 4
  %28 = load i32, i32* %4, align 4
  %29 = ashr i32 %28, 16
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %13
  %34 = call i32 @cpuid_eax(i32 -2147483643)
  %35 = ashr i32 %34, 16
  %36 = and i32 %35, 255
  %37 = load i32*, i32** @tlb_lld_2m, align 8
  %38 = load i64, i64* @ENTRIES, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  store i32 %36, i32* %39, align 4
  br label %48

40:                                               ; preds = %13
  %41 = load i32, i32* %4, align 4
  %42 = ashr i32 %41, 16
  %43 = load i32, i32* %7, align 4
  %44 = and i32 %42, %43
  %45 = load i32*, i32** @tlb_lld_2m, align 8
  %46 = load i64, i64* @ENTRIES, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  store i32 %44, i32* %47, align 4
  br label %48

48:                                               ; preds = %40, %33
  %49 = load i32*, i32** @tlb_lld_2m, align 8
  %50 = load i64, i64* @ENTRIES, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = ashr i32 %52, 1
  %54 = load i32*, i32** @tlb_lld_4m, align 8
  %55 = load i64, i64* @ENTRIES, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  store i32 %53, i32* %56, align 4
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* %7, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %48
  %62 = call i32 @cpuid(i32 -2147483643, i32* %4, i32* %3, i32* %5, i32* %6)
  %63 = load i32, i32* %4, align 4
  %64 = and i32 %63, 255
  %65 = load i32*, i32** @tlb_lli_2m, align 8
  %66 = load i64, i64* @ENTRIES, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  store i32 %64, i32* %67, align 4
  br label %75

68:                                               ; preds = %48
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* %7, align 4
  %71 = and i32 %69, %70
  %72 = load i32*, i32** @tlb_lli_2m, align 8
  %73 = load i64, i64* @ENTRIES, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  store i32 %71, i32* %74, align 4
  br label %75

75:                                               ; preds = %68, %61
  %76 = load i32*, i32** @tlb_lli_2m, align 8
  %77 = load i64, i64* @ENTRIES, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = ashr i32 %79, 1
  %81 = load i32*, i32** @tlb_lli_4m, align 8
  %82 = load i64, i64* @ENTRIES, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  store i32 %80, i32* %83, align 4
  br label %84

84:                                               ; preds = %75, %12
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
