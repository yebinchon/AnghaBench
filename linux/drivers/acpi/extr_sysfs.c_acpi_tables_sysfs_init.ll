; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_sysfs.c_acpi_tables_sysfs_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_sysfs.c_acpi_tables_sysfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_table_attr = type { i32 }
%struct.acpi_table_header = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"tables\00", align 1
@acpi_kobj = common dso_local global i32 0, align 4
@tables_kobj = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@tables_data_kobj = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"dynamic\00", align 1
@dynamic_tables_kobj = common dso_local global i32 0, align 4
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@acpi_table_attr_list = common dso_local global i32 0, align 4
@KOBJ_ADD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @acpi_tables_sysfs_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_tables_sysfs_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.acpi_table_attr*, align 8
  %3 = alloca %struct.acpi_table_header*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.acpi_table_header* null, %struct.acpi_table_header** %3, align 8
  %7 = load i32, i32* @acpi_kobj, align 4
  %8 = call i32 @kobject_create_and_add(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %7)
  store i32 %8, i32* @tables_kobj, align 4
  %9 = load i32, i32* @tables_kobj, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %0
  br label %81

12:                                               ; preds = %0
  %13 = load i32, i32* @tables_kobj, align 4
  %14 = call i32 @kobject_create_and_add(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  store i32 %14, i32* @tables_data_kobj, align 4
  %15 = load i32, i32* @tables_data_kobj, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  br label %78

18:                                               ; preds = %12
  %19 = load i32, i32* @tables_kobj, align 4
  %20 = call i32 @kobject_create_and_add(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %19)
  store i32 %20, i32* @dynamic_tables_kobj, align 4
  %21 = load i32, i32* @dynamic_tables_kobj, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  br label %75

24:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %62, %24
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @acpi_get_table_by_index(i32 %26, %struct.acpi_table_header** %3)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @AE_BAD_PARAMETER, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %65

32:                                               ; preds = %25
  %33 = load i32, i32* %5, align 4
  %34 = call i64 @ACPI_FAILURE(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %62

37:                                               ; preds = %32
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.acpi_table_attr* @kzalloc(i32 4, i32 %38)
  store %struct.acpi_table_attr* %39, %struct.acpi_table_attr** %2, align 8
  %40 = load %struct.acpi_table_attr*, %struct.acpi_table_attr** %2, align 8
  %41 = icmp ne %struct.acpi_table_attr* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %1, align 4
  br label %84

45:                                               ; preds = %37
  %46 = load i32, i32* @tables_kobj, align 4
  %47 = load %struct.acpi_table_attr*, %struct.acpi_table_attr** %2, align 8
  %48 = load %struct.acpi_table_header*, %struct.acpi_table_header** %3, align 8
  %49 = call i32 @acpi_table_attr_init(i32 %46, %struct.acpi_table_attr* %47, %struct.acpi_table_header* %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = load %struct.acpi_table_attr*, %struct.acpi_table_attr** %2, align 8
  %54 = call i32 @kfree(%struct.acpi_table_attr* %53)
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %1, align 4
  br label %84

56:                                               ; preds = %45
  %57 = load %struct.acpi_table_attr*, %struct.acpi_table_attr** %2, align 8
  %58 = getelementptr inbounds %struct.acpi_table_attr, %struct.acpi_table_attr* %57, i32 0, i32 0
  %59 = call i32 @list_add_tail(i32* %58, i32* @acpi_table_attr_list)
  %60 = load %struct.acpi_table_header*, %struct.acpi_table_header** %3, align 8
  %61 = call i32 @acpi_table_data_init(%struct.acpi_table_header* %60)
  br label %62

62:                                               ; preds = %56, %36
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %4, align 4
  br label %25

65:                                               ; preds = %31
  %66 = load i32, i32* @tables_kobj, align 4
  %67 = load i32, i32* @KOBJ_ADD, align 4
  %68 = call i32 @kobject_uevent(i32 %66, i32 %67)
  %69 = load i32, i32* @tables_data_kobj, align 4
  %70 = load i32, i32* @KOBJ_ADD, align 4
  %71 = call i32 @kobject_uevent(i32 %69, i32 %70)
  %72 = load i32, i32* @dynamic_tables_kobj, align 4
  %73 = load i32, i32* @KOBJ_ADD, align 4
  %74 = call i32 @kobject_uevent(i32 %72, i32 %73)
  store i32 0, i32* %1, align 4
  br label %84

75:                                               ; preds = %23
  %76 = load i32, i32* @tables_data_kobj, align 4
  %77 = call i32 @kobject_put(i32 %76)
  br label %78

78:                                               ; preds = %75, %17
  %79 = load i32, i32* @tables_kobj, align 4
  %80 = call i32 @kobject_put(i32 %79)
  br label %81

81:                                               ; preds = %78, %11
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %1, align 4
  br label %84

84:                                               ; preds = %81, %65, %52, %42
  %85 = load i32, i32* %1, align 4
  ret i32 %85
}

declare dso_local i32 @kobject_create_and_add(i8*, i32) #1

declare dso_local i32 @acpi_get_table_by_index(i32, %struct.acpi_table_header**) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local %struct.acpi_table_attr* @kzalloc(i32, i32) #1

declare dso_local i32 @acpi_table_attr_init(i32, %struct.acpi_table_attr*, %struct.acpi_table_header*) #1

declare dso_local i32 @kfree(%struct.acpi_table_attr*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @acpi_table_data_init(%struct.acpi_table_header*) #1

declare dso_local i32 @kobject_uevent(i32, i32) #1

declare dso_local i32 @kobject_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
