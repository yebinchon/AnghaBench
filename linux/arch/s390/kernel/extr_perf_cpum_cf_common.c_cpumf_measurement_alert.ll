; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_cpum_cf_common.c_cpumf_measurement_alert.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_cpum_cf_common.c_cpumf_measurement_alert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext_code = type { i32 }
%struct.cpu_cf_events = type { i32, i32, i32 }

@CPU_MF_INT_CF_MASK = common dso_local global i32 0, align 4
@IRQEXT_CMC = common dso_local global i32 0, align 4
@cpu_cf_events = common dso_local global i32 0, align 4
@PMU_F_RESERVED = common dso_local global i32 0, align 4
@CPU_MF_INT_CF_CACA = common dso_local global i32 0, align 4
@CPU_MF_INT_CF_LCDA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"CPU[%i] Counter data was lost\0A\00", align 1
@CPU_MF_INT_CF_MTDA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"CPU[%i] MT counter data was lost\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i64)* @cpumf_measurement_alert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpumf_measurement_alert(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ext_code, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.cpu_cf_events*, align 8
  %8 = getelementptr inbounds %struct.ext_code, %struct.ext_code* %4, i32 0, i32 0
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @CPU_MF_INT_CF_MASK, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %55

14:                                               ; preds = %3
  %15 = load i32, i32* @IRQEXT_CMC, align 4
  %16 = call i32 @inc_irq_stat(i32 %15)
  %17 = call %struct.cpu_cf_events* @this_cpu_ptr(i32* @cpu_cf_events)
  store %struct.cpu_cf_events* %17, %struct.cpu_cf_events** %7, align 8
  %18 = load %struct.cpu_cf_events*, %struct.cpu_cf_events** %7, align 8
  %19 = getelementptr inbounds %struct.cpu_cf_events, %struct.cpu_cf_events* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @PMU_F_RESERVED, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %14
  br label %55

25:                                               ; preds = %14
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @CPU_MF_INT_CF_CACA, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load %struct.cpu_cf_events*, %struct.cpu_cf_events** %7, align 8
  %32 = getelementptr inbounds %struct.cpu_cf_events, %struct.cpu_cf_events* %31, i32 0, i32 2
  %33 = call i32 @qctri(i32* %32)
  br label %34

34:                                               ; preds = %30, %25
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @CPU_MF_INT_CF_LCDA, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = call i32 (...) @smp_processor_id()
  %41 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %39, %34
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @CPU_MF_INT_CF_MTDA, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = call i32 (...) @smp_processor_id()
  %49 = call i32 @pr_warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %47, %42
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.cpu_cf_events*, %struct.cpu_cf_events** %7, align 8
  %53 = getelementptr inbounds %struct.cpu_cf_events, %struct.cpu_cf_events* %52, i32 0, i32 1
  %54 = call i32 @atomic64_or(i32 %51, i32* %53)
  br label %55

55:                                               ; preds = %50, %24, %13
  ret void
}

declare dso_local i32 @inc_irq_stat(i32) #1

declare dso_local %struct.cpu_cf_events* @this_cpu_ptr(i32*) #1

declare dso_local i32 @qctri(i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @atomic64_or(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
