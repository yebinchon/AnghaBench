; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_processor_throttling.c_acpi_processor_get_throttling_ptc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_processor_throttling.c_acpi_processor_get_throttling_ptc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_processor = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Invalid throttling state, reset\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_processor*)* @acpi_processor_get_throttling_ptc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_processor_get_throttling_ptc(%struct.acpi_processor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_processor*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.acpi_processor* %0, %struct.acpi_processor** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %8 = icmp ne %struct.acpi_processor* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %52

12:                                               ; preds = %1
  %13 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %14 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %52

21:                                               ; preds = %12
  %22 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %23 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32 0, i32* %24, align 4
  store i64 0, i64* %6, align 8
  %25 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %26 = call i32 @acpi_read_throttling_status(%struct.acpi_processor* %25, i64* %6)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %51

29:                                               ; preds = %21
  %30 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @acpi_get_throttling_state(%struct.acpi_processor* %30, i64 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %46

35:                                               ; preds = %29
  %36 = load i32, i32* @ACPI_DB_INFO, align 4
  %37 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([33 x i8]* @.str to i32))
  store i32 0, i32* %4, align 4
  %38 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @__acpi_processor_set_throttling(%struct.acpi_processor* %38, i32 %39, i32 1, i32 1)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %2, align 4
  br label %52

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %45, %29
  %47 = load i32, i32* %4, align 4
  %48 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %49 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 4
  br label %51

51:                                               ; preds = %46, %21
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %43, %18, %9
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @acpi_read_throttling_status(%struct.acpi_processor*, i64*) #1

declare dso_local i32 @acpi_get_throttling_state(%struct.acpi_processor*, i64) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @__acpi_processor_set_throttling(%struct.acpi_processor*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
