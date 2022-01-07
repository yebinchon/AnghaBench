; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-core/ecma/builtin-objects/extr_ecma-builtin-object.c_ecma_builtin_object_object_freeze.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-core/ecma/builtin-objects/extr_ecma-builtin-object.c_ecma_builtin_object_object_freeze.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32* }
%struct.TYPE_8__ = type { i32 }

@ECMA_LIST_CONVERT_FAST_ARRAYS = common dso_local global i32 0, align 4
@ECMA_PROP_IS_WRITABLE_DEFINED = common dso_local global i32 0, align 4
@ECMA_PROP_IS_WRITABLE = common dso_local global i32 0, align 4
@ECMA_PROP_IS_CONFIGURABLE = common dso_local global i64 0, align 8
@ECMA_PROP_IS_THROW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ecma_builtin_object_object_freeze to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecma_builtin_object_object_freeze(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* @ECMA_LIST_CONVERT_FAST_ARRAYS, align 4
  %12 = call %struct.TYPE_9__* @ecma_op_object_get_property_names(i32* %10, i32 %11)
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %4, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %5, align 8
  store i64 0, i64* %6, align 8
  br label %16

16:                                               ; preds = %75, %1
  %17 = load i64, i64* %6, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %17, %20
  br i1 %21, label %22, label %78

22:                                               ; preds = %16
  %23 = load i32*, i32** %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32* @ecma_get_string_from_value(i32 %26)
  store i32* %27, i32** %7, align 8
  %28 = load i32*, i32** %3, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @ecma_op_object_get_own_property_descriptor(i32* %28, i32* %29, %struct.TYPE_8__* %8)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %22
  br label %75

33:                                               ; preds = %22
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @ECMA_PROP_IS_WRITABLE_DEFINED, align 4
  %37 = load i32, i32* @ECMA_PROP_IS_WRITABLE, align 4
  %38 = or i32 %36, %37
  %39 = and i32 %35, %38
  %40 = load i32, i32* @ECMA_PROP_IS_WRITABLE_DEFINED, align 4
  %41 = load i32, i32* @ECMA_PROP_IS_WRITABLE, align 4
  %42 = or i32 %40, %41
  %43 = icmp eq i32 %39, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %33
  %45 = load i32, i32* @ECMA_PROP_IS_WRITABLE, align 4
  %46 = xor i32 %45, -1
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, %46
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %44, %33
  %51 = load i64, i64* @ECMA_PROP_IS_CONFIGURABLE, align 8
  %52 = xor i64 %51, -1
  %53 = trunc i64 %52 to i32
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, %53
  store i32 %56, i32* %54, align 4
  %57 = load i32, i32* @ECMA_PROP_IS_THROW, align 4
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %57
  store i32 %60, i32* %58, align 4
  %61 = load i32*, i32** %3, align 8
  %62 = load i32*, i32** %7, align 8
  %63 = call i32 @ecma_op_object_define_own_property(i32* %61, i32* %62, %struct.TYPE_8__* %8)
  store i32 %63, i32* %9, align 4
  %64 = call i32 @ecma_free_property_descriptor(%struct.TYPE_8__* %8)
  %65 = load i32, i32* %9, align 4
  %66 = call i64 @ECMA_IS_VALUE_ERROR(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %50
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %70 = call i32 @ecma_collection_free(%struct.TYPE_9__* %69)
  %71 = load i32, i32* %9, align 4
  store i32 %71, i32* %2, align 4
  br label %87

72:                                               ; preds = %50
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @ecma_free_value(i32 %73)
  br label %75

75:                                               ; preds = %72, %32
  %76 = load i64, i64* %6, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %6, align 8
  br label %16

78:                                               ; preds = %16
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %80 = call i32 @ecma_collection_free(%struct.TYPE_9__* %79)
  %81 = load i32*, i32** %3, align 8
  %82 = call i32 @ecma_set_object_extensible(i32* %81, i32 0)
  %83 = load i32*, i32** %3, align 8
  %84 = call i32 @ecma_ref_object(i32* %83)
  %85 = load i32*, i32** %3, align 8
  %86 = call i32 @ecma_make_object_value(i32* %85)
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %78, %68
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local %struct.TYPE_9__* @ecma_op_object_get_property_names(i32*, i32) #1

declare dso_local i32* @ecma_get_string_from_value(i32) #1

declare dso_local i32 @ecma_op_object_get_own_property_descriptor(i32*, i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @ecma_op_object_define_own_property(i32*, i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @ecma_free_property_descriptor(%struct.TYPE_8__*) #1

declare dso_local i64 @ECMA_IS_VALUE_ERROR(i32) #1

declare dso_local i32 @ecma_collection_free(%struct.TYPE_9__*) #1

declare dso_local i32 @ecma_free_value(i32) #1

declare dso_local i32 @ecma_set_object_extensible(i32*, i32) #1

declare dso_local i32 @ecma_ref_object(i32*) #1

declare dso_local i32 @ecma_make_object_value(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
