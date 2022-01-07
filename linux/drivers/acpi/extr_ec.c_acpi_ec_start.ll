; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_ec.c_acpi_ec_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_ec.c_acpi_ec_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_ec = type { i32, i32 }

@EC_FLAGS_STARTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Starting EC\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Increase driver\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"EC started\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_ec*, i32)* @acpi_ec_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_ec_start(%struct.acpi_ec* %0, i32 %1) #0 {
  %3 = alloca %struct.acpi_ec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.acpi_ec* %0, %struct.acpi_ec** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.acpi_ec*, %struct.acpi_ec** %3, align 8
  %7 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %6, i32 0, i32 0
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load i32, i32* @EC_FLAGS_STARTED, align 4
  %11 = load %struct.acpi_ec*, %struct.acpi_ec** %3, align 8
  %12 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %11, i32 0, i32 1
  %13 = call i32 @test_and_set_bit(i32 %10, i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %2
  %16 = call i32 @ec_dbg_drv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = load %struct.acpi_ec*, %struct.acpi_ec** %3, align 8
  %21 = call i32 @acpi_ec_submit_request(%struct.acpi_ec* %20)
  %22 = load %struct.acpi_ec*, %struct.acpi_ec** %3, align 8
  %23 = call i32 @ec_dbg_ref(%struct.acpi_ec* %22, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %19, %15
  %25 = call i32 @ec_log_drv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %2
  %27 = load %struct.acpi_ec*, %struct.acpi_ec** %3, align 8
  %28 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %27, i32 0, i32 0
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @ec_dbg_drv(i8*) #1

declare dso_local i32 @acpi_ec_submit_request(%struct.acpi_ec*) #1

declare dso_local i32 @ec_dbg_ref(%struct.acpi_ec*, i8*) #1

declare dso_local i32 @ec_log_drv(i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
