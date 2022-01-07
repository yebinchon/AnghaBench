; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_ec.c_acpi_ec_check_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_ec.c_acpi_ec_check_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_ec = type { i32, i32 }

@ec_event_clearing = common dso_local global i64 0, align 8
@ACPI_EC_EVT_TIMING_EVENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_ec*)* @acpi_ec_check_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_ec_check_event(%struct.acpi_ec* %0) #0 {
  %2 = alloca %struct.acpi_ec*, align 8
  %3 = alloca i64, align 8
  store %struct.acpi_ec* %0, %struct.acpi_ec** %2, align 8
  %4 = load i64, i64* @ec_event_clearing, align 8
  %5 = load i64, i64* @ACPI_EC_EVT_TIMING_EVENT, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %29

7:                                                ; preds = %1
  %8 = load %struct.acpi_ec*, %struct.acpi_ec** %2, align 8
  %9 = call i64 @ec_guard(%struct.acpi_ec* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %7
  %12 = load %struct.acpi_ec*, %struct.acpi_ec** %2, align 8
  %13 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %12, i32 0, i32 0
  %14 = load i64, i64* %3, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.acpi_ec*, %struct.acpi_ec** %2, align 8
  %17 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %11
  %21 = load %struct.acpi_ec*, %struct.acpi_ec** %2, align 8
  %22 = call i32 @advance_transaction(%struct.acpi_ec* %21)
  br label %23

23:                                               ; preds = %20, %11
  %24 = load %struct.acpi_ec*, %struct.acpi_ec** %2, align 8
  %25 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %24, i32 0, i32 0
  %26 = load i64, i64* %3, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* %25, i64 %26)
  br label %28

28:                                               ; preds = %23, %7
  br label %29

29:                                               ; preds = %28, %1
  ret void
}

declare dso_local i64 @ec_guard(%struct.acpi_ec*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @advance_transaction(%struct.acpi_ec*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
