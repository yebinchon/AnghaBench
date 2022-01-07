; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_tad.c_acpi_tad_set_real_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_tad.c_acpi_tad_set_real_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.acpi_tad_rt = type { i32, i32, i32, i32, i32, i32, i32 }
%union.acpi_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32* }
%struct.acpi_object_list = type { i32, %union.acpi_object* }

@ACPI_TYPE_BUFFER = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"_SRT\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.acpi_tad_rt*)* @acpi_tad_set_real_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_tad_set_real_time(%struct.device* %0, %struct.acpi_tad_rt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.acpi_tad_rt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [1 x %union.acpi_object], align 16
  %8 = alloca %struct.acpi_object_list, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.acpi_tad_rt* %1, %struct.acpi_tad_rt** %5, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call i32 @ACPI_HANDLE(%struct.device* %11)
  store i32 %12, i32* %6, align 4
  %13 = getelementptr inbounds [1 x %union.acpi_object], [1 x %union.acpi_object]* %7, i64 0, i64 0
  %14 = bitcast %union.acpi_object* %13 to i32*
  %15 = load i32, i32* @ACPI_TYPE_BUFFER, align 4
  store i32 %15, i32* %14, align 16
  %16 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %8, i32 0, i32 0
  %17 = getelementptr inbounds [1 x %union.acpi_object], [1 x %union.acpi_object]* %7, i64 0, i64 0
  %18 = call i32 @ARRAY_SIZE(%union.acpi_object* %17)
  store i32 %18, i32* %16, align 8
  %19 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %8, i32 0, i32 1
  %20 = getelementptr inbounds [1 x %union.acpi_object], [1 x %union.acpi_object]* %7, i64 0, i64 0
  store %union.acpi_object* %20, %union.acpi_object** %19, align 8
  %21 = load %struct.acpi_tad_rt*, %struct.acpi_tad_rt** %5, align 8
  %22 = getelementptr inbounds %struct.acpi_tad_rt, %struct.acpi_tad_rt* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %23, 1900
  br i1 %24, label %75, label %25

25:                                               ; preds = %2
  %26 = load %struct.acpi_tad_rt*, %struct.acpi_tad_rt** %5, align 8
  %27 = getelementptr inbounds %struct.acpi_tad_rt, %struct.acpi_tad_rt* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp sgt i32 %28, 9999
  br i1 %29, label %75, label %30

30:                                               ; preds = %25
  %31 = load %struct.acpi_tad_rt*, %struct.acpi_tad_rt** %5, align 8
  %32 = getelementptr inbounds %struct.acpi_tad_rt, %struct.acpi_tad_rt* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %33, 1
  br i1 %34, label %75, label %35

35:                                               ; preds = %30
  %36 = load %struct.acpi_tad_rt*, %struct.acpi_tad_rt** %5, align 8
  %37 = getelementptr inbounds %struct.acpi_tad_rt, %struct.acpi_tad_rt* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp sgt i32 %38, 12
  br i1 %39, label %75, label %40

40:                                               ; preds = %35
  %41 = load %struct.acpi_tad_rt*, %struct.acpi_tad_rt** %5, align 8
  %42 = getelementptr inbounds %struct.acpi_tad_rt, %struct.acpi_tad_rt* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = icmp sgt i32 %43, 23
  br i1 %44, label %75, label %45

45:                                               ; preds = %40
  %46 = load %struct.acpi_tad_rt*, %struct.acpi_tad_rt** %5, align 8
  %47 = getelementptr inbounds %struct.acpi_tad_rt, %struct.acpi_tad_rt* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = icmp sgt i32 %48, 59
  br i1 %49, label %75, label %50

50:                                               ; preds = %45
  %51 = load %struct.acpi_tad_rt*, %struct.acpi_tad_rt** %5, align 8
  %52 = getelementptr inbounds %struct.acpi_tad_rt, %struct.acpi_tad_rt* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = icmp sgt i32 %53, 59
  br i1 %54, label %75, label %55

55:                                               ; preds = %50
  %56 = load %struct.acpi_tad_rt*, %struct.acpi_tad_rt** %5, align 8
  %57 = getelementptr inbounds %struct.acpi_tad_rt, %struct.acpi_tad_rt* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %58, -1440
  br i1 %59, label %75, label %60

60:                                               ; preds = %55
  %61 = load %struct.acpi_tad_rt*, %struct.acpi_tad_rt** %5, align 8
  %62 = getelementptr inbounds %struct.acpi_tad_rt, %struct.acpi_tad_rt* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = icmp sgt i32 %63, 1440
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load %struct.acpi_tad_rt*, %struct.acpi_tad_rt** %5, align 8
  %67 = getelementptr inbounds %struct.acpi_tad_rt, %struct.acpi_tad_rt* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 2047
  br i1 %69, label %75, label %70

70:                                               ; preds = %65, %60
  %71 = load %struct.acpi_tad_rt*, %struct.acpi_tad_rt** %5, align 8
  %72 = getelementptr inbounds %struct.acpi_tad_rt, %struct.acpi_tad_rt* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 4
  %74 = icmp sgt i32 %73, 3
  br i1 %74, label %75, label %78

75:                                               ; preds = %70, %65, %55, %50, %45, %40, %35, %30, %25, %2
  %76 = load i32, i32* @ERANGE, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %103

78:                                               ; preds = %70
  %79 = load %struct.acpi_tad_rt*, %struct.acpi_tad_rt** %5, align 8
  %80 = bitcast %struct.acpi_tad_rt* %79 to i32*
  %81 = getelementptr inbounds [1 x %union.acpi_object], [1 x %union.acpi_object]* %7, i64 0, i64 0
  %82 = bitcast %union.acpi_object* %81 to %struct.TYPE_2__*
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  store i32* %80, i32** %83, align 8
  %84 = getelementptr inbounds [1 x %union.acpi_object], [1 x %union.acpi_object]* %7, i64 0, i64 0
  %85 = bitcast %union.acpi_object* %84 to %struct.TYPE_2__*
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  store i32 28, i32* %86, align 16
  %87 = load %struct.device*, %struct.device** %4, align 8
  %88 = call i32 @pm_runtime_get_sync(%struct.device* %87)
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @acpi_evaluate_integer(i32 %89, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.acpi_object_list* %8, i64* %9)
  store i32 %90, i32* %10, align 4
  %91 = load %struct.device*, %struct.device** %4, align 8
  %92 = call i32 @pm_runtime_put_sync(%struct.device* %91)
  %93 = load i32, i32* %10, align 4
  %94 = call i64 @ACPI_FAILURE(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %78
  %97 = load i64, i64* %9, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %96, %78
  %100 = load i32, i32* @EIO, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %3, align 4
  br label %103

102:                                              ; preds = %96
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %102, %99, %75
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @ACPI_HANDLE(%struct.device*) #1

declare dso_local i32 @ARRAY_SIZE(%union.acpi_object*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @acpi_evaluate_integer(i32, i8*, %struct.acpi_object_list*, i64*) #1

declare dso_local i32 @pm_runtime_put_sync(%struct.device*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
