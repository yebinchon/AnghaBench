; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_ec.c_acpi_ec_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_ec.c_acpi_ec_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_ec = type { i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"Stopping EC\00", align 1
@EC_FLAGS_STOPPED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Decrease driver\00", align 1
@ec_freeze_events = common dso_local global i32 0, align 4
@EC_FLAGS_STARTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"EC stopped\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_ec*, i32)* @acpi_ec_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_ec_stop(%struct.acpi_ec* %0, i32 %1) #0 {
  %3 = alloca %struct.acpi_ec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.acpi_ec* %0, %struct.acpi_ec** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.acpi_ec*, %struct.acpi_ec** %3, align 8
  %7 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %6, i32 0, i32 0
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.acpi_ec*, %struct.acpi_ec** %3, align 8
  %11 = call i64 @acpi_ec_started(%struct.acpi_ec* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %57

13:                                               ; preds = %2
  %14 = call i32 @ec_dbg_drv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @EC_FLAGS_STOPPED, align 4
  %16 = load %struct.acpi_ec*, %struct.acpi_ec** %3, align 8
  %17 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %16, i32 0, i32 1
  %18 = call i32 @set_bit(i32 %15, i32* %17)
  %19 = load %struct.acpi_ec*, %struct.acpi_ec** %3, align 8
  %20 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %19, i32 0, i32 0
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @spin_unlock_irqrestore(i32* %20, i64 %21)
  %23 = load %struct.acpi_ec*, %struct.acpi_ec** %3, align 8
  %24 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.acpi_ec*, %struct.acpi_ec** %3, align 8
  %27 = call i32 @acpi_ec_stopped(%struct.acpi_ec* %26)
  %28 = call i32 @wait_event(i32 %25, i32 %27)
  %29 = load %struct.acpi_ec*, %struct.acpi_ec** %3, align 8
  %30 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %29, i32 0, i32 0
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %13
  %36 = load %struct.acpi_ec*, %struct.acpi_ec** %3, align 8
  %37 = call i32 @acpi_ec_complete_request(%struct.acpi_ec* %36)
  %38 = load %struct.acpi_ec*, %struct.acpi_ec** %3, align 8
  %39 = call i32 @ec_dbg_ref(%struct.acpi_ec* %38, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %47

40:                                               ; preds = %13
  %41 = load i32, i32* @ec_freeze_events, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load %struct.acpi_ec*, %struct.acpi_ec** %3, align 8
  %45 = call i32 @__acpi_ec_disable_event(%struct.acpi_ec* %44)
  br label %46

46:                                               ; preds = %43, %40
  br label %47

47:                                               ; preds = %46, %35
  %48 = load i32, i32* @EC_FLAGS_STARTED, align 4
  %49 = load %struct.acpi_ec*, %struct.acpi_ec** %3, align 8
  %50 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %49, i32 0, i32 1
  %51 = call i32 @clear_bit(i32 %48, i32* %50)
  %52 = load i32, i32* @EC_FLAGS_STOPPED, align 4
  %53 = load %struct.acpi_ec*, %struct.acpi_ec** %3, align 8
  %54 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %53, i32 0, i32 1
  %55 = call i32 @clear_bit(i32 %52, i32* %54)
  %56 = call i32 @ec_log_drv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %57

57:                                               ; preds = %47, %2
  %58 = load %struct.acpi_ec*, %struct.acpi_ec** %3, align 8
  %59 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %58, i32 0, i32 0
  %60 = load i64, i64* %5, align 8
  %61 = call i32 @spin_unlock_irqrestore(i32* %59, i64 %60)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @acpi_ec_started(%struct.acpi_ec*) #1

declare dso_local i32 @ec_dbg_drv(i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @acpi_ec_stopped(%struct.acpi_ec*) #1

declare dso_local i32 @acpi_ec_complete_request(%struct.acpi_ec*) #1

declare dso_local i32 @ec_dbg_ref(%struct.acpi_ec*, i8*) #1

declare dso_local i32 @__acpi_ec_disable_event(%struct.acpi_ec*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @ec_log_drv(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
