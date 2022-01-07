; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_configfs.c_acpi_table_aml_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_configfs.c_acpi_table_aml_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.acpi_table_header = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, i8*, i64)* @acpi_table_aml_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_table_aml_read(%struct.config_item* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.config_item*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.acpi_table_header*, align 8
  store %struct.config_item* %0, %struct.config_item** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.config_item*, %struct.config_item** %5, align 8
  %10 = call %struct.acpi_table_header* @get_header(%struct.config_item* %9)
  store %struct.acpi_table_header* %10, %struct.acpi_table_header** %8, align 8
  %11 = load %struct.acpi_table_header*, %struct.acpi_table_header** %8, align 8
  %12 = icmp ne %struct.acpi_table_header* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %30

16:                                               ; preds = %3
  %17 = load i8*, i8** %6, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = load i8*, i8** %6, align 8
  %21 = load %struct.acpi_table_header*, %struct.acpi_table_header** %8, align 8
  %22 = load %struct.acpi_table_header*, %struct.acpi_table_header** %8, align 8
  %23 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @memcpy(i8* %20, %struct.acpi_table_header* %21, i32 %24)
  br label %26

26:                                               ; preds = %19, %16
  %27 = load %struct.acpi_table_header*, %struct.acpi_table_header** %8, align 8
  %28 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %26, %13
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local %struct.acpi_table_header* @get_header(%struct.config_item*) #1

declare dso_local i32 @memcpy(i8*, %struct.acpi_table_header*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
