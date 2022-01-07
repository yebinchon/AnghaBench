; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_adxl.c_adxl_decode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_adxl.c_adxl_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_object = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %union.acpi_object* }
%struct.TYPE_4__ = type { i32, i32 }

@adxl_component_names = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ACPI_TYPE_PACKAGE = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i32 0, align 4
@ADXL_IDX_FORWARD_TRANSLATE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@adxl_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adxl_decode(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca [2 x %union.acpi_object], align 16
  %7 = alloca %union.acpi_object*, align 8
  %8 = alloca %union.acpi_object*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %11 = load i32, i32* @adxl_component_names, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @EOPNOTSUPP, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %88

16:                                               ; preds = %2
  %17 = load i32, i32* @ACPI_TYPE_PACKAGE, align 4
  %18 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %6, i64 0, i64 0
  %19 = bitcast %union.acpi_object* %18 to i32*
  store i32 %17, i32* %19, align 16
  %20 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %6, i64 0, i64 0
  %21 = bitcast %union.acpi_object* %20 to %struct.TYPE_3__*
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i32 1, i32* %22, align 16
  %23 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %6, i64 0, i64 1
  %24 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %6, i64 0, i64 0
  %25 = bitcast %union.acpi_object* %24 to %struct.TYPE_3__*
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  store %union.acpi_object* %23, %union.acpi_object** %26, align 8
  %27 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  %28 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %6, i64 0, i64 1
  %29 = bitcast %union.acpi_object* %28 to %struct.TYPE_4__*
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* %4, align 4
  %32 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %6, i64 0, i64 1
  %33 = bitcast %union.acpi_object* %32 to %struct.TYPE_4__*
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 16
  %35 = load i32, i32* @ADXL_IDX_FORWARD_TRANSLATE, align 4
  %36 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %6, i64 0, i64 0
  %37 = call %union.acpi_object* @adxl_dsm(i32 %35, %union.acpi_object* %36)
  store %union.acpi_object* %37, %union.acpi_object** %7, align 8
  %38 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %39 = icmp ne %union.acpi_object* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %16
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %88

43:                                               ; preds = %16
  %44 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %45 = bitcast %union.acpi_object* %44 to %struct.TYPE_3__*
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load %union.acpi_object*, %union.acpi_object** %46, align 8
  %48 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %47, i64 1
  store %union.acpi_object* %48, %union.acpi_object** %8, align 8
  %49 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %50 = bitcast %union.acpi_object* %49 to %struct.TYPE_3__*
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @adxl_count, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %43
  %57 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %58 = call i32 @ACPI_FREE(%union.acpi_object* %57)
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %88

61:                                               ; preds = %43
  %62 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %63 = bitcast %union.acpi_object* %62 to %struct.TYPE_3__*
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load %union.acpi_object*, %union.acpi_object** %64, align 8
  store %union.acpi_object* %65, %union.acpi_object** %8, align 8
  store i32 0, i32* %9, align 4
  br label %66

66:                                               ; preds = %82, %61
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %85

70:                                               ; preds = %66
  %71 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %71, i64 %73
  %75 = bitcast %union.acpi_object* %74 to %struct.TYPE_4__*
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32*, i32** %5, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 %77, i32* %81, align 4
  br label %82

82:                                               ; preds = %70
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %9, align 4
  br label %66

85:                                               ; preds = %66
  %86 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %87 = call i32 @ACPI_FREE(%union.acpi_object* %86)
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %85, %56, %40, %13
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local %union.acpi_object* @adxl_dsm(i32, %union.acpi_object*) #1

declare dso_local i32 @ACPI_FREE(%union.acpi_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
