; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-atmel-pit.c_read_pit_clk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-atmel-pit.c_read_pit_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clocksource = type { i32 }
%struct.pit_data = type { i32, i32, i32 }

@AT91_PIT_PIIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clocksource*)* @read_pit_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_pit_clk(%struct.clocksource* %0) #0 {
  %2 = alloca %struct.clocksource*, align 8
  %3 = alloca %struct.pit_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.clocksource* %0, %struct.clocksource** %2, align 8
  %7 = load %struct.clocksource*, %struct.clocksource** %2, align 8
  %8 = call %struct.pit_data* @clksrc_to_pit_data(%struct.clocksource* %7)
  store %struct.pit_data* %8, %struct.pit_data** %3, align 8
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @raw_local_irq_save(i64 %9)
  %11 = load %struct.pit_data*, %struct.pit_data** %3, align 8
  %12 = getelementptr inbounds %struct.pit_data, %struct.pit_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load %struct.pit_data*, %struct.pit_data** %3, align 8
  %15 = getelementptr inbounds %struct.pit_data, %struct.pit_data* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @AT91_PIT_PIIR, align 4
  %18 = call i32 @pit_read(i32 %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @raw_local_irq_restore(i64 %19)
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @PIT_PICNT(i32 %21)
  %23 = load %struct.pit_data*, %struct.pit_data** %3, align 8
  %24 = getelementptr inbounds %struct.pit_data, %struct.pit_data* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %22, %25
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, %26
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i64 @PIT_CPIV(i32 %29)
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %32, %30
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local %struct.pit_data* @clksrc_to_pit_data(%struct.clocksource*) #1

declare dso_local i32 @raw_local_irq_save(i64) #1

declare dso_local i32 @pit_read(i32, i32) #1

declare dso_local i32 @raw_local_irq_restore(i64) #1

declare dso_local i32 @PIT_PICNT(i32) #1

declare dso_local i64 @PIT_CPIV(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
