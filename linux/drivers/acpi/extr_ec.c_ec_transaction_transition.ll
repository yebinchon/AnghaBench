; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_ec.c_ec_transaction_transition.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_ec.c_ec_transaction_transition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_ec = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@ACPI_EC_COMMAND_QUERY = common dso_local global i64 0, align 8
@ec_event_clearing = common dso_local global i64 0, align 8
@ACPI_EC_EVT_TIMING_STATUS = common dso_local global i64 0, align 8
@ACPI_EC_COMMAND_POLL = common dso_local global i64 0, align 8
@ACPI_EC_EVT_TIMING_QUERY = common dso_local global i64 0, align 8
@ACPI_EC_COMMAND_COMPLETE = common dso_local global i64 0, align 8
@ACPI_EC_EVT_TIMING_EVENT = common dso_local global i64 0, align 8
@EC_FLAGS_QUERY_GUARDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_ec*, i64)* @ec_transaction_transition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ec_transaction_transition(%struct.acpi_ec* %0, i64 %1) #0 {
  %3 = alloca %struct.acpi_ec*, align 8
  %4 = alloca i64, align 8
  store %struct.acpi_ec* %0, %struct.acpi_ec** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.acpi_ec*, %struct.acpi_ec** %3, align 8
  %7 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = or i64 %10, %5
  store i64 %11, i64* %9, align 8
  %12 = load %struct.acpi_ec*, %struct.acpi_ec** %3, align 8
  %13 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ACPI_EC_COMMAND_QUERY, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %55

19:                                               ; preds = %2
  %20 = load i64, i64* @ec_event_clearing, align 8
  %21 = load i64, i64* @ACPI_EC_EVT_TIMING_STATUS, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* @ACPI_EC_COMMAND_POLL, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load %struct.acpi_ec*, %struct.acpi_ec** %3, align 8
  %29 = call i32 @acpi_ec_complete_query(%struct.acpi_ec* %28)
  br label %30

30:                                               ; preds = %27, %23, %19
  %31 = load i64, i64* @ec_event_clearing, align 8
  %32 = load i64, i64* @ACPI_EC_EVT_TIMING_QUERY, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load i64, i64* %4, align 8
  %36 = load i64, i64* @ACPI_EC_COMMAND_COMPLETE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load %struct.acpi_ec*, %struct.acpi_ec** %3, align 8
  %40 = call i32 @acpi_ec_complete_query(%struct.acpi_ec* %39)
  br label %41

41:                                               ; preds = %38, %34, %30
  %42 = load i64, i64* @ec_event_clearing, align 8
  %43 = load i64, i64* @ACPI_EC_EVT_TIMING_EVENT, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %41
  %46 = load i64, i64* %4, align 8
  %47 = load i64, i64* @ACPI_EC_COMMAND_COMPLETE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load i32, i32* @EC_FLAGS_QUERY_GUARDING, align 4
  %51 = load %struct.acpi_ec*, %struct.acpi_ec** %3, align 8
  %52 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %51, i32 0, i32 0
  %53 = call i32 @set_bit(i32 %50, i32* %52)
  br label %54

54:                                               ; preds = %49, %45, %41
  br label %55

55:                                               ; preds = %54, %2
  ret void
}

declare dso_local i32 @acpi_ec_complete_query(%struct.acpi_ec*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
