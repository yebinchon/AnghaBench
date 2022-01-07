; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_lpat.c_acpi_lpat_get_conversion_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_lpat.c_acpi_lpat_get_conversion_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_lpat_conversion_table = type { i32, %struct.acpi_lpat* }
%struct.acpi_lpat = type { i32 }
%struct.acpi_buffer = type { i32*, i32*, i32 }
%union.acpi_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %union.acpi_object* }
%struct.TYPE_3__ = type { i64 }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"LPAT\00", align 1
@ACPI_TYPE_PACKAGE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.acpi_lpat_conversion_table* @acpi_lpat_get_conversion_table(i32 %0) #0 {
  %2 = alloca %struct.acpi_lpat_conversion_table*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_lpat_conversion_table*, align 8
  %5 = alloca %struct.acpi_buffer, align 8
  %6 = alloca %union.acpi_object*, align 8
  %7 = alloca %union.acpi_object*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.acpi_lpat_conversion_table* null, %struct.acpi_lpat_conversion_table** %4, align 8
  %11 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %5, i32 0, i32 0
  %12 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %13 = sext i32 %12 to i64
  %14 = inttoptr i64 %13 to i32*
  store i32* %14, i32** %11, align 8
  %15 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %5, i32 0, i32 1
  store i32* null, i32** %15, align 8
  %16 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %5, i32 0, i32 2
  store i32 0, i32* %16, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @acpi_evaluate_object(i32 %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, %struct.acpi_buffer* %5)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = call i64 @ACPI_FAILURE(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  store %struct.acpi_lpat_conversion_table* null, %struct.acpi_lpat_conversion_table** %2, align 8
  br label %121

23:                                               ; preds = %1
  %24 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %5, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = bitcast i32* %25 to %union.acpi_object*
  store %union.acpi_object* %26, %union.acpi_object** %6, align 8
  %27 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %28 = icmp ne %union.acpi_object* %27, null
  br i1 %28, label %29, label %48

29:                                               ; preds = %23
  %30 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %31 = bitcast %union.acpi_object* %30 to i64*
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ACPI_TYPE_PACKAGE, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %48, label %35

35:                                               ; preds = %29
  %36 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %37 = bitcast %union.acpi_object* %36 to %struct.TYPE_4__*
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = srem i32 %39, 2
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %35
  %43 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %44 = bitcast %union.acpi_object* %43 to %struct.TYPE_4__*
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %46, 4
  br i1 %47, label %48, label %49

48:                                               ; preds = %42, %35, %29, %23
  br label %116

49:                                               ; preds = %42
  %50 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %51 = bitcast %union.acpi_object* %50 to %struct.TYPE_4__*
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call i32* @kcalloc(i32 %53, i32 4, i32 %54)
  store i32* %55, i32** %8, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %49
  br label %116

59:                                               ; preds = %49
  store i32 0, i32* %9, align 4
  br label %60

60:                                               ; preds = %93, %59
  %61 = load i32, i32* %9, align 4
  %62 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %63 = bitcast %union.acpi_object* %62 to %struct.TYPE_4__*
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %61, %65
  br i1 %66, label %67, label %96

67:                                               ; preds = %60
  %68 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %69 = bitcast %union.acpi_object* %68 to %struct.TYPE_4__*
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load %union.acpi_object*, %union.acpi_object** %70, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %71, i64 %73
  store %union.acpi_object* %74, %union.acpi_object** %7, align 8
  %75 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %76 = bitcast %union.acpi_object* %75 to i64*
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %67
  %81 = load i32*, i32** %8, align 8
  %82 = call i32 @kfree(i32* %81)
  br label %116

83:                                               ; preds = %67
  %84 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %85 = bitcast %union.acpi_object* %84 to %struct.TYPE_3__*
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = trunc i64 %87 to i32
  %89 = load i32*, i32** %8, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  store i32 %88, i32* %92, align 4
  br label %93

93:                                               ; preds = %83
  %94 = load i32, i32* %9, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %9, align 4
  br label %60

96:                                               ; preds = %60
  %97 = load i32, i32* @GFP_KERNEL, align 4
  %98 = call %struct.acpi_lpat_conversion_table* @kzalloc(i32 16, i32 %97)
  store %struct.acpi_lpat_conversion_table* %98, %struct.acpi_lpat_conversion_table** %4, align 8
  %99 = load %struct.acpi_lpat_conversion_table*, %struct.acpi_lpat_conversion_table** %4, align 8
  %100 = icmp ne %struct.acpi_lpat_conversion_table* %99, null
  br i1 %100, label %104, label %101

101:                                              ; preds = %96
  %102 = load i32*, i32** %8, align 8
  %103 = call i32 @kfree(i32* %102)
  br label %116

104:                                              ; preds = %96
  %105 = load i32*, i32** %8, align 8
  %106 = bitcast i32* %105 to %struct.acpi_lpat*
  %107 = load %struct.acpi_lpat_conversion_table*, %struct.acpi_lpat_conversion_table** %4, align 8
  %108 = getelementptr inbounds %struct.acpi_lpat_conversion_table, %struct.acpi_lpat_conversion_table* %107, i32 0, i32 1
  store %struct.acpi_lpat* %106, %struct.acpi_lpat** %108, align 8
  %109 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %110 = bitcast %union.acpi_object* %109 to %struct.TYPE_4__*
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = sdiv i32 %112, 2
  %114 = load %struct.acpi_lpat_conversion_table*, %struct.acpi_lpat_conversion_table** %4, align 8
  %115 = getelementptr inbounds %struct.acpi_lpat_conversion_table, %struct.acpi_lpat_conversion_table* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  br label %116

116:                                              ; preds = %104, %101, %80, %58, %48
  %117 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %5, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = call i32 @kfree(i32* %118)
  %120 = load %struct.acpi_lpat_conversion_table*, %struct.acpi_lpat_conversion_table** %4, align 8
  store %struct.acpi_lpat_conversion_table* %120, %struct.acpi_lpat_conversion_table** %2, align 8
  br label %121

121:                                              ; preds = %116, %22
  %122 = load %struct.acpi_lpat_conversion_table*, %struct.acpi_lpat_conversion_table** %2, align 8
  ret %struct.acpi_lpat_conversion_table* %122
}

declare dso_local i32 @acpi_evaluate_object(i32, i8*, i32*, %struct.acpi_buffer*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local %struct.acpi_lpat_conversion_table* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
