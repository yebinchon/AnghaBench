; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-method/src/extr_method.c_unbound_method_bind.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-method/src/extr_method.c_unbound_method_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RObject = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"@owner\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"@name\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"proc\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"@klass\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"o\00", align 1
@MRB_TT_MODULE = common dso_local global i64 0, align 8
@MRB_TT_SCLASS = common dso_local global i64 0, align 8
@E_TYPE_ERROR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [47 x i8] c"singleton method called for a different object\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"bind argument must be an instance of %S\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"Method\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"@recv\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @unbound_method_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unbound_method_bind(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.RObject*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @mrb_intern_lit(i32* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 @mrb_iv_get(i32* %12, i32 %13, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @mrb_intern_lit(i32* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %21 = call i32 @mrb_iv_get(i32* %17, i32 %18, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @mrb_intern_lit(i32* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %26 = call i32 @mrb_iv_get(i32* %22, i32 %23, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32*, i32** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @mrb_intern_lit(i32* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %31 = call i32 @mrb_iv_get(i32* %27, i32 %28, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @mrb_get_args(i32* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32* %10)
  %34 = load i32, i32* %6, align 4
  %35 = call i64 @mrb_type(i32 %34)
  %36 = load i64, i64* @MRB_TT_MODULE, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %75

38:                                               ; preds = %2
  %39 = load i32, i32* %6, align 4
  %40 = call i64 @mrb_class_ptr(i32 %39)
  %41 = load i32*, i32** %3, align 8
  %42 = load i32, i32* %10, align 4
  %43 = call i64 @mrb_obj_class(i32* %41, i32 %42)
  %44 = icmp ne i64 %40, %43
  br i1 %44, label %45, label %75

45:                                               ; preds = %38
  %46 = load i32*, i32** %3, align 8
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i64 @mrb_class_ptr(i32 %48)
  %50 = call i32 @mrb_obj_is_kind_of(i32* %46, i32 %47, i64 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %75, label %52

52:                                               ; preds = %45
  %53 = load i32, i32* %6, align 4
  %54 = call i64 @mrb_type(i32 %53)
  %55 = load i64, i64* @MRB_TT_SCLASS, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load i32*, i32** %3, align 8
  %59 = load i32, i32* @E_TYPE_ERROR, align 4
  %60 = call i32 @mrb_raise(i32* %58, i32 %59, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0))
  br label %74

61:                                               ; preds = %52
  %62 = load i32*, i32** %3, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i64 @mrb_class_ptr(i32 %63)
  %65 = call i8* @mrb_class_name(i32* %62, i64 %64)
  store i8* %65, i8** %11, align 8
  %66 = load i32*, i32** %3, align 8
  %67 = load i32, i32* @E_TYPE_ERROR, align 4
  %68 = load i32*, i32** %3, align 8
  %69 = load i8*, i8** %11, align 8
  %70 = load i8*, i8** %11, align 8
  %71 = call i32 @strlen(i8* %70)
  %72 = call i32 @mrb_str_new_static(i32* %68, i8* %69, i32 %71)
  %73 = call i32 @mrb_raisef(i32* %66, i32 %67, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %61, %57
  br label %75

75:                                               ; preds = %74, %45, %38, %2
  %76 = load i32*, i32** %3, align 8
  %77 = load i32*, i32** %3, align 8
  %78 = call i32 @mrb_class_get(i32* %77, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %79 = call %struct.RObject* @method_object_alloc(i32* %76, i32 %78)
  store %struct.RObject* %79, %struct.RObject** %5, align 8
  %80 = load i32*, i32** %3, align 8
  %81 = load %struct.RObject*, %struct.RObject** %5, align 8
  %82 = load i32*, i32** %3, align 8
  %83 = call i32 @mrb_intern_lit(i32* %82, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @mrb_obj_iv_set(i32* %80, %struct.RObject* %81, i32 %83, i32 %84)
  %86 = load i32*, i32** %3, align 8
  %87 = load %struct.RObject*, %struct.RObject** %5, align 8
  %88 = load i32*, i32** %3, align 8
  %89 = call i32 @mrb_intern_lit(i32* %88, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @mrb_obj_iv_set(i32* %86, %struct.RObject* %87, i32 %89, i32 %90)
  %92 = load i32*, i32** %3, align 8
  %93 = load %struct.RObject*, %struct.RObject** %5, align 8
  %94 = load i32*, i32** %3, align 8
  %95 = call i32 @mrb_intern_lit(i32* %94, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @mrb_obj_iv_set(i32* %92, %struct.RObject* %93, i32 %95, i32 %96)
  %98 = load i32*, i32** %3, align 8
  %99 = load %struct.RObject*, %struct.RObject** %5, align 8
  %100 = load i32*, i32** %3, align 8
  %101 = call i32 @mrb_intern_lit(i32* %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @mrb_obj_iv_set(i32* %98, %struct.RObject* %99, i32 %101, i32 %102)
  %104 = load i32*, i32** %3, align 8
  %105 = load %struct.RObject*, %struct.RObject** %5, align 8
  %106 = load i32*, i32** %3, align 8
  %107 = call i32 @mrb_intern_lit(i32* %106, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @mrb_obj_iv_set(i32* %104, %struct.RObject* %105, i32 %107, i32 %108)
  %110 = load %struct.RObject*, %struct.RObject** %5, align 8
  %111 = call i32 @mrb_obj_value(%struct.RObject* %110)
  ret i32 %111
}

declare dso_local i32 @mrb_iv_get(i32*, i32, i32) #1

declare dso_local i32 @mrb_intern_lit(i32*, i8*) #1

declare dso_local i32 @mrb_get_args(i32*, i8*, i32*) #1

declare dso_local i64 @mrb_type(i32) #1

declare dso_local i64 @mrb_class_ptr(i32) #1

declare dso_local i64 @mrb_obj_class(i32*, i32) #1

declare dso_local i32 @mrb_obj_is_kind_of(i32*, i32, i64) #1

declare dso_local i32 @mrb_raise(i32*, i32, i8*) #1

declare dso_local i8* @mrb_class_name(i32*, i64) #1

declare dso_local i32 @mrb_raisef(i32*, i32, i8*, i32) #1

declare dso_local i32 @mrb_str_new_static(i32*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.RObject* @method_object_alloc(i32*, i32) #1

declare dso_local i32 @mrb_class_get(i32*, i8*) #1

declare dso_local i32 @mrb_obj_iv_set(i32*, %struct.RObject*, i32, i32) #1

declare dso_local i32 @mrb_obj_value(%struct.RObject*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
