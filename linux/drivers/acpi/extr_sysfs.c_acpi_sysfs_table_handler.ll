; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_sysfs.c_acpi_sysfs_table_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_sysfs.c_acpi_sysfs_table_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_table_attr = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@dynamic_tables_kobj = common dso_local global i32 0, align 4
@AE_ERROR = common dso_local global i32 0, align 4
@acpi_table_attr_list = common dso_local global i32 0, align 4
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_sysfs_table_handler(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.acpi_table_attr*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %32 [
    i32 131, label %10
    i32 130, label %31
    i32 128, label %31
    i32 129, label %31
  ]

10:                                               ; preds = %3
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.acpi_table_attr* @kzalloc(i32 4, i32 %11)
  store %struct.acpi_table_attr* %12, %struct.acpi_table_attr** %8, align 8
  %13 = load %struct.acpi_table_attr*, %struct.acpi_table_attr** %8, align 8
  %14 = icmp ne %struct.acpi_table_attr* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  %16 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %16, i32* %4, align 4
  br label %36

17:                                               ; preds = %10
  %18 = load i32, i32* @dynamic_tables_kobj, align 4
  %19 = load %struct.acpi_table_attr*, %struct.acpi_table_attr** %8, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @acpi_table_attr_init(i32 %18, %struct.acpi_table_attr* %19, i8* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load %struct.acpi_table_attr*, %struct.acpi_table_attr** %8, align 8
  %25 = call i32 @kfree(%struct.acpi_table_attr* %24)
  %26 = load i32, i32* @AE_ERROR, align 4
  store i32 %26, i32* %4, align 4
  br label %36

27:                                               ; preds = %17
  %28 = load %struct.acpi_table_attr*, %struct.acpi_table_attr** %8, align 8
  %29 = getelementptr inbounds %struct.acpi_table_attr, %struct.acpi_table_attr* %28, i32 0, i32 0
  %30 = call i32 @list_add_tail(i32* %29, i32* @acpi_table_attr_list)
  br label %34

31:                                               ; preds = %3, %3, %3
  br label %34

32:                                               ; preds = %3
  %33 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %33, i32* %4, align 4
  br label %36

34:                                               ; preds = %31, %27
  %35 = load i32, i32* @AE_OK, align 4
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %34, %32, %23, %15
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local %struct.acpi_table_attr* @kzalloc(i32, i32) #1

declare dso_local i32 @acpi_table_attr_init(i32, %struct.acpi_table_attr*, i8*) #1

declare dso_local i32 @kfree(%struct.acpi_table_attr*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
