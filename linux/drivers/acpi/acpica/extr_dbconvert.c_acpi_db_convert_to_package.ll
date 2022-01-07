; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbconvert.c_acpi_db_convert_to_package.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbconvert.c_acpi_db_convert_to_package.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %union.acpi_object* }

@DB_DEFAULT_PKG_ELEMENTS = common dso_local global i32 0, align 4
@ACPI_TYPE_PACKAGE = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_db_convert_to_package(i8* %0, %union.acpi_object* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %union.acpi_object*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %union.acpi_object*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %union.acpi_object* %1, %union.acpi_object** %5, align 8
  %12 = load i32, i32* @DB_DEFAULT_PKG_ELEMENTS, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 16
  %15 = trunc i64 %14 to i32
  %16 = call %union.acpi_object* @ACPI_ALLOCATE_ZEROED(i32 %15)
  store %union.acpi_object* %16, %union.acpi_object** %10, align 8
  %17 = load i8*, i8** %4, align 8
  store i8* %17, i8** %6, align 8
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %50, %2
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @DB_DEFAULT_PKG_ELEMENTS, align 4
  %21 = sub nsw i32 %20, 1
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %53

23:                                               ; preds = %18
  %24 = load i8*, i8** %6, align 8
  %25 = call i8* @acpi_db_get_next_token(i8* %24, i8** %7, i32* %9)
  store i8* %25, i8** %6, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  br label %53

29:                                               ; preds = %23
  %30 = load i32, i32* %9, align 4
  %31 = load i8*, i8** %6, align 8
  %32 = load %union.acpi_object*, %union.acpi_object** %10, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %32, i64 %34
  %36 = call i32 @acpi_db_convert_to_object(i32 %30, i8* %31, %union.acpi_object* %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = call i64 @ACPI_FAILURE(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %29
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 1
  %43 = load %union.acpi_object*, %union.acpi_object** %10, align 8
  %44 = call i32 @acpi_db_delete_objects(i32 %42, %union.acpi_object* %43)
  %45 = load %union.acpi_object*, %union.acpi_object** %10, align 8
  %46 = call i32 @ACPI_FREE(%union.acpi_object* %45)
  %47 = load i32, i32* %11, align 4
  store i32 %47, i32* %3, align 4
  br label %66

48:                                               ; preds = %29
  %49 = load i8*, i8** %7, align 8
  store i8* %49, i8** %6, align 8
  br label %50

50:                                               ; preds = %48
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %18

53:                                               ; preds = %28, %18
  %54 = load i32, i32* @ACPI_TYPE_PACKAGE, align 4
  %55 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %56 = bitcast %union.acpi_object* %55 to i32*
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %59 = bitcast %union.acpi_object* %58 to %struct.TYPE_2__*
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 8
  %61 = load %union.acpi_object*, %union.acpi_object** %10, align 8
  %62 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %63 = bitcast %union.acpi_object* %62 to %struct.TYPE_2__*
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  store %union.acpi_object* %61, %union.acpi_object** %64, align 8
  %65 = load i32, i32* @AE_OK, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %53, %40
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %union.acpi_object* @ACPI_ALLOCATE_ZEROED(i32) #1

declare dso_local i8* @acpi_db_get_next_token(i8*, i8**, i32*) #1

declare dso_local i32 @acpi_db_convert_to_object(i32, i8*, %union.acpi_object*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_db_delete_objects(i32, %union.acpi_object*) #1

declare dso_local i32 @ACPI_FREE(%union.acpi_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
