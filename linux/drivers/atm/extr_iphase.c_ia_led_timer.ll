; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_iphase.c_ia_led_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_iphase.c_ia_led_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64, i64 }
%struct.timer_list = type { i32 }

@ia_led_timer.blinking = internal global [8 x i64] zeroinitializer, align 16
@ia_led_timer.ctrl_reg = internal global i32 0, align 4
@iadev_count = common dso_local global i64 0, align 8
@ia_dev = common dso_local global %struct.TYPE_4__** null, align 8
@IPHASE5575_BUS_CONTROL_REG = common dso_local global i64 0, align 8
@CTRL_LED = common dso_local global i32 0, align 4
@ia_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @ia_led_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ia_led_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %105, %1
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @iadev_count, align 8
  %8 = icmp ult i64 %6, %7
  br i1 %8, label %9, label %108

9:                                                ; preds = %5
  %10 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @ia_dev, align 8
  %11 = load i64, i64* %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %10, i64 %11
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = icmp ne %struct.TYPE_4__* %13, null
  br i1 %14, label %15, label %104

15:                                               ; preds = %9
  %16 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @ia_dev, align 8
  %17 = load i64, i64* %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %16, i64 %17
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @IPHASE5575_BUS_CONTROL_REG, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @readl(i64 %23)
  store i32 %24, i32* @ia_led_timer.ctrl_reg, align 4
  %25 = load i64, i64* %4, align 8
  %26 = getelementptr inbounds [8 x i64], [8 x i64]* @ia_led_timer.blinking, i64 0, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %53

29:                                               ; preds = %15
  %30 = load i64, i64* %4, align 8
  %31 = getelementptr inbounds [8 x i64], [8 x i64]* @ia_led_timer.blinking, i64 0, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %31, align 8
  %34 = load i32, i32* @CTRL_LED, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* @ia_led_timer.ctrl_reg, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* @ia_led_timer.ctrl_reg, align 4
  %38 = load i32, i32* @ia_led_timer.ctrl_reg, align 4
  %39 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @ia_dev, align 8
  %40 = load i64, i64* %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %39, i64 %40
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @IPHASE5575_BUS_CONTROL_REG, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @writel(i32 %38, i64 %46)
  %48 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @ia_dev, align 8
  %49 = load i64, i64* %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %48, i64 %49
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = call i32 @ia_update_stats(%struct.TYPE_4__* %51)
  br label %103

53:                                               ; preds = %15
  %54 = load i64, i64* %4, align 8
  %55 = getelementptr inbounds [8 x i64], [8 x i64]* @ia_led_timer.blinking, i64 0, i64 %54
  store i64 0, i64* %55, align 8
  %56 = load i32, i32* @CTRL_LED, align 4
  %57 = load i32, i32* @ia_led_timer.ctrl_reg, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* @ia_led_timer.ctrl_reg, align 4
  %59 = load i32, i32* @ia_led_timer.ctrl_reg, align 4
  %60 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @ia_dev, align 8
  %61 = load i64, i64* %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %60, i64 %61
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @IPHASE5575_BUS_CONTROL_REG, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @writel(i32 %59, i64 %67)
  %69 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @ia_dev, align 8
  %70 = load i64, i64* %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %69, i64 %70
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i64, i64* %3, align 8
  %75 = call i32 @spin_lock_irqsave(i32* %73, i64 %74)
  %76 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @ia_dev, align 8
  %77 = load i64, i64* %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %76, i64 %77
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %53
  %84 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @ia_dev, align 8
  %85 = load i64, i64* %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %84, i64 %85
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = call i32 @wake_up(i32* %88)
  br label %90

90:                                               ; preds = %83, %53
  %91 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @ia_dev, align 8
  %92 = load i64, i64* %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %91, i64 %92
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = call i32 @ia_tx_poll(%struct.TYPE_4__* %94)
  %96 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @ia_dev, align 8
  %97 = load i64, i64* %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %96, i64 %97
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i64, i64* %3, align 8
  %102 = call i32 @spin_unlock_irqrestore(i32* %100, i64 %101)
  br label %103

103:                                              ; preds = %90, %29
  br label %104

104:                                              ; preds = %103, %9
  br label %105

105:                                              ; preds = %104
  %106 = load i64, i64* %4, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %4, align 8
  br label %5

108:                                              ; preds = %5
  %109 = load i64, i64* @jiffies, align 8
  %110 = load i32, i32* @HZ, align 4
  %111 = sdiv i32 %110, 4
  %112 = sext i32 %111 to i64
  %113 = add nsw i64 %109, %112
  %114 = call i32 @mod_timer(i32* @ia_timer, i64 %113)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @ia_update_stats(%struct.TYPE_4__*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @ia_tx_poll(%struct.TYPE_4__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
