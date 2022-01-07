; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby-json/src/extr_mrb_json.c_json_value_to_mrb_value.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby-json/src/extr_mrb_json.c_json_value_to_mrb_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@E_ARGUMENT_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"invalid argument\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i32*)* @json_value_to_mrb_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @json_value_to_mrb_value(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca double, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @json_value_get_type(i32* %19)
  switch i32 %20, label %119 [
    i32 133, label %21
    i32 131, label %21
    i32 128, label %23
    i32 130, label %28
    i32 129, label %43
    i32 135, label %79
    i32 134, label %110
  ]

21:                                               ; preds = %2, %2
  %22 = call i8* (...) @mrb_nil_value()
  store i8* %22, i8** %5, align 8
  br label %123

23:                                               ; preds = %2
  %24 = load i32*, i32** %3, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = call i8* @json_value_get_string(i32* %25)
  %27 = call i8* @mrb_str_new_cstr(i32* %24, i8* %26)
  store i8* %27, i8** %5, align 8
  br label %123

28:                                               ; preds = %2
  %29 = load i32*, i32** %4, align 8
  %30 = call double @json_value_get_number(i32* %29)
  store double %30, double* %6, align 8
  %31 = load double, double* %6, align 8
  %32 = call double @llvm.floor.f64(double %31)
  %33 = load double, double* %6, align 8
  %34 = fcmp oeq double %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load double, double* %6, align 8
  %37 = call i8* @mrb_fixnum_value(double %36)
  store i8* %37, i8** %5, align 8
  br label %42

38:                                               ; preds = %28
  %39 = load i32*, i32** %3, align 8
  %40 = load double, double* %6, align 8
  %41 = call i8* @mrb_float_value(i32* %39, double %40)
  store i8* %41, i8** %5, align 8
  br label %42

42:                                               ; preds = %38, %35
  br label %123

43:                                               ; preds = %2
  %44 = load i32*, i32** %3, align 8
  %45 = call i8* @mrb_hash_new(i32* %44)
  store i8* %45, i8** %7, align 8
  %46 = load i32*, i32** %4, align 8
  %47 = call i32* @json_value_get_object(i32* %46)
  store i32* %47, i32** %8, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = call i64 @json_object_get_count(i32* %48)
  store i64 %49, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %50

50:                                               ; preds = %74, %43
  %51 = load i64, i64* %10, align 8
  %52 = load i64, i64* %9, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %77

54:                                               ; preds = %50
  %55 = load i32*, i32** %3, align 8
  %56 = call i32 @mrb_gc_arena_save(i32* %55)
  store i32 %56, i32* %11, align 4
  %57 = load i32*, i32** %8, align 8
  %58 = load i64, i64* %10, align 8
  %59 = call i8* @json_object_get_name(i32* %57, i64 %58)
  store i8* %59, i8** %12, align 8
  %60 = load i32*, i32** %3, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = load i32*, i32** %3, align 8
  %63 = load i8*, i8** %12, align 8
  %64 = call i8* @mrb_str_new_cstr(i32* %62, i8* %63)
  %65 = load i32*, i32** %3, align 8
  %66 = load i32*, i32** %8, align 8
  %67 = load i8*, i8** %12, align 8
  %68 = call i32* @json_object_get_value(i32* %66, i8* %67)
  %69 = call i8* @json_value_to_mrb_value(i32* %65, i32* %68)
  %70 = call i32 @mrb_hash_set(i32* %60, i8* %61, i8* %64, i8* %69)
  %71 = load i32*, i32** %3, align 8
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @mrb_gc_arena_restore(i32* %71, i32 %72)
  br label %74

74:                                               ; preds = %54
  %75 = load i64, i64* %10, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %10, align 8
  br label %50

77:                                               ; preds = %50
  %78 = load i8*, i8** %7, align 8
  store i8* %78, i8** %5, align 8
  br label %123

79:                                               ; preds = %2
  %80 = load i32*, i32** %3, align 8
  %81 = call i8* @mrb_ary_new(i32* %80)
  store i8* %81, i8** %13, align 8
  %82 = load i32*, i32** %4, align 8
  %83 = call i32* @json_value_get_array(i32* %82)
  store i32* %83, i32** %14, align 8
  %84 = load i32*, i32** %14, align 8
  %85 = call i64 @json_array_get_count(i32* %84)
  store i64 %85, i64* %16, align 8
  store i64 0, i64* %15, align 8
  br label %86

