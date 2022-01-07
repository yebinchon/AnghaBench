; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_si_intf.c_smi_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_si_intf.c_smi_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smi_info = type { i32, i32, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.timer_list = type { i32 }

@si_timer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"Timer\00", align 1
@jiffies = common dso_local global i32 0, align 4
@SI_USEC_PER_JIFFY = common dso_local global i64 0, align 8
@SI_TIMEOUT_JIFFIES = common dso_local global i32 0, align 4
@long_timeouts = common dso_local global i32 0, align 4
@SI_SM_CALL_WITH_DELAY = common dso_local global i32 0, align 4
@short_timeouts = common dso_local global i32 0, align 4
@SI_SM_IDLE = common dso_local global i32 0, align 4
@smi_info = common dso_local global %struct.smi_info* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @smi_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smi_timeout(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.smi_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %9 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %10 = ptrtoint %struct.smi_info* %9 to i32
  %11 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %12 = load i32, i32* @si_timer, align 4
  %13 = call %struct.smi_info* @from_timer(i32 %10, %struct.timer_list* %11, i32 %12)
  store %struct.smi_info* %13, %struct.smi_info** %3, align 8
  %14 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %15 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %14, i32 0, i32 1
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = call i32 @debug_timestamp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @jiffies, align 4
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %23 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 %21, %24
  %26 = load i64, i64* @SI_USEC_PER_JIFFY, align 8
  %27 = mul nsw i64 %25, %26
  store i64 %27, i64* %7, align 8
  %28 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @smi_event_handler(%struct.smi_info* %28, i64 %29)
  store i32 %30, i32* %4, align 4
  %31 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %32 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %1
  %37 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %38 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* @jiffies, align 4
  %43 = load i32, i32* @SI_TIMEOUT_JIFFIES, align 4
  %44 = add nsw i32 %42, %43
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %8, align 8
  %46 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %47 = load i32, i32* @long_timeouts, align 4
  %48 = call i32 @smi_inc_stat(%struct.smi_info* %46, i32 %47)
  br label %69

49:                                               ; preds = %36, %1
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @SI_SM_CALL_WITH_DELAY, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %49
  %54 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %55 = load i32, i32* @short_timeouts, align 4
  %56 = call i32 @smi_inc_stat(%struct.smi_info* %54, i32 %55)
  %57 = load i32, i32* @jiffies, align 4
  %58 = add nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  store i64 %59, i64* %8, align 8
  br label %68

60:                                               ; preds = %49
  %61 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %62 = load i32, i32* @long_timeouts, align 4
  %63 = call i32 @smi_inc_stat(%struct.smi_info* %61, i32 %62)
  %64 = load i32, i32* @jiffies, align 4
  %65 = load i32, i32* @SI_TIMEOUT_JIFFIES, align 4
  %66 = add nsw i32 %64, %65
  %67 = sext i32 %66 to i64
  store i64 %67, i64* %8, align 8
  br label %68

68:                                               ; preds = %60, %53
  br label %69

69:                                               ; preds = %68, %41
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @SI_SM_IDLE, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %75 = load i64, i64* %8, align 8
  %76 = call i32 @smi_mod_timer(%struct.smi_info* %74, i64 %75)
  br label %80

77:                                               ; preds = %69
  %78 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %79 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %78, i32 0, i32 0
  store i32 0, i32* %79, align 8
  br label %80

80:                                               ; preds = %77, %73
  %81 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %82 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %81, i32 0, i32 1
  %83 = load i64, i64* %5, align 8
  %84 = call i32 @spin_unlock_irqrestore(i32* %82, i64 %83)
  ret void
}

declare dso_local %struct.smi_info* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @debug_timestamp(i8*) #1

declare dso_local i32 @smi_event_handler(%struct.smi_info*, i64) #1

declare dso_local i32 @smi_inc_stat(%struct.smi_info*, i32) #1

declare dso_local i32 @smi_mod_timer(%struct.smi_info*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
