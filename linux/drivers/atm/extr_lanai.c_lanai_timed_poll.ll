; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_lanai.c_lanai_timed_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_lanai.c_lanai_timed_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lanai_dev = type { i32, i32, i32, i32 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@vcc_sklist_lock = common dso_local global i32 0, align 4
@iter_dequeue = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@LANAI_POLL_PERIOD = common dso_local global i64 0, align 8
@CONFIG1_POWERDOWN = common dso_local global i32 0, align 4
@lanai = common dso_local global %struct.lanai_dev* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @lanai_timed_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lanai_timed_poll(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.lanai_dev*, align 8
  %4 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.lanai_dev*, %struct.lanai_dev** %3, align 8
  %6 = ptrtoint %struct.lanai_dev* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @timer, align 4
  %9 = call %struct.lanai_dev* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.lanai_dev* %9, %struct.lanai_dev** %3, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @local_irq_save(i64 %10)
  %12 = load %struct.lanai_dev*, %struct.lanai_dev** %3, align 8
  %13 = getelementptr inbounds %struct.lanai_dev, %struct.lanai_dev* %12, i32 0, i32 3
  %14 = call i64 @spin_trylock(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.lanai_dev*, %struct.lanai_dev** %3, align 8
  %18 = call i32 @run_service(%struct.lanai_dev* %17)
  %19 = load %struct.lanai_dev*, %struct.lanai_dev** %3, align 8
  %20 = getelementptr inbounds %struct.lanai_dev, %struct.lanai_dev* %19, i32 0, i32 3
  %21 = call i32 @spin_unlock(i32* %20)
  br label %22

22:                                               ; preds = %16, %1
  %23 = call i32 @read_lock(i32* @vcc_sklist_lock)
  %24 = load %struct.lanai_dev*, %struct.lanai_dev** %3, align 8
  %25 = load %struct.lanai_dev*, %struct.lanai_dev** %3, align 8
  %26 = getelementptr inbounds %struct.lanai_dev, %struct.lanai_dev* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @iter_dequeue, align 4
  %29 = call i32 @vci_bitfield_iterate(%struct.lanai_dev* %24, i32 %27, i32 %28)
  %30 = call i32 @read_unlock(i32* @vcc_sklist_lock)
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @local_irq_restore(i64 %31)
  %33 = load %struct.lanai_dev*, %struct.lanai_dev** %3, align 8
  %34 = call i32 @get_statistics(%struct.lanai_dev* %33)
  %35 = load %struct.lanai_dev*, %struct.lanai_dev** %3, align 8
  %36 = getelementptr inbounds %struct.lanai_dev, %struct.lanai_dev* %35, i32 0, i32 1
  %37 = load i64, i64* @jiffies, align 8
  %38 = load i64, i64* @LANAI_POLL_PERIOD, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @mod_timer(i32* %36, i64 %39)
  ret void
}

declare dso_local %struct.lanai_dev* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i64 @spin_trylock(i32*) #1

declare dso_local i32 @run_service(%struct.lanai_dev*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @vci_bitfield_iterate(%struct.lanai_dev*, i32, i32) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @get_statistics(%struct.lanai_dev*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
