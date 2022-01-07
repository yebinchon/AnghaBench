; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_perf_event.c_perf_event_print_debug.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_perf_event.c_perf_event_print_debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64*, i64* }

@PERFMON_CMD_READ = common dso_local global i32 0, align 4
@alpha_pmu = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"CPU#%d: PCTR0[%06x] PCTR1[%06x]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @perf_event_print_debug() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = call i32 (...) @supported_cpu()
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  br label %49

9:                                                ; preds = %0
  %10 = load i64, i64* %1, align 8
  %11 = call i32 @local_irq_save(i64 %10)
  %12 = call i32 (...) @smp_processor_id()
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @PERFMON_CMD_READ, align 4
  %14 = call i64 @wrperfmon(i32 %13, i32 0)
  store i64 %14, i64* %2, align 8
  %15 = load i64, i64* %2, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @alpha_pmu, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  %20 = load i64, i64* %19, align 8
  %21 = lshr i64 %15, %20
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @alpha_pmu, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64*, i64** %23, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 0
  %26 = load i64, i64* %25, align 8
  %27 = and i64 %21, %26
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %3, align 4
  %29 = load i64, i64* %2, align 8
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @alpha_pmu, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 1
  %34 = load i64, i64* %33, align 8
  %35 = lshr i64 %29, %34
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @alpha_pmu, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 1
  %40 = load i64, i64* %39, align 8
  %41 = and i64 %35, %40
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @pr_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %44, i32 %45)
  %47 = load i64, i64* %1, align 8
  %48 = call i32 @local_irq_restore(i64 %47)
  br label %49

49:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @supported_cpu(...) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i64 @wrperfmon(i32, i32) #1

declare dso_local i32 @pr_info(i8*, i32, i32, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
