; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_horizon.c_do_housekeeping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_horizon.c_do_housekeeping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.timer_list = type { i32 }

@housekeeping = common dso_local global i32 0, align 4
@TX_CELL_COUNT_OFF = common dso_local global i32 0, align 4
@RX_CELL_COUNT_OFF = common dso_local global i32 0, align 4
@HEC_ERROR_COUNT_OFF = common dso_local global i32 0, align 4
@UNASSIGNED_CELL_COUNT_OFF = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@dev = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @do_housekeeping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_housekeeping(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %5 = ptrtoint %struct.TYPE_5__* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @housekeeping, align 4
  %8 = call %struct.TYPE_5__* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %3, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = load i32, i32* @TX_CELL_COUNT_OFF, align 4
  %11 = call i64 @rd_regw(%struct.TYPE_5__* %9, i32 %10)
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %15, %11
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %13, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %19 = load i32, i32* @RX_CELL_COUNT_OFF, align 4
  %20 = call i64 @rd_regw(%struct.TYPE_5__* %18, i32 %19)
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %24, %20
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %22, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %28 = load i32, i32* @HEC_ERROR_COUNT_OFF, align 4
  %29 = call i64 @rd_regw(%struct.TYPE_5__* %27, i32 %28)
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %29
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %31, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %37 = load i32, i32* @UNASSIGNED_CELL_COUNT_OFF, align 4
  %38 = call i64 @rd_regw(%struct.TYPE_5__* %36, i32 %37)
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %42, %38
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %40, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i64, i64* @jiffies, align 8
  %48 = load i32, i32* @HZ, align 4
  %49 = sdiv i32 %48, 10
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %47, %50
  %52 = call i32 @mod_timer(i32* %46, i64 %51)
  ret void
}

declare dso_local %struct.TYPE_5__* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i64 @rd_regw(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
