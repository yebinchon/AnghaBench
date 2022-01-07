; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-pxa/extr_sharpsl_pm.c_sharpsl_charge_toggle.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-pxa/extr_sharpsl_pm.c_sharpsl_charge_toggle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 (i32)*, i32 (i32)* }
%struct.work_struct = type { i32 }

@sharpsl_pm = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [31 x i8] c"Toggling Charger at time: %lx\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@SHARPSL_STATUS_ACIN = common dso_local global i32 0, align 4
@SHARPSL_LED_ON = common dso_local global i32 0, align 4
@SHARPSL_CHARGE_WAIT_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @sharpsl_charge_toggle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sharpsl_charge_toggle(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sharpsl_pm, i32 0, i32 2), align 8
  %4 = load i32, i32* @jiffies, align 4
  %5 = call i32 @dev_dbg(i32 %3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %4)
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sharpsl_pm, i32 0, i32 1), align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %8 = load i32 (i32)*, i32 (i32)** %7, align 8
  %9 = load i32, i32* @SHARPSL_STATUS_ACIN, align 4
  %10 = call i32 %8(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = call i32 (...) @sharpsl_charge_off()
  br label %37

14:                                               ; preds = %1
  %15 = call i64 (...) @sharpsl_check_battery_temp()
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = call i64 (...) @sharpsl_ac_check()
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17, %14
  %21 = call i32 (...) @sharpsl_charge_error()
  br label %37

22:                                               ; preds = %17
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* @SHARPSL_LED_ON, align 4
  %25 = call i32 @sharpsl_pm_led(i32 %24)
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sharpsl_pm, i32 0, i32 1), align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32 (i32)*, i32 (i32)** %27, align 8
  %29 = call i32 %28(i32 0)
  %30 = load i32, i32* @SHARPSL_CHARGE_WAIT_TIME, align 4
  %31 = call i32 @mdelay(i32 %30)
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sharpsl_pm, i32 0, i32 1), align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32 (i32)*, i32 (i32)** %33, align 8
  %35 = call i32 %34(i32 1)
  %36 = load i32, i32* @jiffies, align 4
  store i32 %36, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sharpsl_pm, i32 0, i32 0), align 8
  br label %37

37:                                               ; preds = %23, %20, %12
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @sharpsl_charge_off(...) #1

declare dso_local i64 @sharpsl_check_battery_temp(...) #1

declare dso_local i64 @sharpsl_ac_check(...) #1

declare dso_local i32 @sharpsl_charge_error(...) #1

declare dso_local i32 @sharpsl_pm_led(i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
