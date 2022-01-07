; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_bluecard_cs.c_bluecard_enable_activity_led.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_bluecard_cs.c_bluecard_enable_activity_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bluecard_info = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i32 }

@CARD_ACTIVITY = common dso_local global i32 0, align 4
@CARD_HAS_ACTIVITY_LED = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bluecard_info*)* @bluecard_enable_activity_led to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bluecard_enable_activity_led(%struct.bluecard_info* %0) #0 {
  %2 = alloca %struct.bluecard_info*, align 8
  %3 = alloca i32, align 4
  store %struct.bluecard_info* %0, %struct.bluecard_info** %2, align 8
  %4 = load %struct.bluecard_info*, %struct.bluecard_info** %2, align 8
  %5 = getelementptr inbounds %struct.bluecard_info, %struct.bluecard_info* %4, i32 0, i32 2
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %8, i64 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %3, align 4
  %13 = load %struct.bluecard_info*, %struct.bluecard_info** %2, align 8
  %14 = getelementptr inbounds %struct.bluecard_info, %struct.bluecard_info* %13, i32 0, i32 0
  %15 = call i64 @timer_pending(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %45

18:                                               ; preds = %1
  %19 = load i32, i32* @CARD_ACTIVITY, align 4
  %20 = load %struct.bluecard_info*, %struct.bluecard_info** %2, align 8
  %21 = getelementptr inbounds %struct.bluecard_info, %struct.bluecard_info* %20, i32 0, i32 1
  %22 = call i32 @set_bit(i32 %19, i32* %21)
  %23 = load i32, i32* @CARD_HAS_ACTIVITY_LED, align 4
  %24 = load %struct.bluecard_info*, %struct.bluecard_info** %2, align 8
  %25 = getelementptr inbounds %struct.bluecard_info, %struct.bluecard_info* %24, i32 0, i32 1
  %26 = call i64 @test_bit(i32 %23, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %18
  %29 = load i32, i32* %3, align 4
  %30 = add i32 %29, 48
  %31 = call i32 @outb(i32 120, i32 %30)
  br label %36

32:                                               ; preds = %18
  %33 = load i32, i32* %3, align 4
  %34 = add i32 %33, 48
  %35 = call i32 @outb(i32 0, i32 %34)
  br label %36

36:                                               ; preds = %32, %28
  %37 = load %struct.bluecard_info*, %struct.bluecard_info** %2, align 8
  %38 = getelementptr inbounds %struct.bluecard_info, %struct.bluecard_info* %37, i32 0, i32 0
  %39 = load i64, i64* @jiffies, align 8
  %40 = load i32, i32* @HZ, align 4
  %41 = sdiv i32 %40, 10
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %39, %42
  %44 = call i32 @mod_timer(i32* %38, i64 %43)
  br label %45

45:                                               ; preds = %36, %17
  ret void
}

declare dso_local i64 @timer_pending(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
