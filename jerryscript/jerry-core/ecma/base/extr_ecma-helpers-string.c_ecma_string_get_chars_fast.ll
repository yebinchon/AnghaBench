; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-core/ecma/base/extr_ecma-helpers-string.c_ecma_string_get_chars_fast.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-core/ecma/base/extr_ecma-helpers-string.c_ecma_string_get_chars_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i32 }

@ECMA_DIRECT_STRING_MAGIC = common dso_local global i64 0, align 8
@LIT_MAGIC_STRING__COUNT = common dso_local global i64 0, align 8
@ECMA_STRING_REF_ONE = common dso_local global i64 0, align 8
@ECMA_STRING_CONTAINER_MAGIC_STRING_EX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_16__*, i32*)* @ecma_string_get_chars_fast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ecma_string_get_chars_fast(%struct.TYPE_16__* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %9 = call i64 @ECMA_IS_DIRECT_STRING(%struct.TYPE_16__* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %39

11:                                               ; preds = %2
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %13 = call i64 @ECMA_GET_DIRECT_STRING_TYPE(%struct.TYPE_16__* %12)
  %14 = load i64, i64* @ECMA_DIRECT_STRING_MAGIC, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %38

16:                                               ; preds = %11
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %18 = call i32 @ECMA_GET_DIRECT_STRING_VALUE(%struct.TYPE_16__* %17)
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @LIT_MAGIC_STRING__COUNT, align 8
  %22 = icmp sge i64 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %16
  %24 = load i64, i64* @LIT_MAGIC_STRING__COUNT, align 8
  %25 = load i64, i64* %6, align 8
  %26 = sub nsw i64 %25, %24
  store i64 %26, i64* %6, align 8
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @lit_get_magic_string_ex_size(i64 %27)
  %29 = load i32*, i32** %5, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i64, i64* %6, align 8
  %31 = call i32* @lit_get_magic_string_ex_utf8(i64 %30)
  store i32* %31, i32** %3, align 8
  br label %91

32:                                               ; preds = %16
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @lit_get_magic_string_size(i64 %33)
  %35 = load i32*, i32** %5, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i64, i64* %6, align 8
  %37 = call i32* @lit_get_magic_string_utf8(i64 %36)
  store i32* %37, i32** %3, align 8
  br label %91

38:                                               ; preds = %11
  br label %39

39:                                               ; preds = %38, %2
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @ECMA_STRING_REF_ONE, align 8
  %44 = icmp sge i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @JERRY_ASSERT(i32 %45)
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %48 = call i32 @ECMA_STRING_GET_CONTAINER(%struct.TYPE_16__* %47)
  switch i32 %48, label %73 [
    i32 128, label %49
    i32 129, label %57
    i32 130, label %65
  ]

49:                                               ; preds = %39
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %51 = bitcast %struct.TYPE_16__* %50 to %struct.TYPE_15__*
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %5, align 8
  store i32 %53, i32* %54, align 4
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %56 = call i32* @ECMA_UTF8_STRING_GET_BUFFER(%struct.TYPE_16__* %55)
  store i32* %56, i32** %3, align 8
  br label %91

57:                                               ; preds = %39
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %59 = bitcast %struct.TYPE_16__* %58 to %struct.TYPE_17__*
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %5, align 8
  store i32 %61, i32* %62, align 4
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %64 = call i32* @ECMA_LONG_UTF8_STRING_GET_BUFFER(%struct.TYPE_16__* %63)
  store i32* %64, i32** %3, align 8
  br label %91

65:                                               ; preds = %39
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %67 = bitcast %struct.TYPE_16__* %66 to %struct.TYPE_18__*
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %5, align 8
  store i32 %69, i32* %70, align 4
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %72 = call i32* @ECMA_ASCII_STRING_GET_BUFFER(%struct.TYPE_16__* %71)
  store i32* %72, i32** %3, align 8
  br label %91

73:                                               ; preds = %39
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %75 = call i32 @ECMA_STRING_GET_CONTAINER(%struct.TYPE_16__* %74)
  %76 = load i32, i32* @ECMA_STRING_CONTAINER_MAGIC_STRING_EX, align 4
  %77 = icmp eq i32 %75, %76
  %78 = zext i1 %77 to i32
  %79 = call i32 @JERRY_ASSERT(i32 %78)
  %80 = load i64, i64* @LIT_MAGIC_STRING__COUNT, align 8
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = sub nsw i64 %80, %84
  store i64 %85, i64* %7, align 8
  %86 = load i64, i64* %7, align 8
  %87 = call i32 @lit_get_magic_string_ex_size(i64 %86)
  %88 = load i32*, i32** %5, align 8
  store i32 %87, i32* %88, align 4
  %89 = load i64, i64* %7, align 8
  %90 = call i32* @lit_get_magic_string_ex_utf8(i64 %89)
  store i32* %90, i32** %3, align 8
  br label %91

91:                                               ; preds = %73, %65, %57, %49, %32, %23
  %92 = load i32*, i32** %3, align 8
  ret i32* %92
}

declare dso_local i64 @ECMA_IS_DIRECT_STRING(%struct.TYPE_16__*) #1

declare dso_local i64 @ECMA_GET_DIRECT_STRING_TYPE(%struct.TYPE_16__*) #1

declare dso_local i32 @ECMA_GET_DIRECT_STRING_VALUE(%struct.TYPE_16__*) #1

declare dso_local i32 @lit_get_magic_string_ex_size(i64) #1

declare dso_local i32* @lit_get_magic_string_ex_utf8(i64) #1

declare dso_local i32 @lit_get_magic_string_size(i64) #1

declare dso_local i32* @lit_get_magic_string_utf8(i64) #1

declare dso_local i32 @JERRY_ASSERT(i32) #1

declare dso_local i32 @ECMA_STRING_GET_CONTAINER(%struct.TYPE_16__*) #1

declare dso_local i32* @ECMA_UTF8_STRING_GET_BUFFER(%struct.TYPE_16__*) #1

declare dso_local i32* @ECMA_LONG_UTF8_STRING_GET_BUFFER(%struct.TYPE_16__*) #1

declare dso_local i32* @ECMA_ASCII_STRING_GET_BUFFER(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
