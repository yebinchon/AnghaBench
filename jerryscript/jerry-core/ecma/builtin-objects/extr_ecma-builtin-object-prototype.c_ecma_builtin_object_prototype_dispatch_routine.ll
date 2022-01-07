; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-core/ecma/builtin-objects/extr_ecma-builtin-object-prototype.c_ecma_builtin_object_prototype_dispatch_routine.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-core/ecma/builtin-objects/extr_ecma-builtin-object-prototype.c_ecma_builtin_object_prototype_dispatch_routine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ECMA_OBJECT_PROTOTYPE_VALUE_OF = common dso_local global i64 0, align 8
@ECMA_OBJECT_PROTOTYPE_TO_STRING = common dso_local global i64 0, align 8
@ECMA_OBJECT_PROTOTYPE_IS_PROTOTYPE_OF = common dso_local global i64 0, align 8
@ECMA_VALUE_FALSE = common dso_local global i32 0, align 4
@ECMA_OBJECT_PROTOTYPE_HAS_OWN_PROPERTY = common dso_local global i64 0, align 8
@ECMA_VALUE_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecma_builtin_object_prototype_dispatch_routine(i64 %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @JERRY_UNUSED(i32 %17)
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* @ECMA_OBJECT_PROTOTYPE_VALUE_OF, align 8
  %21 = icmp sle i64 %19, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %4
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @ECMA_OBJECT_PROTOTYPE_TO_STRING, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @ecma_builtin_object_prototype_object_to_string(i32 %27)
  store i32 %28, i32* %5, align 4
  br label %125

29:                                               ; preds = %22
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* @ECMA_OBJECT_PROTOTYPE_VALUE_OF, align 8
  %32 = icmp sle i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @JERRY_ASSERT(i32 %33)
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @ecma_builtin_object_prototype_object_value_of(i32 %35)
  store i32 %36, i32* %5, align 4
  br label %125

37:                                               ; preds = %4
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* @ECMA_OBJECT_PROTOTYPE_IS_PROTOTYPE_OF, align 8
  %40 = icmp sle i64 %38, %39
  br i1 %40, label %41, label %81

41:                                               ; preds = %37
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* @ECMA_OBJECT_PROTOTYPE_IS_PROTOTYPE_OF, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %41
  %46 = load i32*, i32** %8, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ecma_is_value_object(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %45
  %52 = load i32, i32* @ECMA_VALUE_FALSE, align 4
  store i32 %52, i32* %5, align 4
  br label %125

53:                                               ; preds = %45
  br label %54

54:                                               ; preds = %53, %41
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @ecma_op_to_object(i32 %55)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = call i64 @ECMA_IS_VALUE_ERROR(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* %10, align 4
  store i32 %61, i32* %5, align 4
  br label %125

62:                                               ; preds = %54
  %63 = load i32, i32* %10, align 4
  %64 = call i32* @ecma_get_object_from_value(i32 %63)
  store i32* %64, i32** %11, align 8
  %65 = load i64, i64* %6, align 8
  %66 = load i64, i64* @ECMA_OBJECT_PROTOTYPE_IS_PROTOTYPE_OF, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %62
  %69 = load i32*, i32** %11, align 8
  %70 = load i32*, i32** %8, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @ecma_builtin_object_prototype_object_is_prototype_of(i32* %69, i32 %72)
  store i32 %73, i32* %12, align 4
  br label %77

74:                                               ; preds = %62
  %75 = load i32*, i32** %11, align 8
  %76 = call i32 @ecma_builtin_object_prototype_object_to_locale_string(i32* %75)
  store i32 %76, i32* %12, align 4
  br label %77

77:                                               ; preds = %74, %68
  %78 = load i32*, i32** %11, align 8
  %79 = call i32 @ecma_deref_object(i32* %78)
  %80 = load i32, i32* %12, align 4
  store i32 %80, i32* %5, align 4
  br label %125

81:                                               ; preds = %37
  %82 = load i64, i64* %6, align 8
  %83 = load i64, i64* @ECMA_OBJECT_PROTOTYPE_HAS_OWN_PROPERTY, align 8
  %84 = icmp sge i64 %82, %83
  %85 = zext i1 %84 to i32
  %86 = call i32 @JERRY_ASSERT(i32 %85)
  %87 = load i32*, i32** %8, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32* @ecma_op_to_prop_name(i32 %89)
  store i32* %90, i32** %13, align 8
  %91 = load i32*, i32** %13, align 8
  %92 = icmp eq i32* %91, null
  br i1 %92, label %93, label %95

93:                                               ; preds = %81
  %94 = load i32, i32* @ECMA_VALUE_ERROR, align 4
  store i32 %94, i32* %5, align 4
  br label %125

95:                                               ; preds = %81
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @ecma_op_to_object(i32 %96)
  store i32 %97, i32* %14, align 4
  %98 = load i32, i32* %14, align 4
  %99 = call i64 @ECMA_IS_VALUE_ERROR(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %95
  %102 = load i32*, i32** %13, align 8
  %103 = call i32 @ecma_deref_ecma_string(i32* %102)
  %104 = load i32, i32* %14, align 4
  store i32 %104, i32* %5, align 4
  br label %125

105:                                              ; preds = %95
  %106 = load i32, i32* %14, align 4
  %107 = call i32* @ecma_get_object_from_value(i32 %106)
  store i32* %107, i32** %15, align 8
  %108 = load i64, i64* %6, align 8
  %109 = load i64, i64* @ECMA_OBJECT_PROTOTYPE_HAS_OWN_PROPERTY, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %105
  %112 = load i32*, i32** %15, align 8
  %113 = load i32*, i32** %13, align 8
  %114 = call i32 @ecma_builtin_object_prototype_object_has_own_property(i32* %112, i32* %113)
  store i32 %114, i32* %16, align 4
  br label %119

115:                                              ; preds = %105
  %116 = load i32*, i32** %15, align 8
  %117 = load i32*, i32** %13, align 8
  %118 = call i32 @ecma_builtin_object_prototype_object_property_is_enumerable(i32* %116, i32* %117)
  store i32 %118, i32* %16, align 4
  br label %119

119:                                              ; preds = %115, %111
  %120 = load i32*, i32** %13, align 8
  %121 = call i32 @ecma_deref_ecma_string(i32* %120)
  %122 = load i32*, i32** %15, align 8
  %123 = call i32 @ecma_deref_object(i32* %122)
  %124 = load i32, i32* %16, align 4
  store i32 %124, i32* %5, align 4
  br label %125

125:                                              ; preds = %119, %101, %93, %77, %60, %51, %29, %26
  %126 = load i32, i32* %5, align 4
  ret i32 %126
}

declare dso_local i32 @JERRY_UNUSED(i32) #1

declare dso_local i32 @ecma_builtin_object_prototype_object_to_string(i32) #1

declare dso_local i32 @JERRY_ASSERT(i32) #1

declare dso_local i32 @ecma_builtin_object_prototype_object_value_of(i32) #1

declare dso_local i32 @ecma_is_value_object(i32) #1

declare dso_local i32 @ecma_op_to_object(i32) #1

declare dso_local i64 @ECMA_IS_VALUE_ERROR(i32) #1

declare dso_local i32* @ecma_get_object_from_value(i32) #1

declare dso_local i32 @ecma_builtin_object_prototype_object_is_prototype_of(i32*, i32) #1

declare dso_local i32 @ecma_builtin_object_prototype_object_to_locale_string(i32*) #1

declare dso_local i32 @ecma_deref_object(i32*) #1

declare dso_local i32* @ecma_op_to_prop_name(i32) #1

declare dso_local i32 @ecma_deref_ecma_string(i32*) #1

declare dso_local i32 @ecma_builtin_object_prototype_object_has_own_property(i32*, i32*) #1

declare dso_local i32 @ecma_builtin_object_prototype_object_property_is_enumerable(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