86:                                               ; preds = %105, %79
  %87 = load i64, i64* %15, align 8
  %88 = load i64, i64* %16, align 8
  %89 = icmp ult i64 %87, %88
  br i1 %89, label %90, label %108

90:                                               ; preds = %86
  %91 = load i32*, i32** %3, align 8
  %92 = call i32 @mrb_gc_arena_save(i32* %91)
  store i32 %92, i32* %17, align 4
  %93 = load i32*, i32** %14, align 8
  %94 = load i64, i64* %15, align 8
  %95 = call i32* @json_array_get_value(i32* %93, i64 %94)
  store i32* %95, i32** %18, align 8
  %96 = load i32*, i32** %3, align 8
  %97 = load i8*, i8** %13, align 8
  %98 = load i32*, i32** %3, align 8
  %99 = load i32*, i32** %18, align 8
  %100 = call i8* @json_value_to_mrb_value(i32* %98, i32* %99)
  %101 = call i32 @mrb_ary_push(i32* %96, i8* %97, i8* %100)
  %102 = load i32*, i32** %3, align 8
  %103 = load i32, i32* %17, align 4
  %104 = call i32 @mrb_gc_arena_restore(i32* %102, i32 %103)
  br label %105

105:                                              ; preds = %90
  %106 = load i64, i64* %15, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %15, align 8
  br label %86

108:                                              ; preds = %86
  %109 = load i8*, i8** %13, align 8
  store i8* %109, i8** %5, align 8
  br label %123

110:                                              ; preds = %2
  %111 = load i32*, i32** %4, align 8
  %112 = call i32 @json_value_get_boolean(i32* %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %110
  %115 = call i8* (...) @mrb_true_value()
  store i8* %115, i8** %5, align 8
  br label %118

116:                                              ; preds = %110
  %117 = call i8* (...) @mrb_false_value()
  store i8* %117, i8** %5, align 8
  br label %118

118:                                              ; preds = %116, %114
  br label %123

119:                                              ; preds = %2
  %120 = load i32*, i32** %3, align 8
  %121 = load i32, i32* @E_ARGUMENT_ERROR, align 4
  %122 = call i32 @mrb_raise(i32* %120, i32 %121, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %123

123:                                              ; preds = %119, %118, %108, %77, %42, %23, %21
  %124 = load i8*, i8** %5, align 8
  ret i8* %124
}

declare dso_local i32 @json_value_get_type(i32*) #1

declare dso_local i8* @mrb_nil_value(...) #1

declare dso_local i8* @mrb_str_new_cstr(i32*, i8*) #1

declare dso_local i8* @json_value_get_string(i32*) #1

declare dso_local double @json_value_get_number(i32*) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #2

declare dso_local i8* @mrb_fixnum_value(double) #1

declare dso_local i8* @mrb_float_value(i32*, double) #1

declare dso_local i8* @mrb_hash_new(i32*) #1

declare dso_local i32* @json_value_get_object(i32*) #1

declare dso_local i64 @json_object_get_count(i32*) #1

declare dso_local i32 @mrb_gc_arena_save(i32*) #1

declare dso_local i8* @json_object_get_name(i32*, i64) #1

declare dso_local i32 @mrb_hash_set(i32*, i8*, i8*, i8*) #1

declare dso_local i32* @json_object_get_value(i32*, i8*) #1

declare dso_local i32 @mrb_gc_arena_restore(i32*, i32) #1

declare dso_local i8* @mrb_ary_new(i32*) #1

declare dso_local i32* @json_value_get_array(i32*) #1

declare dso_local i64 @json_array_get_count(i32*) #1

declare dso_local i32* @json_array_get_value(i32*, i64) #1

declare dso_local i32 @mrb_ary_push(i32*, i8*, i8*) #1

declare dso_local i32 @json_value_get_boolean(i32*) #1

declare dso_local i8* @mrb_true_value(...) #1

declare dso_local i8* @mrb_false_value(...) #1

declare dso_local i32 @mrb_raise(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
