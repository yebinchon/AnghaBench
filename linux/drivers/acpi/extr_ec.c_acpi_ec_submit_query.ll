; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_ec.c_acpi_ec_submit_query.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_ec.c_acpi_ec_submit_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_ec = type { i32, i32, i32 }

@EC_FLAGS_QUERY_PENDING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Command(%s) submitted/blocked\00", align 1
@ACPI_EC_COMMAND_QUERY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_ec*)* @acpi_ec_submit_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_ec_submit_query(%struct.acpi_ec* %0) #0 {
  %2 = alloca %struct.acpi_ec*, align 8
  store %struct.acpi_ec* %0, %struct.acpi_ec** %2, align 8
  %3 = load %struct.acpi_ec*, %struct.acpi_ec** %2, align 8
  %4 = call i32 @acpi_ec_mask_gpe(%struct.acpi_ec* %3)
  %5 = load %struct.acpi_ec*, %struct.acpi_ec** %2, align 8
  %6 = call i32 @acpi_ec_event_enabled(%struct.acpi_ec* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %26

9:                                                ; preds = %1
  %10 = load i32, i32* @EC_FLAGS_QUERY_PENDING, align 4
  %11 = load %struct.acpi_ec*, %struct.acpi_ec** %2, align 8
  %12 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %11, i32 0, i32 2
  %13 = call i32 @test_and_set_bit(i32 %10, i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %9
  %16 = load i32, i32* @ACPI_EC_COMMAND_QUERY, align 4
  %17 = call i32 @acpi_ec_cmd_string(i32 %16)
  %18 = call i32 @ec_dbg_evt(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.acpi_ec*, %struct.acpi_ec** %2, align 8
  %20 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  %23 = load %struct.acpi_ec*, %struct.acpi_ec** %2, align 8
  %24 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %23, i32 0, i32 0
  %25 = call i32 @schedule_work(i32* %24)
  br label %26

26:                                               ; preds = %8, %15, %9
  ret void
}

declare dso_local i32 @acpi_ec_mask_gpe(%struct.acpi_ec*) #1

declare dso_local i32 @acpi_ec_event_enabled(%struct.acpi_ec*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @ec_dbg_evt(i8*, i32) #1

declare dso_local i32 @acpi_ec_cmd_string(i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
