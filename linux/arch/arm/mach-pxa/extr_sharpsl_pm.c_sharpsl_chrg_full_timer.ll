; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-pxa/extr_sharpsl_pm.c_sharpsl_chrg_full_timer.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-pxa/extr_sharpsl_pm.c_sharpsl_chrg_full_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i32, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32)* }
%struct.timer_list = type { i32 }

@sharpsl_pm = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [26 x i8] c"Charge Full at time: %lx\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@SHARPSL_STATUS_ACIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Charge Full: AC removed - stop charging!\0A\00", align 1
@CHRG_ON = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"Charge Full: Count too low\0A\00", align 1
@toggle_charger = common dso_local global i32 0, align 4
@SHARPSL_CHARGE_FINISH_TIME = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [54 x i8] c"Charge Full: Interrupt generated too slowly - retry.\0A\00", align 1
@CHRG_DONE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [32 x i8] c"Charge Full: Charging Finished\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @sharpsl_chrg_full_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sharpsl_chrg_full_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sharpsl_pm, i32 0, i32 2), align 8
  %4 = load i32, i32* @jiffies, align 4
  %5 = call i32 (i32, i8*, ...) @dev_dbg(i32 %3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %4)
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sharpsl_pm, i32 0, i32 0), align 8
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sharpsl_pm, i32 0, i32 0), align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sharpsl_pm, i32 0, i32 4), align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32 (i32)*, i32 (i32)** %9, align 8
  %11 = load i32, i32* @SHARPSL_STATUS_ACIN, align 4
  %12 = call i32 %10(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sharpsl_pm, i32 0, i32 2), align 8
  %16 = call i32 (i32, i8*, ...) @dev_dbg(i32 %15, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sharpsl_pm, i32 0, i32 1), align 8
  %18 = load i64, i64* @CHRG_ON, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = call i32 (...) @sharpsl_charge_off()
  br label %22

22:                                               ; preds = %20, %14
  br label %48

23:                                               ; preds = %1
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sharpsl_pm, i32 0, i32 0), align 8
  %25 = icmp slt i32 %24, 2
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sharpsl_pm, i32 0, i32 2), align 8
  %28 = call i32 (i32, i8*, ...) @dev_dbg(i32 %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %29 = call i32 @schedule_delayed_work(i32* @toggle_charger, i32 0)
  br label %47

30:                                               ; preds = %23
  %31 = load i32, i32* @jiffies, align 4
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sharpsl_pm, i32 0, i32 3), align 8
  %33 = load i64, i64* @SHARPSL_CHARGE_FINISH_TIME, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i64 @time_after(i32 %31, i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sharpsl_pm, i32 0, i32 2), align 8
  %39 = call i32 (i32, i8*, ...) @dev_dbg(i32 %38, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0))
  %40 = call i32 @schedule_delayed_work(i32* @toggle_charger, i32 0)
  br label %46

41:                                               ; preds = %30
  %42 = call i32 (...) @sharpsl_charge_off()
  %43 = load i64, i64* @CHRG_DONE, align 8
  store i64 %43, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sharpsl_pm, i32 0, i32 1), align 8
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sharpsl_pm, i32 0, i32 2), align 8
  %45 = call i32 (i32, i8*, ...) @dev_dbg(i32 %44, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %46

46:                                               ; preds = %41, %37
  br label %47

47:                                               ; preds = %46, %26
  br label %48

48:                                               ; preds = %47, %22
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @sharpsl_charge_off(...) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i64 @time_after(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
