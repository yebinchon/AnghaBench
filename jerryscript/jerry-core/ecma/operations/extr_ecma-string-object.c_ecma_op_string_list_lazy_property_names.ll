; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-core/ecma/operations/extr_ecma-string-object.c_ecma_op_string_list_lazy_property_names.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-core/ecma/operations/extr_ecma-string-object.c_ecma_op_string_list_lazy_property_names.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@ECMA_OBJECT_TYPE_CLASS = common dso_local global i64 0, align 8
@LIT_MAGIC_STRING_STRING_UL = common dso_local global i64 0, align 8
@LIT_MAGIC_STRING_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ecma_op_string_list_lazy_property_names(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call i64 @ecma_get_object_type(i32* %16)
  %18 = load i64, i64* @ECMA_OBJECT_TYPE_CLASS, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @JERRY_ASSERT(i32 %20)
  %22 = load i32*, i32** %7, align 8
  store i32* %22, i32** %9, align 8
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32*, i32** %8, align 8
  br label %29

27:                                               ; preds = %4
  %28 = load i32*, i32** %7, align 8
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32* [ %26, %25 ], [ %28, %27 ]
  store i32* %30, i32** %10, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = bitcast i32* %31 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %32, %struct.TYPE_8__** %11, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @LIT_MAGIC_STRING_STRING_UL, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @JERRY_ASSERT(i32 %40)
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32* @ecma_get_string_from_value(i32 %47)
  store i32* %48, i32** %12, align 8
  %49 = load i32*, i32** %12, align 8
  %50 = call i64 @ecma_string_get_length(i32* %49)
  store i64 %50, i64* %13, align 8
  store i64 0, i64* %14, align 8
  br label %51

51:                                               ; preds = %62, %29
  %52 = load i64, i64* %14, align 8
  %53 = load i64, i64* %13, align 8
  %54 = icmp slt i64 %52, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %51
  %56 = load i64, i64* %14, align 8
  %57 = call i32* @ecma_new_ecma_string_from_uint32(i64 %56)
  store i32* %57, i32** %15, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = load i32*, i32** %15, align 8
  %60 = call i32 @ecma_make_string_value(i32* %59)
  %61 = call i32 @ecma_collection_push_back(i32* %58, i32 %60)
  br label %62

62:                                               ; preds = %55
  %63 = load i64, i64* %14, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* %14, align 8
  br label %51

65:                                               ; preds = %51
  %66 = load i32*, i32** %10, align 8
  %67 = load i32, i32* @LIT_MAGIC_STRING_LENGTH, align 4
  %68 = call i32 @ecma_make_magic_string_value(i32 %67)
  %69 = call i32 @ecma_collection_push_back(i32* %66, i32 %68)
  ret void
}

declare dso_local i32 @JERRY_ASSERT(i32) #1

declare dso_local i64 @ecma_get_object_type(i32*) #1

declare dso_local i32* @ecma_get_string_from_value(i32) #1

declare dso_local i64 @ecma_string_get_length(i32*) #1

declare dso_local i32* @ecma_new_ecma_string_from_uint32(i64) #1

declare dso_local i32 @ecma_collection_push_back(i32*, i32) #1

declare dso_local i32 @ecma_make_string_value(i32*) #1

declare dso_local i32 @ecma_make_magic_string_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
