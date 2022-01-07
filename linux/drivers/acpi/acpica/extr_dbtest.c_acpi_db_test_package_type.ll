; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbtest.c_acpi_db_test_package_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbtest.c_acpi_db_test_package_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_namespace_node = type { i32 }
%union.acpi_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ACPI_TYPE_PACKAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c" %.2X Elements\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_namespace_node*)* @acpi_db_test_package_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_db_test_package_type(%struct.acpi_namespace_node* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_namespace_node*, align 8
  %4 = alloca %union.acpi_object*, align 8
  %5 = alloca i32, align 4
  store %struct.acpi_namespace_node* %0, %struct.acpi_namespace_node** %3, align 8
  store %union.acpi_object* null, %union.acpi_object** %4, align 8
  %6 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %3, align 8
  %7 = load i32, i32* @ACPI_TYPE_PACKAGE, align 4
  %8 = call i32 @acpi_db_read_from_object(%struct.acpi_namespace_node* %6, i32 %7, %union.acpi_object** %4)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i64 @ACPI_FAILURE(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %23

14:                                               ; preds = %1
  %15 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  %16 = bitcast %union.acpi_object* %15 to %struct.TYPE_2__*
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @acpi_os_printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  %21 = call i32 @acpi_os_free(%union.acpi_object* %20)
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %14, %12
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @acpi_db_read_from_object(%struct.acpi_namespace_node*, i32, %union.acpi_object**) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_os_printf(i8*, i32) #1

declare dso_local i32 @acpi_os_free(%union.acpi_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
