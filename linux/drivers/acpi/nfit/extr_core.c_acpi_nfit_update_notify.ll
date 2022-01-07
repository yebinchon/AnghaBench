; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/nfit/extr_core.c_acpi_nfit_update_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/nfit/extr_core.c_acpi_nfit_update_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.acpi_nfit_desc = type { i32 }
%struct.acpi_buffer = type { %union.acpi_object*, i32*, i32 }
%union.acpi_object = type { i64 }
%struct.TYPE_2__ = type { i32, i32 }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"no driver found for dev\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@nfit_wq = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"_FIT\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"failed to evaluate _FIT\0A\00", align 1
@ACPI_TYPE_BUFFER = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"failed to merge updated NFIT\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Invalid _FIT\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i32)* @acpi_nfit_update_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_nfit_update_notify(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_nfit_desc*, align 8
  %6 = alloca %struct.acpi_buffer, align 8
  %7 = alloca %union.acpi_object*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = call %struct.acpi_nfit_desc* @dev_get_drvdata(%struct.device* %10)
  store %struct.acpi_nfit_desc* %11, %struct.acpi_nfit_desc** %5, align 8
  %12 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 0
  %13 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to %union.acpi_object*
  store %union.acpi_object* %15, %union.acpi_object** %12, align 8
  %16 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 1
  store i32* null, i32** %16, align 8
  %17 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 2
  store i32 0, i32* %17, align 8
  %18 = load %struct.device*, %struct.device** %3, align 8
  %19 = getelementptr inbounds %struct.device, %struct.device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load %struct.device*, %struct.device** %3, align 8
  %24 = call i32 @dev_dbg(%struct.device* %23, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %83

25:                                               ; preds = %2
  %26 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %5, align 8
  %27 = icmp ne %struct.acpi_nfit_desc* %26, null
  br i1 %27, label %39, label %28

28:                                               ; preds = %25
  %29 = load %struct.device*, %struct.device** %3, align 8
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.acpi_nfit_desc* @devm_kzalloc(%struct.device* %29, i32 4, i32 %30)
  store %struct.acpi_nfit_desc* %31, %struct.acpi_nfit_desc** %5, align 8
  %32 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %5, align 8
  %33 = icmp ne %struct.acpi_nfit_desc* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  br label %83

35:                                               ; preds = %28
  %36 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %5, align 8
  %37 = load %struct.device*, %struct.device** %3, align 8
  %38 = call i32 @acpi_nfit_desc_init(%struct.acpi_nfit_desc* %36, %struct.device* %37)
  br label %42

39:                                               ; preds = %25
  %40 = load i32, i32* @nfit_wq, align 4
  %41 = call i32 @flush_workqueue(i32 %40)
  br label %42

42:                                               ; preds = %39, %35
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @acpi_evaluate_object(i32 %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* null, %struct.acpi_buffer* %6)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i64 @ACPI_FAILURE(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load %struct.device*, %struct.device** %3, align 8
  %50 = call i32 @dev_err(%struct.device* %49, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %83

51:                                               ; preds = %42
  %52 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 0
  %53 = load %union.acpi_object*, %union.acpi_object** %52, align 8
  store %union.acpi_object* %53, %union.acpi_object** %7, align 8
  %54 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %55 = bitcast %union.acpi_object* %54 to i64*
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @ACPI_TYPE_BUFFER, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %76

59:                                               ; preds = %51
  %60 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %5, align 8
  %61 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %62 = bitcast %union.acpi_object* %61 to %struct.TYPE_2__*
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %66 = bitcast %union.acpi_object* %65 to %struct.TYPE_2__*
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @acpi_nfit_init(%struct.acpi_nfit_desc* %60, i32 %64, i32 %68)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %59
  %73 = load %struct.device*, %struct.device** %3, align 8
  %74 = call i32 @dev_err(%struct.device* %73, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %75

75:                                               ; preds = %72, %59
  br label %79

76:                                               ; preds = %51
  %77 = load %struct.device*, %struct.device** %3, align 8
  %78 = call i32 @dev_err(%struct.device* %77, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %79

79:                                               ; preds = %76, %75
  %80 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 0
  %81 = load %union.acpi_object*, %union.acpi_object** %80, align 8
  %82 = call i32 @kfree(%union.acpi_object* %81)
  br label %83

83:                                               ; preds = %79, %48, %34, %22
  ret void
}

declare dso_local %struct.acpi_nfit_desc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local %struct.acpi_nfit_desc* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @acpi_nfit_desc_init(%struct.acpi_nfit_desc*, %struct.device*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @acpi_evaluate_object(i32, i8*, i32*, %struct.acpi_buffer*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @acpi_nfit_init(%struct.acpi_nfit_desc*, i32, i32) #1

declare dso_local i32 @kfree(%union.acpi_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
