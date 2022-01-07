; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_sysfs.c_acpi_bert_data_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_sysfs.c_acpi_bert_data_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_data_attr = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }
%struct.acpi_table_bert = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"BERT\00", align 1
@tables_data_kobj = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.acpi_data_attr*)* @acpi_bert_data_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_bert_data_init(i8* %0, %struct.acpi_data_attr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.acpi_data_attr*, align 8
  %6 = alloca %struct.acpi_table_bert*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.acpi_data_attr* %1, %struct.acpi_data_attr** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.acpi_table_bert*
  store %struct.acpi_table_bert* %8, %struct.acpi_table_bert** %6, align 8
  %9 = load %struct.acpi_table_bert*, %struct.acpi_table_bert** %6, align 8
  %10 = getelementptr inbounds %struct.acpi_table_bert, %struct.acpi_table_bert* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = icmp ult i64 %13, 12
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load %struct.acpi_table_bert*, %struct.acpi_table_bert** %6, align 8
  %17 = getelementptr inbounds %struct.acpi_table_bert, %struct.acpi_table_bert* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = icmp ult i64 %19, 4
  br i1 %20, label %21, label %26

21:                                               ; preds = %15, %2
  %22 = load %struct.acpi_data_attr*, %struct.acpi_data_attr** %5, align 8
  %23 = call i32 @kfree(%struct.acpi_data_attr* %22)
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %46

26:                                               ; preds = %15
  %27 = load %struct.acpi_table_bert*, %struct.acpi_table_bert** %6, align 8
  %28 = getelementptr inbounds %struct.acpi_table_bert, %struct.acpi_table_bert* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.acpi_data_attr*, %struct.acpi_data_attr** %5, align 8
  %31 = getelementptr inbounds %struct.acpi_data_attr, %struct.acpi_data_attr* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = load %struct.acpi_table_bert*, %struct.acpi_table_bert** %6, align 8
  %33 = getelementptr inbounds %struct.acpi_table_bert, %struct.acpi_table_bert* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.acpi_data_attr*, %struct.acpi_data_attr** %5, align 8
  %36 = getelementptr inbounds %struct.acpi_data_attr, %struct.acpi_data_attr* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  %38 = load %struct.acpi_data_attr*, %struct.acpi_data_attr** %5, align 8
  %39 = getelementptr inbounds %struct.acpi_data_attr, %struct.acpi_data_attr* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %41, align 8
  %42 = load i32, i32* @tables_data_kobj, align 4
  %43 = load %struct.acpi_data_attr*, %struct.acpi_data_attr** %5, align 8
  %44 = getelementptr inbounds %struct.acpi_data_attr, %struct.acpi_data_attr* %43, i32 0, i32 0
  %45 = call i32 @sysfs_create_bin_file(i32 %42, %struct.TYPE_6__* %44)
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %26, %21
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @kfree(%struct.acpi_data_attr*) #1

declare dso_local i32 @sysfs_create_bin_file(i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
