; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbconvert.c_acpi_db_convert_to_object.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbconvert.c_acpi_db_convert_to_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i32 }
%struct.TYPE_3__ = type { i32 }

@AE_OK = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_db_convert_to_object(i32 %0, i8* %1, %union.acpi_object* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %union.acpi_object*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store %union.acpi_object* %2, %union.acpi_object** %6, align 8
  %8 = load i32, i32* @AE_OK, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %30 [
    i32 128, label %10
    i32 130, label %22
    i32 129, label %26
  ]

10:                                               ; preds = %3
  %11 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %12 = bitcast %union.acpi_object* %11 to i32*
  store i32 128, i32* %12, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %15 = bitcast %union.acpi_object* %14 to %struct.TYPE_4__*
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i8* %13, i8** %16, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @strlen(i8* %17)
  %19 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %20 = bitcast %union.acpi_object* %19 to %struct.TYPE_4__*
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  store i32 %18, i32* %21, align 8
  br label %39

22:                                               ; preds = %3
  %23 = load i8*, i8** %5, align 8
  %24 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %25 = call i32 @acpi_db_convert_to_buffer(i8* %23, %union.acpi_object* %24)
  store i32 %25, i32* %7, align 4
  br label %39

26:                                               ; preds = %3
  %27 = load i8*, i8** %5, align 8
  %28 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %29 = call i32 @acpi_db_convert_to_package(i8* %27, %union.acpi_object* %28)
  store i32 %29, i32* %7, align 4
  br label %39

30:                                               ; preds = %3
  %31 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  %32 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %33 = bitcast %union.acpi_object* %32 to i32*
  store i32 %31, i32* %33, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %36 = bitcast %union.acpi_object* %35 to %struct.TYPE_3__*
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = call i32 @acpi_ut_strtoul64(i8* %34, i32* %37)
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %30, %26, %22, %10
  %40 = load i32, i32* %7, align 4
  ret i32 %40
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @acpi_db_convert_to_buffer(i8*, %union.acpi_object*) #1

declare dso_local i32 @acpi_db_convert_to_package(i8*, %union.acpi_object*) #1

declare dso_local i32 @acpi_ut_strtoul64(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
