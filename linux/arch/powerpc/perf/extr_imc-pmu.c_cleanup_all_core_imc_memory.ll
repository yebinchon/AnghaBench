; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_imc-pmu.c_cleanup_all_core_imc_memory.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_imc-pmu.c_cleanup_all_core_imc_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.imc_mem_info* }
%struct.imc_mem_info = type { i64 }

@threads_per_core = common dso_local global i32 0, align 4
@core_imc_pmu = common dso_local global %struct.TYPE_2__* null, align 8
@core_imc_refc = common dso_local global %struct.imc_mem_info* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cleanup_all_core_imc_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup_all_core_imc_memory() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.imc_mem_info*, align 8
  %4 = alloca i32, align 4
  %5 = call i32 (...) @num_possible_cpus()
  %6 = load i32, i32* @threads_per_core, align 4
  %7 = call i32 @DIV_ROUND_UP(i32 %5, i32 %6)
  store i32 %7, i32* %2, align 4
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @core_imc_pmu, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load %struct.imc_mem_info*, %struct.imc_mem_info** %9, align 8
  store %struct.imc_mem_info* %10, %struct.imc_mem_info** %3, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @core_imc_pmu, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %4, align 4
  store i32 0, i32* %1, align 4
  br label %14

14:                                               ; preds = %38, %0
  %15 = load i32, i32* %1, align 4
  %16 = load i32, i32* %2, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %41

18:                                               ; preds = %14
  %19 = load %struct.imc_mem_info*, %struct.imc_mem_info** %3, align 8
  %20 = load i32, i32* %1, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.imc_mem_info, %struct.imc_mem_info* %19, i64 %21
  %23 = getelementptr inbounds %struct.imc_mem_info, %struct.imc_mem_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %18
  %27 = load %struct.imc_mem_info*, %struct.imc_mem_info** %3, align 8
  %28 = load i32, i32* %1, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.imc_mem_info, %struct.imc_mem_info* %27, i64 %29
  %31 = getelementptr inbounds %struct.imc_mem_info, %struct.imc_mem_info* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @get_order(i32 %34)
  %36 = call i32 @free_pages(i32 %33, i32 %35)
  br label %37

37:                                               ; preds = %26, %18
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %1, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %1, align 4
  br label %14

41:                                               ; preds = %14
  %42 = load %struct.imc_mem_info*, %struct.imc_mem_info** %3, align 8
  %43 = call i32 @kfree(%struct.imc_mem_info* %42)
  %44 = load %struct.imc_mem_info*, %struct.imc_mem_info** @core_imc_refc, align 8
  %45 = call i32 @kfree(%struct.imc_mem_info* %44)
  ret void
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @num_possible_cpus(...) #1

declare dso_local i32 @free_pages(i32, i32) #1

declare dso_local i32 @get_order(i32) #1

declare dso_local i32 @kfree(%struct.imc_mem_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
