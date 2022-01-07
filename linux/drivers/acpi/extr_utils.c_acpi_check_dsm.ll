; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_utils.c_acpi_check_dsm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_utils.c_acpi_check_dsm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64* }
%struct.TYPE_3__ = type { i32 }

@ACPI_TYPE_INTEGER = common dso_local global i64 0, align 8
@ACPI_TYPE_BUFFER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_check_dsm(i32 %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %union.acpi_object*, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %88

16:                                               ; preds = %4
  %17 = load i32, i32* %6, align 4
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call %union.acpi_object* @acpi_evaluate_dsm(i32 %17, i32* %18, i32 %19, i32 0, i32* null)
  store %union.acpi_object* %20, %union.acpi_object** %12, align 8
  %21 = load %union.acpi_object*, %union.acpi_object** %12, align 8
  %22 = icmp ne %union.acpi_object* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %88

24:                                               ; preds = %16
  %25 = load %union.acpi_object*, %union.acpi_object** %12, align 8
  %26 = bitcast %union.acpi_object* %25 to i64*
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load %union.acpi_object*, %union.acpi_object** %12, align 8
  %32 = bitcast %union.acpi_object* %31 to %struct.TYPE_3__*
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %11, align 4
  br label %74

35:                                               ; preds = %24
  %36 = load %union.acpi_object*, %union.acpi_object** %12, align 8
  %37 = bitcast %union.acpi_object* %36 to i64*
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ACPI_TYPE_BUFFER, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %73

41:                                               ; preds = %35
  store i32 0, i32* %10, align 4
  br label %42

42:                                               ; preds = %69, %41
  %43 = load i32, i32* %10, align 4
  %44 = load %union.acpi_object*, %union.acpi_object** %12, align 8
  %45 = bitcast %union.acpi_object* %44 to %struct.TYPE_4__*
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %43, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load i32, i32* %10, align 4
  %51 = icmp slt i32 %50, 8
  br label %52

52:                                               ; preds = %49, %42
  %53 = phi i1 [ false, %42 ], [ %51, %49 ]
  br i1 %53, label %54, label %72

54:                                               ; preds = %52
  %55 = load %union.acpi_object*, %union.acpi_object** %12, align 8
  %56 = bitcast %union.acpi_object* %55 to %struct.TYPE_4__*
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i64*, i64** %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  %64 = load i32, i32* %10, align 4
  %65 = mul nsw i32 %64, 8
  %66 = shl i32 %63, %65
  %67 = load i32, i32* %11, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %11, align 4
  br label %69

69:                                               ; preds = %54
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %10, align 4
  br label %42

72:                                               ; preds = %52
  br label %73

73:                                               ; preds = %72, %35
  br label %74

74:                                               ; preds = %73, %30
  %75 = load %union.acpi_object*, %union.acpi_object** %12, align 8
  %76 = call i32 @ACPI_FREE(%union.acpi_object* %75)
  %77 = load i32, i32* %11, align 4
  %78 = and i32 %77, 1
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %74
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %9, align 4
  %83 = and i32 %81, %82
  %84 = load i32, i32* %9, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  store i32 1, i32* %5, align 4
  br label %88

87:                                               ; preds = %80, %74
  store i32 0, i32* %5, align 4
  br label %88

88:                                               ; preds = %87, %86, %23, %15
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local %union.acpi_object* @acpi_evaluate_dsm(i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @ACPI_FREE(%union.acpi_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
