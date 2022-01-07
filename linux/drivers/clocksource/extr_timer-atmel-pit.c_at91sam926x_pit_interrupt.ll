; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-atmel-pit.c_at91sam926x_pit_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-atmel-pit.c_at91sam926x_pit_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pit_data = type { i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_3__*)* }

@AT91_PIT_SR = common dso_local global i32 0, align 4
@AT91_PIT_PITS = common dso_local global i32 0, align 4
@AT91_PIT_PIVR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @at91sam926x_pit_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91sam926x_pit_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pit_data*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.pit_data*
  store %struct.pit_data* %8, %struct.pit_data** %6, align 8
  %9 = load %struct.pit_data*, %struct.pit_data** %6, align 8
  %10 = getelementptr inbounds %struct.pit_data, %struct.pit_data* %9, i32 0, i32 2
  %11 = call i64 @clockevent_state_periodic(%struct.TYPE_3__* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %45

13:                                               ; preds = %2
  %14 = load %struct.pit_data*, %struct.pit_data** %6, align 8
  %15 = getelementptr inbounds %struct.pit_data, %struct.pit_data* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @AT91_PIT_SR, align 4
  %18 = call i32 @pit_read(i32 %16, i32 %17)
  %19 = load i32, i32* @AT91_PIT_PITS, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %45

22:                                               ; preds = %13
  %23 = load %struct.pit_data*, %struct.pit_data** %6, align 8
  %24 = getelementptr inbounds %struct.pit_data, %struct.pit_data* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.pit_data*, %struct.pit_data** %6, align 8
  %27 = getelementptr inbounds %struct.pit_data, %struct.pit_data* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @AT91_PIT_PIVR, align 4
  %30 = call i32 @pit_read(i32 %28, i32 %29)
  %31 = call i32 @PIT_PICNT(i32 %30)
  %32 = mul nsw i32 %25, %31
  %33 = load %struct.pit_data*, %struct.pit_data** %6, align 8
  %34 = getelementptr inbounds %struct.pit_data, %struct.pit_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, %32
  store i32 %36, i32* %34, align 8
  %37 = load %struct.pit_data*, %struct.pit_data** %6, align 8
  %38 = getelementptr inbounds %struct.pit_data, %struct.pit_data* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32 (%struct.TYPE_3__*)*, i32 (%struct.TYPE_3__*)** %39, align 8
  %41 = load %struct.pit_data*, %struct.pit_data** %6, align 8
  %42 = getelementptr inbounds %struct.pit_data, %struct.pit_data* %41, i32 0, i32 2
  %43 = call i32 %40(%struct.TYPE_3__* %42)
  %44 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %44, i32* %3, align 4
  br label %47

45:                                               ; preds = %13, %2
  %46 = load i32, i32* @IRQ_NONE, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %45, %22
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i64 @clockevent_state_periodic(%struct.TYPE_3__*) #1

declare dso_local i32 @pit_read(i32, i32) #1

declare dso_local i32 @PIT_PICNT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
