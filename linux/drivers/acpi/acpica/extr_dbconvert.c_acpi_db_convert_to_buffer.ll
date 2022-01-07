; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbconvert.c_acpi_db_convert_to_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbconvert.c_acpi_db_convert_to_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32* }

@AE_NO_MEMORY = common dso_local global i32 0, align 4
@ACPI_TYPE_BUFFER = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %union.acpi_object*)* @acpi_db_convert_to_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_db_convert_to_buffer(i8* %0, %union.acpi_object* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %union.acpi_object*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %union.acpi_object* %1, %union.acpi_object** %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %8, align 8
  br label %11

11:                                               ; preds = %50, %2
  %12 = load i8*, i8** %4, align 8
  %13 = load i64, i64* %6, align 8
  %14 = getelementptr inbounds i8, i8* %12, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = icmp ne i8 %15, 0
  br i1 %16, label %17, label %51

17:                                               ; preds = %11
  %18 = load i64, i64* %6, align 8
  %19 = add i64 %18, 2
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %8, align 8
  %21 = add i64 %20, 1
  store i64 %21, i64* %8, align 8
  br label %22

22:                                               ; preds = %47, %17
  %23 = load i8*, i8** %4, align 8
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %22
  %30 = load i8*, i8** %4, align 8
  %31 = load i64, i64* %6, align 8
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 44
  br i1 %35, label %43, label %36

36:                                               ; preds = %29
  %37 = load i8*, i8** %4, align 8
  %38 = load i64, i64* %6, align 8
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 32
  br label %43

43:                                               ; preds = %36, %29
  %44 = phi i1 [ true, %29 ], [ %42, %36 ]
  br label %45

45:                                               ; preds = %43, %22
  %46 = phi i1 [ false, %22 ], [ %44, %43 ]
  br i1 %46, label %47, label %50

47:                                               ; preds = %45
  %48 = load i64, i64* %6, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %6, align 8
  br label %22

50:                                               ; preds = %45
  br label %11

51:                                               ; preds = %11
  %52 = load i64, i64* %8, align 8
  %53 = call i32* @ACPI_ALLOCATE(i64 %52)
  store i32* %53, i32** %9, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %57, i32* %3, align 4
  br label %127

58:                                               ; preds = %51
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %59

59:                                               ; preds = %113, %58
  %60 = load i8*, i8** %4, align 8
  %61 = load i64, i64* %6, align 8
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = icmp ne i8 %63, 0
  br i1 %64, label %65, label %114

65:                                               ; preds = %59
  %66 = load i8*, i8** %4, align 8
  %67 = load i64, i64* %6, align 8
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  %69 = load i32*, i32** %9, align 8
  %70 = load i64, i64* %7, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = call i32 @acpi_db_hex_byte_to_binary(i8* %68, i32* %71)
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = call i64 @ACPI_FAILURE(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %65
  %77 = load i32*, i32** %9, align 8
  %78 = call i32 @ACPI_FREE(i32* %77)
  %79 = load i32, i32* %10, align 4
  store i32 %79, i32* %3, align 4
  br label %127

80:                                               ; preds = %65
  %81 = load i64, i64* %7, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %7, align 8
  %83 = load i64, i64* %6, align 8
  %84 = add i64 %83, 2
  store i64 %84, i64* %6, align 8
  br label %85

85:                                               ; preds = %110, %80
  %86 = load i8*, i8** %4, align 8
  %87 = load i64, i64* %6, align 8
  %88 = getelementptr inbounds i8, i8* %86, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %108

92:                                               ; preds = %85
  %93 = load i8*, i8** %4, align 8
  %94 = load i64, i64* %6, align 8
  %95 = getelementptr inbounds i8, i8* %93, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 44
  br i1 %98, label %106, label %99

99:                                               ; preds = %92
  %100 = load i8*, i8** %4, align 8
  %101 = load i64, i64* %6, align 8
  %102 = getelementptr inbounds i8, i8* %100, i64 %101
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %104, 32
  br label %106

106:                                              ; preds = %99, %92
  %107 = phi i1 [ true, %92 ], [ %105, %99 ]
  br label %108

108:                                              ; preds = %106, %85
  %109 = phi i1 [ false, %85 ], [ %107, %106 ]
  br i1 %109, label %110, label %113

110:                                              ; preds = %108
  %111 = load i64, i64* %6, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %6, align 8
  br label %85

113:                                              ; preds = %108
  br label %59

114:                                              ; preds = %59
  %115 = load i32, i32* @ACPI_TYPE_BUFFER, align 4
  %116 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %117 = bitcast %union.acpi_object* %116 to i32*
  store i32 %115, i32* %117, align 8
  %118 = load i32*, i32** %9, align 8
  %119 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %120 = bitcast %union.acpi_object* %119 to %struct.TYPE_2__*
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 1
  store i32* %118, i32** %121, align 8
  %122 = load i64, i64* %8, align 8
  %123 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %124 = bitcast %union.acpi_object* %123 to %struct.TYPE_2__*
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  store i64 %122, i64* %125, align 8
  %126 = load i32, i32* @AE_OK, align 4
  store i32 %126, i32* %3, align 4
  br label %127

127:                                              ; preds = %114, %76, %56
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local i32* @ACPI_ALLOCATE(i64) #1

declare dso_local i32 @acpi_db_hex_byte_to_binary(i8*, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_FREE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
