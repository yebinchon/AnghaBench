; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_power8-pmu.c_init_power8_pmu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_power8-pmu.c_init_power8_pmu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@cur_cpu_spec = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"ppc64/power8\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@power8_pmu = common dso_local global i32 0, align 4
@PPC_FEATURE2_EBB = common dso_local global i32 0, align 4
@CPU_FTR_PMAO_BUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"PMAO restore workaround active.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_power8_pmu() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cur_cpu_spec, align 8
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cur_cpu_spec, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @strcmp(i32 %10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %7, %0
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %1, align 4
  br label %34

16:                                               ; preds = %7
  %17 = call i32 @register_power_pmu(i32* @power8_pmu)
  store i32 %17, i32* %2, align 4
  %18 = load i32, i32* %2, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* %2, align 4
  store i32 %21, i32* %1, align 4
  br label %34

22:                                               ; preds = %16
  %23 = load i32, i32* @PPC_FEATURE2_EBB, align 4
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cur_cpu_spec, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load i32, i32* @CPU_FTR_PMAO_BUG, align 4
  %29 = call i64 @cpu_has_feature(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = call i32 @pr_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %22
  store i32 0, i32* %1, align 4
  br label %34

34:                                               ; preds = %33, %20, %13
  %35 = load i32, i32* %1, align 4
  ret i32 %35
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @register_power_pmu(i32*) #1

declare dso_local i64 @cpu_has_feature(i32) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
