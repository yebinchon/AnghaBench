; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-atmel-pit.c_at91sam926x_pit_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-atmel-pit.c_at91sam926x_pit_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pit_data = type { i32, i32 }

@AT91_PIT_MR = common dso_local global i32 0, align 4
@AT91_PIT_PIVR = common dso_local global i32 0, align 4
@AT91_PIT_PITEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pit_data*)* @at91sam926x_pit_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @at91sam926x_pit_reset(%struct.pit_data* %0) #0 {
  %2 = alloca %struct.pit_data*, align 8
  store %struct.pit_data* %0, %struct.pit_data** %2, align 8
  %3 = load %struct.pit_data*, %struct.pit_data** %2, align 8
  %4 = getelementptr inbounds %struct.pit_data, %struct.pit_data* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @AT91_PIT_MR, align 4
  %7 = call i32 @pit_write(i32 %5, i32 %6, i32 0)
  br label %8

8:                                                ; preds = %16, %1
  %9 = load %struct.pit_data*, %struct.pit_data** %2, align 8
  %10 = getelementptr inbounds %struct.pit_data, %struct.pit_data* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @AT91_PIT_PIVR, align 4
  %13 = call i32 @pit_read(i32 %11, i32 %12)
  %14 = call i64 @PIT_CPIV(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %8
  %17 = call i32 (...) @cpu_relax()
  br label %8

18:                                               ; preds = %8
  %19 = load %struct.pit_data*, %struct.pit_data** %2, align 8
  %20 = getelementptr inbounds %struct.pit_data, %struct.pit_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @AT91_PIT_MR, align 4
  %23 = load %struct.pit_data*, %struct.pit_data** %2, align 8
  %24 = getelementptr inbounds %struct.pit_data, %struct.pit_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %25, 1
  %27 = load i32, i32* @AT91_PIT_PITEN, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @pit_write(i32 %21, i32 %22, i32 %28)
  ret void
}

declare dso_local i32 @pit_write(i32, i32, i32) #1

declare dso_local i64 @PIT_CPIV(i32) #1

declare dso_local i32 @pit_read(i32, i32) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
