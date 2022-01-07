; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_core.c_intel_cpuc_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_core.c_intel_cpuc_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64, i32 }
%struct.cpu_hw_events = type { i32*, i32*, i64, i32, i32 }

@x86_pmu = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PMU_FL_EXCL_CNTRS = common dso_local global i32 0, align 4
@PMU_FL_TFA = common dso_local global i32 0, align 4
@X86_PMC_IDX_MAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_cpuc_prepare(%struct.cpu_hw_events* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpu_hw_events*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.cpu_hw_events* %0, %struct.cpu_hw_events** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @x86_pmu, i32 0, i32 3), align 8
  %8 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %9 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %8, i32 0, i32 4
  store i32 %7, i32* %9, align 4
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @x86_pmu, i32 0, i32 2), align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @x86_pmu, i32 0, i32 1), align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %12, %2
  %16 = load i32, i32* %5, align 4
  %17 = call i32* @allocate_shared_regs(i32 %16)
  %18 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %19 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %18, i32 0, i32 0
  store i32* %17, i32** %19, align 8
  %20 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %21 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %15
  br label %83

25:                                               ; preds = %15
  br label %26

26:                                               ; preds = %25, %12
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @x86_pmu, i32 0, i32 0), align 8
  %28 = load i32, i32* @PMU_FL_EXCL_CNTRS, align 4
  %29 = load i32, i32* @PMU_FL_TFA, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %27, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %26
  %34 = load i32, i32* @X86_PMC_IDX_MAX, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 4
  store i64 %36, i64* %6, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @cpu_to_node(i32 %39)
  %41 = call i32* @kzalloc_node(i64 %37, i32 %38, i32 %40)
  %42 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %43 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %42, i32 0, i32 1
  store i32* %41, i32** %43, align 8
  %44 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %45 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %33
  br label %76

49:                                               ; preds = %33
  br label %50

50:                                               ; preds = %49, %26
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @x86_pmu, i32 0, i32 0), align 8
  %52 = load i32, i32* @PMU_FL_EXCL_CNTRS, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %50
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @allocate_excl_cntrs(i32 %56)
  %58 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %59 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 8
  %60 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %61 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %55
  br label %69

65:                                               ; preds = %55
  %66 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %67 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %66, i32 0, i32 2
  store i64 0, i64* %67, align 8
  br label %68

68:                                               ; preds = %65, %50
  store i32 0, i32* %3, align 4
  br label %86

69:                                               ; preds = %64
  %70 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %71 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @kfree(i32* %72)
  %74 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %75 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %74, i32 0, i32 1
  store i32* null, i32** %75, align 8
  br label %76

76:                                               ; preds = %69, %48
  %77 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %78 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @kfree(i32* %79)
  %81 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %82 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %81, i32 0, i32 0
  store i32* null, i32** %82, align 8
  br label %83

83:                                               ; preds = %76, %24
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %83, %68
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32* @allocate_shared_regs(i32) #1

declare dso_local i32* @kzalloc_node(i64, i32, i32) #1

declare dso_local i32 @cpu_to_node(i32) #1

declare dso_local i32 @allocate_excl_cntrs(i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
