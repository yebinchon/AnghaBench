; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-core/ecma/operations/extr_ecma-conversion.c_ecma_op_from_property_descriptor.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-core/ecma/operations/extr_ecma-conversion.c_ecma_op_from_property_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8*, i32*, i32* }

@ECMA_PROP_IS_VALUE_DEFINED = common dso_local global i32 0, align 4
@ECMA_PROP_IS_WRITABLE_DEFINED = common dso_local global i32 0, align 4
@ECMA_PROP_IS_WRITABLE = common dso_local global i32 0, align 4
@ECMA_PROP_IS_ENUMERABLE_DEFINED = common dso_local global i32 0, align 4
@ECMA_PROP_IS_ENUMERABLE = common dso_local global i32 0, align 4
@ECMA_PROP_IS_CONFIGURABLE_DEFINED = common dso_local global i32 0, align 4
@ECMA_PROP_IS_CONFIGURABLE = common dso_local global i32 0, align 4
@LIT_MAGIC_STRING_VALUE = common dso_local global i32 0, align 4
@LIT_MAGIC_STRING_WRITABLE = common dso_local global i32 0, align 4
@ECMA_PROP_IS_GET_DEFINED = common dso_local global i32 0, align 4
@ECMA_PROP_IS_SET_DEFINED = common dso_local global i32 0, align 4
@ECMA_VALUE_UNDEFINED = common dso_local global i8* null, align 8
@LIT_MAGIC_STRING_GET = common dso_local global i32 0, align 4
@LIT_MAGIC_STRING_SET = common dso_local global i32 0, align 4
@LIT_MAGIC_STRING_ENUMERABLE = common dso_local global i32 0, align 4
@LIT_MAGIC_STRING_CONFIGURABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ecma_op_from_property_descriptor(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %6 = call i32* (...) @ecma_op_create_object_object_noarg()
  store i32* %6, i32** %3, align 8
  call void (%struct.TYPE_5__*, ...) @ecma_make_empty_property_descriptor(%struct.TYPE_5__* sret %5)
  %7 = load i32, i32* @ECMA_PROP_IS_VALUE_DEFINED, align 4
  %8 = load i32, i32* @ECMA_PROP_IS_WRITABLE_DEFINED, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @ECMA_PROP_IS_WRITABLE, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @ECMA_PROP_IS_ENUMERABLE_DEFINED, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @ECMA_PROP_IS_ENUMERABLE, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @ECMA_PROP_IS_CONFIGURABLE_DEFINED, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @ECMA_PROP_IS_CONFIGURABLE, align 4
  %19 = or i32 %17, %18
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store i32 %19, i32* %20, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @ECMA_PROP_IS_VALUE_DEFINED, align 4
  %25 = load i32, i32* @ECMA_PROP_IS_WRITABLE_DEFINED, align 4
  %26 = or i32 %24, %25
  %27 = and i32 %23, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %67

29:                                               ; preds = %1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @ECMA_PROP_IS_VALUE_DEFINED, align 4
  %33 = load i32, i32* @ECMA_PROP_IS_WRITABLE_DEFINED, align 4
  %34 = or i32 %32, %33
  %35 = and i32 %31, %34
  %36 = load i32, i32* @ECMA_PROP_IS_VALUE_DEFINED, align 4
  %37 = load i32, i32* @ECMA_PROP_IS_WRITABLE_DEFINED, align 4
  %38 = or i32 %36, %37
  %39 = icmp eq i32 %35, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @JERRY_ASSERT(i32 %40)
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  store i8* %44, i8** %45, align 8
  %46 = load i32*, i32** %3, align 8
  %47 = load i32, i32* @LIT_MAGIC_STRING_VALUE, align 4
  %48 = call i32 @ecma_get_magic_string(i32 %47)
  %49 = call i32 @ecma_op_object_define_own_property(i32* %46, i32 %48, %struct.TYPE_5__* %5)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @ecma_is_value_true(i32 %50)
  %52 = call i32 @JERRY_ASSERT(i32 %51)
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @ECMA_PROP_IS_WRITABLE, align 4
  %57 = and i32 %55, %56
  %58 = call i8* @ecma_make_boolean_value(i32 %57)
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  store i8* %58, i8** %59, align 8
  %60 = load i32*, i32** %3, align 8
  %61 = load i32, i32* @LIT_MAGIC_STRING_WRITABLE, align 4
  %62 = call i32 @ecma_get_magic_string(i32 %61)
  %63 = call i32 @ecma_op_object_define_own_property(i32* %60, i32 %62, %struct.TYPE_5__* %5)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @ecma_is_value_true(i32 %64)
  %66 = call i32 @JERRY_ASSERT(i32 %65)
  br label %118

67:                                               ; preds = %1
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @ECMA_PROP_IS_GET_DEFINED, align 4
  %72 = load i32, i32* @ECMA_PROP_IS_SET_DEFINED, align 4
  %73 = or i32 %71, %72
  %74 = and i32 %70, %73
  %75 = call i32 @JERRY_ASSERT(i32 %74)
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 3
  %78 = load i32*, i32** %77, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %67
  %81 = load i8*, i8** @ECMA_VALUE_UNDEFINED, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  store i8* %81, i8** %82, align 8
  br label %89

83:                                               ; preds = %67
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 3
  %86 = load i32*, i32** %85, align 8
  %87 = call i8* @ecma_make_object_value(i32* %86)
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  store i8* %87, i8** %88, align 8
  br label %89

89:                                               ; preds = %83, %80
  %90 = load i32*, i32** %3, align 8
  %91 = load i32, i32* @LIT_MAGIC_STRING_GET, align 4
  %92 = call i32 @ecma_get_magic_string(i32 %91)
  %93 = call i32 @ecma_op_object_define_own_property(i32* %90, i32 %92, %struct.TYPE_5__* %5)
  store i32 %93, i32* %4, align 4
  %94 = load i32, i32* %4, align 4
  %95 = call i32 @ecma_is_value_true(i32 %94)
  %96 = call i32 @JERRY_ASSERT(i32 %95)
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = icmp eq i32* %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %89
  %102 = load i8*, i8** @ECMA_VALUE_UNDEFINED, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  store i8* %102, i8** %103, align 8
  br label %110

104:                                              ; preds = %89
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = call i8* @ecma_make_object_value(i32* %107)
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  store i8* %108, i8** %109, align 8
  br label %110

110:                                              ; preds = %104, %101
  %111 = load i32*, i32** %3, align 8
  %112 = load i32, i32* @LIT_MAGIC_STRING_SET, align 4
  %113 = call i32 @ecma_get_magic_string(i32 %112)
  %114 = call i32 @ecma_op_object_define_own_property(i32* %111, i32 %113, %struct.TYPE_5__* %5)
  store i32 %114, i32* %4, align 4
  %115 = load i32, i32* %4, align 4
  %116 = call i32 @ecma_is_value_true(i32 %115)
  %117 = call i32 @JERRY_ASSERT(i32 %116)
  br label %118

118:                                              ; preds = %110, %29
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @ECMA_PROP_IS_ENUMERABLE, align 4
  %123 = and i32 %121, %122
  %124 = call i8* @ecma_make_boolean_value(i32 %123)
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  store i8* %124, i8** %125, align 8
  %126 = load i32*, i32** %3, align 8
  %127 = load i32, i32* @LIT_MAGIC_STRING_ENUMERABLE, align 4
  %128 = call i32 @ecma_get_magic_string(i32 %127)
  %129 = call i32 @ecma_op_object_define_own_property(i32* %126, i32 %128, %struct.TYPE_5__* %5)
  store i32 %129, i32* %4, align 4
  %130 = load i32, i32* %4, align 4
  %131 = call i32 @ecma_is_value_true(i32 %130)
  %132 = call i32 @JERRY_ASSERT(i32 %131)
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @ECMA_PROP_IS_CONFIGURABLE, align 4
  %137 = and i32 %135, %136
  %138 = call i8* @ecma_make_boolean_value(i32 %137)
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  store i8* %138, i8** %139, align 8
  %140 = load i32*, i32** %3, align 8
  %141 = load i32, i32* @LIT_MAGIC_STRING_CONFIGURABLE, align 4
  %142 = call i32 @ecma_get_magic_string(i32 %141)
  %143 = call i32 @ecma_op_object_define_own_property(i32* %140, i32 %142, %struct.TYPE_5__* %5)
  store i32 %143, i32* %4, align 4
  %144 = load i32, i32* %4, align 4
  %145 = call i32 @ecma_is_value_true(i32 %144)
  %146 = call i32 @JERRY_ASSERT(i32 %145)
  %147 = load i32*, i32** %3, align 8
  ret i32* %147
}

declare dso_local i32* @ecma_op_create_object_object_noarg(...) #1

declare dso_local void @ecma_make_empty_property_descriptor(%struct.TYPE_5__* sret, ...) #1

declare dso_local i32 @JERRY_ASSERT(i32) #1

declare dso_local i32 @ecma_op_object_define_own_property(i32*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @ecma_get_magic_string(i32) #1

declare dso_local i32 @ecma_is_value_true(i32) #1

declare dso_local i8* @ecma_make_boolean_value(i32) #1

declare dso_local i8* @ecma_make_object_value(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
