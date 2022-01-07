; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_ds.c_adaptive_pebs_record_size_update.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_ds.c_adaptive_pebs_record_size_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.cpu_hw_events = type { i32, i32 }

@cpu_hw_events = common dso_local global i32 0, align 4
@PEBS_DATACFG_MEMINFO = common dso_local global i32 0, align 4
@PEBS_DATACFG_GP = common dso_local global i32 0, align 4
@PEBS_DATACFG_XMMS = common dso_local global i32 0, align 4
@PEBS_DATACFG_LBRS = common dso_local global i32 0, align 4
@x86_pmu = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @adaptive_pebs_record_size_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adaptive_pebs_record_size_update() #0 {
  %1 = alloca %struct.cpu_hw_events*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call %struct.cpu_hw_events* @this_cpu_ptr(i32* @cpu_hw_events)
  store %struct.cpu_hw_events* %4, %struct.cpu_hw_events** %1, align 8
  %5 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %1, align 8
  %6 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %2, align 4
  store i32 4, i32* %3, align 4
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @PEBS_DATACFG_MEMINFO, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %0
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = add i64 %14, 4
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %12, %0
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @PEBS_DATACFG_GP, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = add i64 %24, 4
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %22, %17
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* @PEBS_DATACFG_XMMS, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = add i64 %34, 4
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %32, %27
  %38 = load i32, i32* %2, align 4
  %39 = load i32, i32* @PEBS_DATACFG_LBRS, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @x86_pmu, i32 0, i32 0), align 4
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 4
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = add i64 %47, %45
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %42, %37
  %51 = load i32, i32* %3, align 4
  %52 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %1, align 8
  %53 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  ret void
}

declare dso_local %struct.cpu_hw_events* @this_cpu_ptr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
