; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/pcmcia/extr_cm4000_cs.c_terminate_monitor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/pcmcia/extr_cm4000_cs.c_terminate_monitor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm4000_dev = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"-> terminate_monitor\0A\00", align 1
@LOCK_MONITOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Now allow last cycle of monitor!\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Delete timer\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"<- terminate_monitor\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cm4000_dev*)* @terminate_monitor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @terminate_monitor(%struct.cm4000_dev* %0) #0 {
  %2 = alloca %struct.cm4000_dev*, align 8
  store %struct.cm4000_dev* %0, %struct.cm4000_dev** %2, align 8
  %3 = load %struct.cm4000_dev*, %struct.cm4000_dev** %2, align 8
  %4 = call i32 @DEBUGP(i32 3, %struct.cm4000_dev* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.cm4000_dev*, %struct.cm4000_dev** %2, align 8
  %6 = getelementptr inbounds %struct.cm4000_dev, %struct.cm4000_dev* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @LOCK_MONITOR, align 4
  %9 = load %struct.cm4000_dev*, %struct.cm4000_dev** %2, align 8
  %10 = getelementptr inbounds %struct.cm4000_dev, %struct.cm4000_dev* %9, i32 0, i32 2
  %11 = bitcast i32* %10 to i8*
  %12 = call i32 @test_and_set_bit(i32 %8, i8* %11)
  %13 = call i32 @wait_event_interruptible(i32 %7, i32 %12)
  %14 = load %struct.cm4000_dev*, %struct.cm4000_dev** %2, align 8
  %15 = call i32 @DEBUGP(i32 5, %struct.cm4000_dev* %14, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %16

16:                                               ; preds = %23, %1
  %17 = load i32, i32* @LOCK_MONITOR, align 4
  %18 = load %struct.cm4000_dev*, %struct.cm4000_dev** %2, align 8
  %19 = getelementptr inbounds %struct.cm4000_dev, %struct.cm4000_dev* %18, i32 0, i32 2
  %20 = bitcast i32* %19 to i8*
  %21 = call i64 @test_bit(i32 %17, i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = call i32 @msleep(i32 25)
  br label %16

25:                                               ; preds = %16
  %26 = load %struct.cm4000_dev*, %struct.cm4000_dev** %2, align 8
  %27 = call i32 @DEBUGP(i32 5, %struct.cm4000_dev* %26, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %28 = load %struct.cm4000_dev*, %struct.cm4000_dev** %2, align 8
  %29 = getelementptr inbounds %struct.cm4000_dev, %struct.cm4000_dev* %28, i32 0, i32 1
  %30 = call i32 @del_timer_sync(i32* %29)
  %31 = load %struct.cm4000_dev*, %struct.cm4000_dev** %2, align 8
  %32 = call i32 @DEBUGP(i32 3, %struct.cm4000_dev* %31, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @DEBUGP(i32, %struct.cm4000_dev*, i8*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @test_and_set_bit(i32, i8*) #1

declare dso_local i64 @test_bit(i32, i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
