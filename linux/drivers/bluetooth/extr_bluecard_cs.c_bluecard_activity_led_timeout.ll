; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_bluecard_cs.c_bluecard_activity_led_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_bluecard_cs.c_bluecard_activity_led_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bluecard_info = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i32 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@CARD_ACTIVITY = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@info = common dso_local global %struct.bluecard_info* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @bluecard_activity_led_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bluecard_activity_led_timeout(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.bluecard_info*, align 8
  %4 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.bluecard_info*, %struct.bluecard_info** %3, align 8
  %6 = ptrtoint %struct.bluecard_info* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @timer, align 4
  %9 = call %struct.bluecard_info* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.bluecard_info* %9, %struct.bluecard_info** %3, align 8
  %10 = load %struct.bluecard_info*, %struct.bluecard_info** %3, align 8
  %11 = getelementptr inbounds %struct.bluecard_info, %struct.bluecard_info* %10, i32 0, i32 2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %14, i64 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* @CARD_ACTIVITY, align 4
  %20 = load %struct.bluecard_info*, %struct.bluecard_info** %3, align 8
  %21 = getelementptr inbounds %struct.bluecard_info, %struct.bluecard_info* %20, i32 0, i32 1
  %22 = call i64 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %1
  %25 = load i32, i32* @CARD_ACTIVITY, align 4
  %26 = load %struct.bluecard_info*, %struct.bluecard_info** %3, align 8
  %27 = getelementptr inbounds %struct.bluecard_info, %struct.bluecard_info* %26, i32 0, i32 1
  %28 = call i32 @clear_bit(i32 %25, i32* %27)
  %29 = load %struct.bluecard_info*, %struct.bluecard_info** %3, align 8
  %30 = getelementptr inbounds %struct.bluecard_info, %struct.bluecard_info* %29, i32 0, i32 0
  %31 = load i64, i64* @jiffies, align 8
  %32 = load i32, i32* @HZ, align 4
  %33 = sdiv i32 %32, 10
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %31, %34
  %36 = call i32 @mod_timer(i32* %30, i64 %35)
  br label %37

37:                                               ; preds = %24, %1
  %38 = load i32, i32* %4, align 4
  %39 = add i32 %38, 48
  %40 = call i32 @outb(i32 40, i32 %39)
  ret void
}

declare dso_local %struct.bluecard_info* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @outb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
