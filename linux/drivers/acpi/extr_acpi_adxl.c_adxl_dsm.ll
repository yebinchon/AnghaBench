; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_adxl.c_adxl_dsm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_adxl.c_adxl_dsm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %union.acpi_object* }
%struct.TYPE_3__ = type { i32 }

@handle = common dso_local global i32 0, align 4
@adxl_guid = common dso_local global i32 0, align 4
@ADXL_REVISION = common dso_local global i32 0, align 4
@ACPI_TYPE_PACKAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"DSM call failed for cmd=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Bad pkg count %d\0A\00", align 1
@ACPI_TYPE_INTEGER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Bad 1st element type %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Bad ret val %llu\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Bad 2nd element type %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%union.acpi_object* (i32, %union.acpi_object*)* @adxl_dsm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %union.acpi_object* @adxl_dsm(i32 %0, %union.acpi_object* %1) #0 {
  %3 = alloca %union.acpi_object*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.acpi_object*, align 8
  %6 = alloca %union.acpi_object*, align 8
  %7 = alloca %union.acpi_object*, align 8
  store i32 %0, i32* %4, align 4
  store %union.acpi_object* %1, %union.acpi_object** %5, align 8
  %8 = load i32, i32* @handle, align 4
  %9 = load i32, i32* @ADXL_REVISION, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %12 = load i32, i32* @ACPI_TYPE_PACKAGE, align 4
  %13 = call %union.acpi_object* @acpi_evaluate_dsm_typed(i32 %8, i32* @adxl_guid, i32 %9, i32 %10, %union.acpi_object* %11, i32 %12)
  store %union.acpi_object* %13, %union.acpi_object** %6, align 8
  %14 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %15 = icmp ne %union.acpi_object* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @pr_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %17)
  store %union.acpi_object* null, %union.acpi_object** %3, align 8
  br label %79

19:                                               ; preds = %2
  %20 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %21 = bitcast %union.acpi_object* %20 to %struct.TYPE_4__*
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 2
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %27 = bitcast %union.acpi_object* %26 to %struct.TYPE_4__*
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @pr_info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  br label %76

31:                                               ; preds = %19
  %32 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %33 = bitcast %union.acpi_object* %32 to %struct.TYPE_4__*
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load %union.acpi_object*, %union.acpi_object** %34, align 8
  store %union.acpi_object* %35, %union.acpi_object** %7, align 8
  %36 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %37 = bitcast %union.acpi_object* %36 to i32*
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %31
  %42 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %43 = bitcast %union.acpi_object* %42 to i32*
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  br label %76

46:                                               ; preds = %31
  %47 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %48 = bitcast %union.acpi_object* %47 to %struct.TYPE_3__*
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  %53 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %54 = bitcast %union.acpi_object* %53 to %struct.TYPE_3__*
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @pr_info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  br label %76

58:                                               ; preds = %46
  %59 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %60 = bitcast %union.acpi_object* %59 to %struct.TYPE_4__*
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load %union.acpi_object*, %union.acpi_object** %61, align 8
  %63 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %62, i64 1
  store %union.acpi_object* %63, %union.acpi_object** %7, align 8
  %64 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %65 = bitcast %union.acpi_object* %64 to i32*
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @ACPI_TYPE_PACKAGE, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %58
  %70 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %71 = bitcast %union.acpi_object* %70 to i32*
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %72)
  br label %76

74:                                               ; preds = %58
  %75 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  store %union.acpi_object* %75, %union.acpi_object** %3, align 8
  br label %79

76:                                               ; preds = %69, %52, %41, %25
  %77 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %78 = call i32 @ACPI_FREE(%union.acpi_object* %77)
  store %union.acpi_object* null, %union.acpi_object** %3, align 8
  br label %79

79:                                               ; preds = %76, %74, %16
  %80 = load %union.acpi_object*, %union.acpi_object** %3, align 8
  ret %union.acpi_object* %80
}

declare dso_local %union.acpi_object* @acpi_evaluate_dsm_typed(i32, i32*, i32, i32, %union.acpi_object*, i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @ACPI_FREE(%union.acpi_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
