; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_ts-nbus.c_ts_nbus_reset_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_ts-nbus.c_ts_nbus_reset_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ts_nbus = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@values = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ts_nbus*)* @ts_nbus_reset_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ts_nbus_reset_bus(%struct.ts_nbus* %0) #0 {
  %2 = alloca %struct.ts_nbus*, align 8
  store %struct.ts_nbus* %0, %struct.ts_nbus** %2, align 8
  %3 = load i64*, i64** @values, align 8
  %4 = call i32 @DECLARE_BITMAP(i64* %3, i32 8)
  %5 = load i64*, i64** @values, align 8
  %6 = getelementptr inbounds i64, i64* %5, i64 0
  store i64 0, i64* %6, align 8
  %7 = load %struct.ts_nbus*, %struct.ts_nbus** %2, align 8
  %8 = getelementptr inbounds %struct.ts_nbus, %struct.ts_nbus* %7, i32 0, i32 3
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.ts_nbus*, %struct.ts_nbus** %2, align 8
  %13 = getelementptr inbounds %struct.ts_nbus, %struct.ts_nbus* %12, i32 0, i32 3
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i64*, i64** @values, align 8
  %18 = call i32 @gpiod_set_array_value_cansleep(i32 8, i32 %11, i32 %16, i64* %17)
  %19 = load %struct.ts_nbus*, %struct.ts_nbus** %2, align 8
  %20 = getelementptr inbounds %struct.ts_nbus, %struct.ts_nbus* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @gpiod_set_value_cansleep(i32 %21, i32 0)
  %23 = load %struct.ts_nbus*, %struct.ts_nbus** %2, align 8
  %24 = getelementptr inbounds %struct.ts_nbus, %struct.ts_nbus* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @gpiod_set_value_cansleep(i32 %25, i32 0)
  %27 = load %struct.ts_nbus*, %struct.ts_nbus** %2, align 8
  %28 = getelementptr inbounds %struct.ts_nbus, %struct.ts_nbus* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @gpiod_set_value_cansleep(i32 %29, i32 0)
  ret void
}

declare dso_local i32 @DECLARE_BITMAP(i64*, i32) #1

declare dso_local i32 @gpiod_set_array_value_cansleep(i32, i32, i32, i64*) #1

declare dso_local i32 @gpiod_set_value_cansleep(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
