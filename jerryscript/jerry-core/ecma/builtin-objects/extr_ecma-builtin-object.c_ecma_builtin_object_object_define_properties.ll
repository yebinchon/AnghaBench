; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-core/ecma/builtin-objects/extr_ecma-builtin-object.c_ecma_builtin_object_object_define_properties.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-core/ecma/builtin-objects/extr_ecma-builtin-object.c_ecma_builtin_object_object_define_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i64, i32* }

@ECMA_LIST_CONVERT_FAST_ARRAYS = common dso_local global i32 0, align 4
@ECMA_LIST_ENUMERABLE = common dso_local global i32 0, align 4
@ECMA_VALUE_ERROR = common dso_local global i32 0, align 4
@property_descriptors = common dso_local global %struct.TYPE_11__* null, align 8
@ecma_property_descriptor_t = common dso_local global i32 0, align 4
@ECMA_PROP_IS_THROW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @ecma_builtin_object_object_define_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecma_builtin_object_object_define_properties(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @ecma_op_to_object(i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i64 @ECMA_IS_VALUE_ERROR(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %145

25:                                               ; preds = %2
  %26 = load i32, i32* %6, align 4
  %27 = call i32* @ecma_get_object_from_value(i32 %26)
  store i32* %27, i32** %7, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* @ECMA_LIST_CONVERT_FAST_ARRAYS, align 4
  %30 = load i32, i32* @ECMA_LIST_ENUMERABLE, align 4
  %31 = or i32 %29, %30
  %32 = call %struct.TYPE_10__* @ecma_op_object_get_property_names(i32* %28, i32 %31)
  store %struct.TYPE_10__* %32, %struct.TYPE_10__** %8, align 8
  %33 = load i32, i32* @ECMA_VALUE_ERROR, align 4
  store i32 %33, i32* %9, align 4
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %10, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** @property_descriptors, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* @ecma_property_descriptor_t, align 4
  %42 = call i32 @JMEM_DEFINE_LOCAL_ARRAY(%struct.TYPE_11__* %37, i64 %40, i32 %41)
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  br label %43

43:                                               ; preds = %85, %25
  %44 = load i64, i64* %12, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ult i64 %44, %47
  br i1 %48, label %49, label %88

49:                                               ; preds = %43
  %50 = load i32*, i32** %7, align 8
  %51 = load i32*, i32** %10, align 8
  %52 = load i64, i64* %12, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ecma_get_string_from_value(i32 %54)
  %56 = call i32 @ecma_op_object_get(i32* %50, i32 %55)
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %13, align 4
  %58 = call i64 @ECMA_IS_VALUE_ERROR(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %49
  br label %124

61:                                               ; preds = %49
  %62 = load i32, i32* %13, align 4
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** @property_descriptors, align 8
  %64 = load i64, i64* %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i64 %64
  %66 = call i32 @ecma_op_to_property_descriptor(i32 %62, %struct.TYPE_11__* %65)
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* @ECMA_PROP_IS_THROW, align 4
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** @property_descriptors, align 8
  %69 = load i64, i64* %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %67
  store i32 %73, i32* %71, align 4
  %74 = load i32, i32* %13, align 4
  %75 = call i32 @ecma_free_value(i32 %74)
  %76 = load i32, i32* %14, align 4
  %77 = call i64 @ECMA_IS_VALUE_ERROR(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %61
  br label %124

80:                                               ; preds = %61
  %81 = load i64, i64* %11, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %11, align 8
  %83 = load i32, i32* %14, align 4
  %84 = call i32 @ecma_free_value(i32 %83)
  br label %85

85:                                               ; preds = %80
  %86 = load i64, i64* %12, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %12, align 8
  br label %43

88:                                               ; preds = %43
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  store i32* %91, i32** %10, align 8
  store i64 0, i64* %15, align 8
  br label %92

92:                                               ; preds = %116, %88
  %93 = load i64, i64* %15, align 8
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ult i64 %93, %96
  br i1 %97, label %98, label %119

98:                                               ; preds = %92
  %99 = load i32*, i32** %4, align 8
  %100 = load i32*, i32** %10, align 8
  %101 = load i64, i64* %15, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @ecma_get_string_from_value(i32 %103)
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** @property_descriptors, align 8
  %106 = load i64, i64* %15, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i64 %106
  %108 = call i32 @ecma_op_object_define_own_property(i32* %99, i32 %104, %struct.TYPE_11__* %107)
  store i32 %108, i32* %16, align 4
  %109 = load i32, i32* %16, align 4
  %110 = call i64 @ECMA_IS_VALUE_ERROR(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %98
  br label %124

113:                                              ; preds = %98
  %114 = load i32, i32* %16, align 4
  %115 = call i32 @ecma_free_value(i32 %114)
  br label %116

116:                                              ; preds = %113
  %117 = load i64, i64* %15, align 8
  %118 = add i64 %117, 1
  store i64 %118, i64* %15, align 8
  br label %92

119:                                              ; preds = %92
  %120 = load i32*, i32** %4, align 8
  %121 = call i32 @ecma_ref_object(i32* %120)
  %122 = load i32*, i32** %4, align 8
  %123 = call i32 @ecma_make_object_value(i32* %122)
  store i32 %123, i32* %9, align 4
  br label %124

124:                                              ; preds = %119, %112, %79, %60
  store i64 0, i64* %17, align 8
  br label %125

125:                                              ; preds = %134, %124
  %126 = load i64, i64* %17, align 8
  %127 = load i64, i64* %11, align 8
  %128 = icmp ult i64 %126, %127
  br i1 %128, label %129, label %137

129:                                              ; preds = %125
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** @property_descriptors, align 8
  %131 = load i64, i64* %17, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i64 %131
  %133 = call i32 @ecma_free_property_descriptor(%struct.TYPE_11__* %132)
  br label %134

134:                                              ; preds = %129
  %135 = load i64, i64* %17, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %17, align 8
  br label %125

137:                                              ; preds = %125
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** @property_descriptors, align 8
  %139 = call i32 @JMEM_FINALIZE_LOCAL_ARRAY(%struct.TYPE_11__* %138)
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %141 = call i32 @ecma_collection_free(%struct.TYPE_10__* %140)
  %142 = load i32*, i32** %7, align 8
  %143 = call i32 @ecma_deref_object(i32* %142)
  %144 = load i32, i32* %9, align 4
  store i32 %144, i32* %3, align 4
  br label %145

145:                                              ; preds = %137, %23
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local i32 @ecma_op_to_object(i32) #1

declare dso_local i64 @ECMA_IS_VALUE_ERROR(i32) #1

declare dso_local i32* @ecma_get_object_from_value(i32) #1

declare dso_local %struct.TYPE_10__* @ecma_op_object_get_property_names(i32*, i32) #1

declare dso_local i32 @JMEM_DEFINE_LOCAL_ARRAY(%struct.TYPE_11__*, i64, i32) #1

declare dso_local i32 @ecma_op_object_get(i32*, i32) #1

declare dso_local i32 @ecma_get_string_from_value(i32) #1

declare dso_local i32 @ecma_op_to_property_descriptor(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @ecma_free_value(i32) #1

declare dso_local i32 @ecma_op_object_define_own_property(i32*, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @ecma_ref_object(i32*) #1

declare dso_local i32 @ecma_make_object_value(i32*) #1

declare dso_local i32 @ecma_free_property_descriptor(%struct.TYPE_11__*) #1

declare dso_local i32 @JMEM_FINALIZE_LOCAL_ARRAY(%struct.TYPE_11__*) #1

declare dso_local i32 @ecma_collection_free(%struct.TYPE_10__*) #1

declare dso_local i32 @ecma_deref_object(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
