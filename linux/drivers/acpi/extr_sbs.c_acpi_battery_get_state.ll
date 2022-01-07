; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_sbs.c_acpi_battery_get_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_sbs.c_acpi_battery_get_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.acpi_battery = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@cache_time = common dso_local global i32 0, align 4
@state_readers = common dso_local global %struct.TYPE_5__* null, align 8
@ACPI_SBS_BATTERY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_battery*)* @acpi_battery_get_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_battery_get_state(%struct.acpi_battery* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_battery*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.acpi_battery* %0, %struct.acpi_battery** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.acpi_battery*, %struct.acpi_battery** %3, align 8
  %7 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = load i64, i64* @jiffies, align 8
  %12 = load %struct.acpi_battery*, %struct.acpi_battery** %3, align 8
  %13 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* @cache_time, align 4
  %16 = call i64 @msecs_to_jiffies(i32 %15)
  %17 = add nsw i64 %14, %16
  %18 = call i64 @time_before(i64 %11, i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %70

21:                                               ; preds = %10, %1
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %61, %21
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** @state_readers, align 8
  %25 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %24)
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %64

27:                                               ; preds = %22
  %28 = load %struct.acpi_battery*, %struct.acpi_battery** %3, align 8
  %29 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** @state_readers, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @ACPI_SBS_BATTERY, align 4
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** @state_readers, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.acpi_battery*, %struct.acpi_battery** %3, align 8
  %47 = bitcast %struct.acpi_battery* %46 to i32*
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** @state_readers, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %47, i64 %54
  %56 = call i32 @acpi_smbus_read(i32 %32, i32 %38, i32 %39, i32 %45, i32* %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %27
  br label %65

60:                                               ; preds = %27
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %4, align 4
  br label %22

64:                                               ; preds = %22
  br label %65

65:                                               ; preds = %64, %59
  %66 = load i64, i64* @jiffies, align 8
  %67 = load %struct.acpi_battery*, %struct.acpi_battery** %3, align 8
  %68 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  %69 = load i32, i32* %5, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %65, %20
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @acpi_smbus_read(i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
