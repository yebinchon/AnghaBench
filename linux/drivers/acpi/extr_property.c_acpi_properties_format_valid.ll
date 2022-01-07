; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_property.c_acpi_properties_format_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_property.c_acpi_properties_format_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %union.acpi_object* }

@ACPI_TYPE_STRING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.acpi_object*)* @acpi_properties_format_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_properties_format_valid(%union.acpi_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.acpi_object*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.acpi_object*, align 8
  store %union.acpi_object* %0, %union.acpi_object** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %46, %1
  %7 = load i32, i32* %4, align 4
  %8 = load %union.acpi_object*, %union.acpi_object** %3, align 8
  %9 = bitcast %union.acpi_object* %8 to %struct.TYPE_2__*
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %7, %11
  br i1 %12, label %13, label %49

13:                                               ; preds = %6
  %14 = load %union.acpi_object*, %union.acpi_object** %3, align 8
  %15 = bitcast %union.acpi_object* %14 to %struct.TYPE_2__*
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load %union.acpi_object*, %union.acpi_object** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %17, i64 %19
  store %union.acpi_object* %20, %union.acpi_object** %5, align 8
  %21 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %22 = bitcast %union.acpi_object* %21 to %struct.TYPE_2__*
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 2
  br i1 %25, label %44, label %26

26:                                               ; preds = %13
  %27 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %28 = bitcast %union.acpi_object* %27 to %struct.TYPE_2__*
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load %union.acpi_object*, %union.acpi_object** %29, align 8
  %31 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %30, i64 0
  %32 = bitcast %union.acpi_object* %31 to i64*
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ACPI_TYPE_STRING, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %44, label %36

36:                                               ; preds = %26
  %37 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %38 = bitcast %union.acpi_object* %37 to %struct.TYPE_2__*
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load %union.acpi_object*, %union.acpi_object** %39, align 8
  %41 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %40, i64 1
  %42 = call i32 @acpi_property_value_ok(%union.acpi_object* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %36, %26, %13
  store i32 0, i32* %2, align 4
  br label %50

45:                                               ; preds = %36
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %4, align 4
  br label %6

49:                                               ; preds = %6
  store i32 1, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %44
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @acpi_property_value_ok(%union.acpi_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
