; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_utils.c_acpi_get_physical_device_location.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_utils.c_acpi_get_physical_device_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_pld_info = type { i32 }
%struct.acpi_buffer = type { %union.acpi_object*, i32*, i32 }
%union.acpi_object = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"_PLD\00", align 1
@ACPI_TYPE_PACKAGE = common dso_local global i64 0, align 8
@ACPI_TYPE_BUFFER = common dso_local global i64 0, align 8
@ACPI_PLD_REV1_BUFFER_SIZE = common dso_local global i64 0, align 8
@AE_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_get_physical_device_location(i32 %0, %struct.acpi_pld_info** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_pld_info**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.acpi_buffer, align 8
  %8 = alloca %union.acpi_object*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.acpi_pld_info** %1, %struct.acpi_pld_info*** %5, align 8
  %9 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %7, i32 0, i32 0
  %10 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %11 = sext i32 %10 to i64
  %12 = inttoptr i64 %11 to %union.acpi_object*
  store %union.acpi_object* %12, %union.acpi_object** %9, align 8
  %13 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %7, i32 0, i32 1
  store i32* null, i32** %13, align 8
  %14 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %7, i32 0, i32 2
  store i32 0, i32* %14, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @acpi_evaluate_object(i32 %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, %struct.acpi_buffer* %7)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i64 @ACPI_FAILURE(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %86

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %7, i32 0, i32 0
  %24 = load %union.acpi_object*, %union.acpi_object** %23, align 8
  store %union.acpi_object* %24, %union.acpi_object** %8, align 8
  %25 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %26 = icmp ne %union.acpi_object* %25, null
  br i1 %26, label %27, label %60

27:                                               ; preds = %22
  %28 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %29 = bitcast %union.acpi_object* %28 to i64*
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @ACPI_TYPE_PACKAGE, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %60, label %33

33:                                               ; preds = %27
  %34 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %35 = bitcast %union.acpi_object* %34 to %struct.TYPE_6__*
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %60

39:                                               ; preds = %33
  %40 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %41 = bitcast %union.acpi_object* %40 to %struct.TYPE_6__*
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @ACPI_TYPE_BUFFER, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %60, label %49

49:                                               ; preds = %39
  %50 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %51 = bitcast %union.acpi_object* %50 to %struct.TYPE_6__*
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i64 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @ACPI_PLD_REV1_BUFFER_SIZE, align 8
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %49, %39, %33, %27, %22
  %61 = load i32, i32* @AE_TYPE, align 4
  store i32 %61, i32* %6, align 4
  br label %81

62:                                               ; preds = %49
  %63 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %64 = bitcast %union.acpi_object* %63 to %struct.TYPE_6__*
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i64 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %72 = bitcast %union.acpi_object* %71 to %struct.TYPE_6__*
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i64 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.acpi_pld_info**, %struct.acpi_pld_info*** %5, align 8
  %80 = call i32 @acpi_decode_pld_buffer(i32 %70, i64 %78, %struct.acpi_pld_info** %79)
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %62, %60
  %82 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %7, i32 0, i32 0
  %83 = load %union.acpi_object*, %union.acpi_object** %82, align 8
  %84 = call i32 @kfree(%union.acpi_object* %83)
  %85 = load i32, i32* %6, align 4
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %81, %20
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @acpi_evaluate_object(i32, i8*, i32*, %struct.acpi_buffer*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_decode_pld_buffer(i32, i64, %struct.acpi_pld_info**) #1

declare dso_local i32 @kfree(%union.acpi_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
