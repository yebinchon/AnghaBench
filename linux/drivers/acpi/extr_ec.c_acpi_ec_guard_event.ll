; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_ec.c_acpi_ec_guard_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_ec.c_acpi_ec_guard_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_ec = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@ec_event_clearing = common dso_local global i64 0, align 8
@ACPI_EC_EVT_TIMING_STATUS = common dso_local global i64 0, align 8
@ACPI_EC_EVT_TIMING_QUERY = common dso_local global i64 0, align 8
@EC_FLAGS_QUERY_PENDING = common dso_local global i32 0, align 4
@ACPI_EC_COMMAND_QUERY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_ec*)* @acpi_ec_guard_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_ec_guard_event(%struct.acpi_ec* %0) #0 {
  %2 = alloca %struct.acpi_ec*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.acpi_ec* %0, %struct.acpi_ec** %2, align 8
  store i32 1, i32* %3, align 4
  %5 = load %struct.acpi_ec*, %struct.acpi_ec** %2, align 8
  %6 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %5, i32 0, i32 0
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load i64, i64* @ec_event_clearing, align 8
  %10 = load i64, i64* @ACPI_EC_EVT_TIMING_STATUS, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %35, label %12

12:                                               ; preds = %1
  %13 = load i64, i64* @ec_event_clearing, align 8
  %14 = load i64, i64* @ACPI_EC_EVT_TIMING_QUERY, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %35, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* @EC_FLAGS_QUERY_PENDING, align 4
  %18 = load %struct.acpi_ec*, %struct.acpi_ec** %2, align 8
  %19 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %18, i32 0, i32 2
  %20 = call i32 @test_bit(i32 %17, i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %16
  %23 = load %struct.acpi_ec*, %struct.acpi_ec** %2, align 8
  %24 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = icmp ne %struct.TYPE_2__* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = load %struct.acpi_ec*, %struct.acpi_ec** %2, align 8
  %29 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ACPI_EC_COMMAND_QUERY, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %27, %16, %12, %1
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %27, %22
  %37 = load %struct.acpi_ec*, %struct.acpi_ec** %2, align 8
  %38 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %37, i32 0, i32 0
  %39 = load i64, i64* %4, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* %38, i64 %39)
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
