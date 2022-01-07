; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_core-book3s.c_power_pmu_disable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_core-book3s.c_power_pmu_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.pmu = type { i32 }
%struct.cpu_hw_events = type { i32, i32, i32*, i64 }

@ppmu = common dso_local global %struct.TYPE_2__* null, align 8
@cpu_hw_events = common dso_local global i32 0, align 4
@SPRN_MMCR0 = common dso_local global i32 0, align 4
@MMCR0_FC = common dso_local global i64 0, align 8
@MMCR0_EBE = common dso_local global i64 0, align 8
@MMCR0_BHRBA = common dso_local global i64 0, align 8
@MMCR0_PMCC = common dso_local global i64 0, align 8
@MMCR0_PMAO = common dso_local global i64 0, align 8
@MMCR0_FC56 = common dso_local global i64 0, align 8
@MMCRA_SAMPLE_ENABLE = common dso_local global i32 0, align 4
@SPRN_MMCRA = common dso_local global i32 0, align 4
@PPMU_ARCH_207S = common dso_local global i32 0, align 4
@SPRN_SDAR = common dso_local global i32 0, align 4
@SPRN_SIAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmu*)* @power_pmu_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @power_pmu_disable(%struct.pmu* %0) #0 {
  %2 = alloca %struct.pmu*, align 8
  %3 = alloca %struct.cpu_hw_events*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.pmu* %0, %struct.pmu** %2, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ppmu, align 8
  %8 = icmp ne %struct.TYPE_2__* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %81

10:                                               ; preds = %1
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @local_irq_save(i64 %11)
  %13 = call %struct.cpu_hw_events* @this_cpu_ptr(i32* @cpu_hw_events)
  store %struct.cpu_hw_events* %13, %struct.cpu_hw_events** %3, align 8
  %14 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %15 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %78, label %18

18:                                               ; preds = %10
  %19 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %20 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = call i32 (...) @ppc_enable_pmcs()
  %25 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %26 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %25, i32 0, i32 1
  store i32 1, i32* %26, align 4
  br label %27

27:                                               ; preds = %23, %18
  %28 = load i32, i32* @SPRN_MMCR0, align 4
  %29 = call i64 @mfspr(i32 %28)
  store i64 %29, i64* %5, align 8
  store i64 %29, i64* %6, align 8
  %30 = load i64, i64* @MMCR0_FC, align 8
  %31 = load i64, i64* %6, align 8
  %32 = or i64 %31, %30
  store i64 %32, i64* %6, align 8
  %33 = load i64, i64* @MMCR0_EBE, align 8
  %34 = load i64, i64* @MMCR0_BHRBA, align 8
  %35 = or i64 %33, %34
  %36 = load i64, i64* @MMCR0_PMCC, align 8
  %37 = or i64 %35, %36
  %38 = load i64, i64* @MMCR0_PMAO, align 8
  %39 = or i64 %37, %38
  %40 = load i64, i64* @MMCR0_FC56, align 8
  %41 = or i64 %39, %40
  %42 = xor i64 %41, -1
  %43 = load i64, i64* %6, align 8
  %44 = and i64 %43, %42
  store i64 %44, i64* %6, align 8
  %45 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @write_mmcr0(%struct.cpu_hw_events* %45, i64 %46)
  %48 = call i32 (...) @mb()
  %49 = call i32 (...) @isync()
  %50 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %51 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 2
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @MMCRA_SAMPLE_ENABLE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %27
  %59 = load i32, i32* @SPRN_MMCRA, align 4
  %60 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %61 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @MMCRA_SAMPLE_ENABLE, align 4
  %66 = xor i32 %65, -1
  %67 = and i32 %64, %66
  %68 = call i32 @mtspr(i32 %59, i32 %67)
  %69 = call i32 (...) @mb()
  %70 = call i32 (...) @isync()
  br label %71

71:                                               ; preds = %58, %27
  %72 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %73 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %72, i32 0, i32 0
  store i32 1, i32* %73, align 8
  %74 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %75 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %74, i32 0, i32 3
  store i64 0, i64* %75, align 8
  %76 = load i64, i64* %5, align 8
  %77 = call i32 @ebb_switch_out(i64 %76)
  br label %78

78:                                               ; preds = %71, %10
  %79 = load i64, i64* %4, align 8
  %80 = call i32 @local_irq_restore(i64 %79)
  br label %81

81:                                               ; preds = %78, %9
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local %struct.cpu_hw_events* @this_cpu_ptr(i32*) #1

declare dso_local i32 @ppc_enable_pmcs(...) #1

declare dso_local i64 @mfspr(i32) #1

declare dso_local i32 @write_mmcr0(%struct.cpu_hw_events*, i64) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @isync(...) #1

declare dso_local i32 @mtspr(i32, i32) #1

declare dso_local i32 @ebb_switch_out(i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
