; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_sysfs.c_acpi_table_data_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_sysfs.c_acpi_table_data_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%struct.acpi_table_header*, %struct.acpi_data_attr*)*, i32 }
%struct.acpi_table_header = type { i32 }
%struct.acpi_data_attr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }

@NUM_ACPI_DATA_OBJS = common dso_local global i32 0, align 4
@acpi_data_objs = common dso_local global %struct.TYPE_6__* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@acpi_data_show = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_table_header*)* @acpi_table_data_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_table_data_init(%struct.acpi_table_header* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_table_header*, align 8
  %4 = alloca %struct.acpi_data_attr*, align 8
  %5 = alloca i32, align 4
  store %struct.acpi_table_header* %0, %struct.acpi_table_header** %3, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %53, %1
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @NUM_ACPI_DATA_OBJS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %56

10:                                               ; preds = %6
  %11 = load %struct.acpi_table_header*, %struct.acpi_table_header** %3, align 8
  %12 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** @acpi_data_objs, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @ACPI_COMPARE_NAMESEG(i32 %13, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %52

22:                                               ; preds = %10
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.acpi_data_attr* @kzalloc(i32 8, i32 %23)
  store %struct.acpi_data_attr* %24, %struct.acpi_data_attr** %4, align 8
  %25 = load %struct.acpi_data_attr*, %struct.acpi_data_attr** %4, align 8
  %26 = icmp ne %struct.acpi_data_attr* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %57

30:                                               ; preds = %22
  %31 = load %struct.acpi_data_attr*, %struct.acpi_data_attr** %4, align 8
  %32 = getelementptr inbounds %struct.acpi_data_attr, %struct.acpi_data_attr* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = call i32 @sysfs_attr_init(%struct.TYPE_5__* %33)
  %35 = load i32, i32* @acpi_data_show, align 4
  %36 = load %struct.acpi_data_attr*, %struct.acpi_data_attr** %4, align 8
  %37 = getelementptr inbounds %struct.acpi_data_attr, %struct.acpi_data_attr* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  store i32 %35, i32* %38, align 4
  %39 = load %struct.acpi_data_attr*, %struct.acpi_data_attr** %4, align 8
  %40 = getelementptr inbounds %struct.acpi_data_attr, %struct.acpi_data_attr* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store i32 256, i32* %42, align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** @acpi_data_objs, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32 (%struct.acpi_table_header*, %struct.acpi_data_attr*)*, i32 (%struct.acpi_table_header*, %struct.acpi_data_attr*)** %47, align 8
  %49 = load %struct.acpi_table_header*, %struct.acpi_table_header** %3, align 8
  %50 = load %struct.acpi_data_attr*, %struct.acpi_data_attr** %4, align 8
  %51 = call i32 %48(%struct.acpi_table_header* %49, %struct.acpi_data_attr* %50)
  store i32 %51, i32* %2, align 4
  br label %57

52:                                               ; preds = %10
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %6

56:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %56, %30, %27
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i64 @ACPI_COMPARE_NAMESEG(i32, i32) #1

declare dso_local %struct.acpi_data_attr* @kzalloc(i32, i32) #1

declare dso_local i32 @sysfs_attr_init(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
