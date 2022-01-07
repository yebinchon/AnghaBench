; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_scan.c_acpi_init_coherency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_scan.c_acpi_init_coherency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { %struct.TYPE_2__, i32, %struct.acpi_device* }
%struct.TYPE_2__ = type { i32, i64 }

@.str = private unnamed_addr constant [5 x i8] c"_CCA\00", align 1
@CONFIG_ACPI_CCA_REQUIRED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"ACPI device is missing _CCA.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_device*)* @acpi_init_coherency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_init_coherency(%struct.acpi_device* %0) #0 {
  %2 = alloca %struct.acpi_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_device*, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %2, align 8
  store i64 0, i64* %3, align 8
  %6 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %7 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %6, i32 0, i32 2
  %8 = load %struct.acpi_device*, %struct.acpi_device** %7, align 8
  store %struct.acpi_device* %8, %struct.acpi_device** %5, align 8
  %9 = load %struct.acpi_device*, %struct.acpi_device** %5, align 8
  %10 = icmp ne %struct.acpi_device* %9, null
  br i1 %10, label %11, label %25

11:                                               ; preds = %1
  %12 = load %struct.acpi_device*, %struct.acpi_device** %5, align 8
  %13 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %11
  %18 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %19 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load %struct.acpi_device*, %struct.acpi_device** %5, align 8
  %22 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %3, align 8
  br label %49

25:                                               ; preds = %11, %1
  %26 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %27 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @acpi_evaluate_integer(i32 %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, i64* %3)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i64 @ACPI_SUCCESS(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %35 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  br label %48

37:                                               ; preds = %25
  %38 = load i32, i32* @CONFIG_ACPI_CCA_REQUIRED, align 4
  %39 = call i32 @IS_ENABLED(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  store i64 1, i64* %3, align 8
  br label %47

42:                                               ; preds = %37
  %43 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %44 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @acpi_handle_debug(i32 %45, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %47

47:                                               ; preds = %42, %41
  br label %48

48:                                               ; preds = %47, %33
  br label %49

49:                                               ; preds = %48, %17
  %50 = load i64, i64* %3, align 8
  %51 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %52 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  store i64 %50, i64* %53, align 8
  ret void
}

declare dso_local i32 @acpi_evaluate_integer(i32, i8*, i32*, i64*) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @acpi_handle_debug(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
