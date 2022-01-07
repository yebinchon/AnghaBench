; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_ts-nbus.c_ts_nbus_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_ts-nbus.c_ts_nbus_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ts_nbus = type { i32, i32, i32, i32 }

@TS_NBUS_WRITE_ADR = common dso_local global i32 0, align 4
@TS_NBUS_DIRECTION_IN = common dso_local global i32 0, align 4
@TS_NBUS_DIRECTION_OUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ts_nbus_read(%struct.ts_nbus* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.ts_nbus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ts_nbus* %0, %struct.ts_nbus** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load %struct.ts_nbus*, %struct.ts_nbus** %4, align 8
  %11 = getelementptr inbounds %struct.ts_nbus, %struct.ts_nbus* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.ts_nbus*, %struct.ts_nbus** %4, align 8
  %14 = getelementptr inbounds %struct.ts_nbus, %struct.ts_nbus* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @gpiod_set_value_cansleep(i32 %15, i32 0)
  %17 = load %struct.ts_nbus*, %struct.ts_nbus** %4, align 8
  %18 = load i32, i32* @TS_NBUS_WRITE_ADR, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @ts_nbus_write_bus(%struct.ts_nbus* %17, i32 %18, i32 %19)
  %21 = load %struct.ts_nbus*, %struct.ts_nbus** %4, align 8
  %22 = load i32, i32* @TS_NBUS_DIRECTION_IN, align 4
  %23 = call i32 @ts_nbus_set_direction(%struct.ts_nbus* %21, i32 %22)
  br label %24

24:                                               ; preds = %55, %3
  %25 = load i32*, i32** %6, align 8
  store i32 0, i32* %25, align 4
  store i32 0, i32* %9, align 4
  store i32 1, i32* %8, align 4
  br label %26

26:                                               ; preds = %43, %24
  %27 = load i32, i32* %8, align 4
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %26
  %30 = load %struct.ts_nbus*, %struct.ts_nbus** %4, align 8
  %31 = call i32 @ts_nbus_read_bus(%struct.ts_nbus* %30, i32* %9)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %59

35:                                               ; preds = %29
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %8, align 4
  %38 = mul nsw i32 %37, 8
  %39 = shl i32 %36, %38
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %39
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %35
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %8, align 4
  br label %26

46:                                               ; preds = %26
  %47 = load %struct.ts_nbus*, %struct.ts_nbus** %4, align 8
  %48 = getelementptr inbounds %struct.ts_nbus, %struct.ts_nbus* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @gpiod_set_value_cansleep(i32 %49, i32 1)
  %51 = load %struct.ts_nbus*, %struct.ts_nbus** %4, align 8
  %52 = getelementptr inbounds %struct.ts_nbus, %struct.ts_nbus* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @gpiod_get_value_cansleep(i32 %53)
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %46
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %24, label %58

58:                                               ; preds = %55
  br label %59

59:                                               ; preds = %58, %34
  %60 = load %struct.ts_nbus*, %struct.ts_nbus** %4, align 8
  %61 = load i32, i32* @TS_NBUS_DIRECTION_OUT, align 4
  %62 = call i32 @ts_nbus_set_direction(%struct.ts_nbus* %60, i32 %61)
  %63 = load %struct.ts_nbus*, %struct.ts_nbus** %4, align 8
  %64 = getelementptr inbounds %struct.ts_nbus, %struct.ts_nbus* %63, i32 0, i32 0
  %65 = call i32 @mutex_unlock(i32* %64)
  %66 = load i32, i32* %7, align 4
  ret i32 %66
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gpiod_set_value_cansleep(i32, i32) #1

declare dso_local i32 @ts_nbus_write_bus(%struct.ts_nbus*, i32, i32) #1

declare dso_local i32 @ts_nbus_set_direction(%struct.ts_nbus*, i32) #1

declare dso_local i32 @ts_nbus_read_bus(%struct.ts_nbus*, i32*) #1

declare dso_local i32 @gpiod_get_value_cansleep(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
