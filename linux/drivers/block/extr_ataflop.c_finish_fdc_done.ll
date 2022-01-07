; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_ataflop.c_finish_fdc_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_ataflop.c_finish_fdc_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"finish_fdc_done entered\0A\00", align 1
@NeedSeek = common dso_local global i64 0, align 8
@fd_timer = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@jiffies = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"finish_fdc() finished\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @finish_fdc_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @finish_fdc_done(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %4 = call i32 @DPRINT(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 (...) @stop_timeout()
  store i64 0, i64* @NeedSeek, align 8
  %6 = call i64 @timer_pending(%struct.TYPE_4__* @fd_timer)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %1
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fd_timer, i32 0, i32 0), align 4
  %10 = load i64, i64* @jiffies, align 8
  %11 = add nsw i64 %10, 5
  %12 = call i64 @time_before(i32 %9, i64 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %8
  %15 = load i64, i64* @jiffies, align 8
  %16 = add nsw i64 %15, 5
  %17 = call i32 @mod_timer(%struct.TYPE_4__* @fd_timer, i64 %16)
  br label %20

18:                                               ; preds = %8, %1
  %19 = call i32 (...) @start_check_change_timer()
  br label %20

20:                                               ; preds = %18, %14
  %21 = call i32 (...) @start_motor_off_timer()
  %22 = load i64, i64* %3, align 8
  %23 = call i32 @local_irq_save(i64 %22)
  %24 = call i32 (...) @stdma_release()
  %25 = load i64, i64* %3, align 8
  %26 = call i32 @local_irq_restore(i64 %25)
  %27 = call i32 @DPRINT(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @DPRINT(i8*) #1

declare dso_local i32 @stop_timeout(...) #1

declare dso_local i64 @timer_pending(%struct.TYPE_4__*) #1

declare dso_local i64 @time_before(i32, i64) #1

declare dso_local i32 @mod_timer(%struct.TYPE_4__*, i64) #1

declare dso_local i32 @start_check_change_timer(...) #1

declare dso_local i32 @start_motor_off_timer(...) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @stdma_release(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
