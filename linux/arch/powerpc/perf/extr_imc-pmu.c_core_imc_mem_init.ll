; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_imc-pmu.c_core_imc_mem_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_imc-pmu.c_core_imc_mem_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.imc_mem_info* }
%struct.imc_mem_info = type { i32, i32* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.page = type { i32 }

@threads_per_core = common dso_local global i32 0, align 4
@core_imc_pmu = common dso_local global %struct.TYPE_4__* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@__GFP_THISNODE = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@core_imc_refc = common dso_local global %struct.TYPE_3__* null, align 8
@OPAL_IMC_COUNTERS_CORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @core_imc_mem_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @core_imc_mem_init(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.imc_mem_info*, align 8
  %10 = alloca %struct.page*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @threads_per_core, align 4
  %13 = sdiv i32 %11, %12
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @cpu_to_node(i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @core_imc_pmu, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.imc_mem_info*, %struct.imc_mem_info** %17, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.imc_mem_info, %struct.imc_mem_info* %18, i64 %20
  store %struct.imc_mem_info* %21, %struct.imc_mem_info** %9, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.imc_mem_info*, %struct.imc_mem_info** %9, align 8
  %24 = getelementptr inbounds %struct.imc_mem_info, %struct.imc_mem_info* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = load i32, i32* @__GFP_ZERO, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @__GFP_THISNODE, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @__GFP_NOWARN, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @get_order(i32 %33)
  %35 = call %struct.page* @alloc_pages_node(i32 %25, i32 %32, i32 %34)
  store %struct.page* %35, %struct.page** %10, align 8
  %36 = load %struct.page*, %struct.page** %10, align 8
  %37 = icmp ne %struct.page* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %2
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %81

41:                                               ; preds = %2
  %42 = load %struct.page*, %struct.page** %10, align 8
  %43 = call i32* @page_address(%struct.page* %42)
  %44 = load %struct.imc_mem_info*, %struct.imc_mem_info** %9, align 8
  %45 = getelementptr inbounds %struct.imc_mem_info, %struct.imc_mem_info* %44, i32 0, i32 1
  store i32* %43, i32** %45, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** @core_imc_refc, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store i32 %46, i32* %51, align 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** @core_imc_refc, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = call i32 @mutex_init(i32* %56)
  %58 = load i32, i32* @OPAL_IMC_COUNTERS_CORE, align 4
  %59 = load %struct.imc_mem_info*, %struct.imc_mem_info** %9, align 8
  %60 = getelementptr inbounds %struct.imc_mem_info, %struct.imc_mem_info* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = bitcast i32* %61 to i8*
  %63 = call i32 @__pa(i8* %62)
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @get_hard_smp_processor_id(i32 %64)
  %66 = call i32 @opal_imc_counters_init(i32 %58, i32 %63, i32 %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %41
  %70 = load %struct.imc_mem_info*, %struct.imc_mem_info** %9, align 8
  %71 = getelementptr inbounds %struct.imc_mem_info, %struct.imc_mem_info* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = ptrtoint i32* %72 to i32
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @get_order(i32 %74)
  %76 = call i32 @free_pages(i32 %73, i32 %75)
  %77 = load %struct.imc_mem_info*, %struct.imc_mem_info** %9, align 8
  %78 = getelementptr inbounds %struct.imc_mem_info, %struct.imc_mem_info* %77, i32 0, i32 1
  store i32* null, i32** %78, align 8
  br label %79

79:                                               ; preds = %69, %41
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %79, %38
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @cpu_to_node(i32) #1

declare dso_local %struct.page* @alloc_pages_node(i32, i32, i32) #1

declare dso_local i32 @get_order(i32) #1

declare dso_local i32* @page_address(%struct.page*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @opal_imc_counters_init(i32, i32, i32) #1

declare dso_local i32 @__pa(i8*) #1

declare dso_local i32 @get_hard_smp_processor_id(i32) #1

declare dso_local i32 @free_pages(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
