; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_imc-pmu.c_init_imc_pmu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_imc-pmu.c_init_imc_pmu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.imc_pmu = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@nest_init_lock = common dso_local global i32 0, align 4
@nest_pmus = common dso_local global i32 0, align 4
@per_nest_pmu_arr = common dso_local global i32* null, align 8
@nest_imc_refc = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"%s performance monitor hardware support registered\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_imc_pmu(%struct.device_node* %0, %struct.imc_pmu* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.imc_pmu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %5, align 8
  store %struct.imc_pmu* %1, %struct.imc_pmu** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.imc_pmu*, %struct.imc_pmu** %6, align 8
  %10 = load %struct.device_node*, %struct.device_node** %5, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @imc_mem_init(%struct.imc_pmu* %9, %struct.device_node* %10, i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %104

16:                                               ; preds = %3
  %17 = load %struct.imc_pmu*, %struct.imc_pmu** %6, align 8
  %18 = getelementptr inbounds %struct.imc_pmu, %struct.imc_pmu* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %68 [
    i32 130, label %20
    i32 131, label %47
    i32 129, label %54
    i32 128, label %61
  ]

20:                                               ; preds = %16
  %21 = call i32 @mutex_lock(i32* @nest_init_lock)
  %22 = load i32, i32* @nest_pmus, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %43

24:                                               ; preds = %20
  %25 = call i32 (...) @init_nest_pmu_ref()
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = call i32 @mutex_unlock(i32* @nest_init_lock)
  %30 = load i32*, i32** @per_nest_pmu_arr, align 8
  %31 = call i32 @kfree(i32* %30)
  store i32* null, i32** @per_nest_pmu_arr, align 8
  br label %104

32:                                               ; preds = %24
  %33 = call i32 (...) @nest_pmu_cpumask_init()
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = call i32 @mutex_unlock(i32* @nest_init_lock)
  %38 = load i32*, i32** @nest_imc_refc, align 8
  %39 = call i32 @kfree(i32* %38)
  %40 = load i32*, i32** @per_nest_pmu_arr, align 8
  %41 = call i32 @kfree(i32* %40)
  store i32* null, i32** @per_nest_pmu_arr, align 8
  br label %104

42:                                               ; preds = %32
  br label %43

43:                                               ; preds = %42, %20
  %44 = load i32, i32* @nest_pmus, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* @nest_pmus, align 4
  %46 = call i32 @mutex_unlock(i32* @nest_init_lock)
  br label %71

47:                                               ; preds = %16
  %48 = call i32 (...) @core_imc_pmu_cpumask_init()
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = call i32 (...) @cleanup_all_core_imc_memory()
  br label %104

53:                                               ; preds = %47
  br label %71

54:                                               ; preds = %16
  %55 = call i32 (...) @thread_imc_cpu_init()
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = call i32 (...) @cleanup_all_thread_imc_memory()
  br label %104

60:                                               ; preds = %54
  br label %71

61:                                               ; preds = %16
  %62 = call i32 (...) @trace_imc_cpu_init()
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = call i32 (...) @cleanup_all_trace_imc_memory()
  br label %104

67:                                               ; preds = %61
  br label %71

68:                                               ; preds = %16
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %108

71:                                               ; preds = %67, %60, %53, %43
  %72 = load %struct.device_node*, %struct.device_node** %5, align 8
  %73 = load %struct.imc_pmu*, %struct.imc_pmu** %6, align 8
  %74 = call i32 @update_events_in_group(%struct.device_node* %72, %struct.imc_pmu* %73)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %101

78:                                               ; preds = %71
  %79 = load %struct.imc_pmu*, %struct.imc_pmu** %6, align 8
  %80 = call i32 @update_pmu_ops(%struct.imc_pmu* %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %101

84:                                               ; preds = %78
  %85 = load %struct.imc_pmu*, %struct.imc_pmu** %6, align 8
  %86 = getelementptr inbounds %struct.imc_pmu, %struct.imc_pmu* %85, i32 0, i32 1
  %87 = load %struct.imc_pmu*, %struct.imc_pmu** %6, align 8
  %88 = getelementptr inbounds %struct.imc_pmu, %struct.imc_pmu* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @perf_pmu_register(%struct.TYPE_2__* %86, i32 %90, i32 -1)
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %84
  br label %101

95:                                               ; preds = %84
  %96 = load %struct.imc_pmu*, %struct.imc_pmu** %6, align 8
  %97 = getelementptr inbounds %struct.imc_pmu, %struct.imc_pmu* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @pr_debug(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %99)
  store i32 0, i32* %4, align 4
  br label %108

101:                                              ; preds = %94, %83, %77
  %102 = load %struct.imc_pmu*, %struct.imc_pmu** %6, align 8
  %103 = call i32 @imc_common_cpuhp_mem_free(%struct.imc_pmu* %102)
  br label %104

104:                                              ; preds = %101, %65, %58, %51, %36, %28, %15
  %105 = load %struct.imc_pmu*, %struct.imc_pmu** %6, align 8
  %106 = call i32 @imc_common_mem_free(%struct.imc_pmu* %105)
  %107 = load i32, i32* %8, align 4
  store i32 %107, i32* %4, align 4
  br label %108

108:                                              ; preds = %104, %95, %68
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i32 @imc_mem_init(%struct.imc_pmu*, %struct.device_node*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @init_nest_pmu_ref(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @nest_pmu_cpumask_init(...) #1

declare dso_local i32 @core_imc_pmu_cpumask_init(...) #1

declare dso_local i32 @cleanup_all_core_imc_memory(...) #1

declare dso_local i32 @thread_imc_cpu_init(...) #1

declare dso_local i32 @cleanup_all_thread_imc_memory(...) #1

declare dso_local i32 @trace_imc_cpu_init(...) #1

declare dso_local i32 @cleanup_all_trace_imc_memory(...) #1

declare dso_local i32 @update_events_in_group(%struct.device_node*, %struct.imc_pmu*) #1

declare dso_local i32 @update_pmu_ops(%struct.imc_pmu*) #1

declare dso_local i32 @perf_pmu_register(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @imc_common_cpuhp_mem_free(%struct.imc_pmu*) #1

declare dso_local i32 @imc_common_mem_free(%struct.imc_pmu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
