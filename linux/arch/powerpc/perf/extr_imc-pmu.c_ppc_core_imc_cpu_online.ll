; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_imc-pmu.c_ppc_core_imc_cpu_online.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_imc-pmu.c_ppc_core_imc_cpu_online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpumask = type { i32 }
%struct.TYPE_2__ = type { i32 }

@ppc_core_imc_cpu_online.tmp_mask = internal global %struct.cpumask zeroinitializer, align 4
@core_imc_cpumask = common dso_local global i32 0, align 4
@core_imc_pmu = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [46 x i8] c"core_imc memory allocation for cpu %d failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ppc_core_imc_cpu_online to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppc_core_imc_cpu_online(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpumask*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.cpumask* @cpu_sibling_mask(i32 %6)
  store %struct.cpumask* %7, %struct.cpumask** %4, align 8
  %8 = load %struct.cpumask*, %struct.cpumask** %4, align 8
  %9 = call i64 @cpumask_and(%struct.cpumask* @ppc_core_imc_cpu_online.tmp_mask, %struct.cpumask* %8, i32* @core_imc_cpumask)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %32

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @is_core_imc_mem_inited(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %29, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @core_imc_pmu, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @core_imc_mem_init(i32 %17, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %16
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @pr_info(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* %2, align 4
  br label %32

28:                                               ; preds = %16
  br label %29

29:                                               ; preds = %28, %12
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @cpumask_set_cpu(i32 %30, i32* @core_imc_cpumask)
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %29, %24, %11
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.cpumask* @cpu_sibling_mask(i32) #1

declare dso_local i64 @cpumask_and(%struct.cpumask*, %struct.cpumask*, i32*) #1

declare dso_local i32 @is_core_imc_mem_inited(i32) #1

declare dso_local i32 @core_imc_mem_init(i32, i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @cpumask_set_cpu(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
