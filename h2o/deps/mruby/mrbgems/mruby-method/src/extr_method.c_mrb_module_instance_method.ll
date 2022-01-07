; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-method/src/extr_method.c_mrb_module_instance_method.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-method/src/extr_method.c_mrb_module_instance_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RClass = type opaque
%struct.RProc = type { i32 }
%struct.RObject = type opaque

@.str = private unnamed_addr constant [2 x i8] c"n\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"UnboundMethod\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"@owner\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"@recv\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"@name\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"proc\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"@klass\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mrb_module_instance_method to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_module_instance_method(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.RClass*, align 8
  %6 = alloca %struct.RProc*, align 8
  %7 = alloca %struct.RObject*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @mrb_get_args(i32* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %8)
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @mrb_class_ptr(i32 %12)
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %8, align 4
  %16 = bitcast %struct.RClass** %5 to %struct.RProc**
  %17 = load i32, i32* @TRUE, align 4
  %18 = call i32 @mrb_search_method_owner(i32* %11, i32 %13, i32 %14, i32 %15, %struct.RProc** %16, %struct.RProc** %6, i32 %17)
  %19 = load i32*, i32** %3, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @mrb_class_get(i32* %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %22 = call %struct.RProc* @method_object_alloc(i32* %19, i32 %21)
  %23 = bitcast %struct.RProc* %22 to %struct.RObject*
  store %struct.RObject* %23, %struct.RObject** %7, align 8
  %24 = load i32*, i32** %3, align 8
  %25 = load %struct.RObject*, %struct.RObject** %7, align 8
  %26 = bitcast %struct.RObject* %25 to %struct.RProc*
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @mrb_intern_lit(i32* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %29 = load %struct.RClass*, %struct.RClass** %5, align 8
  %30 = bitcast %struct.RClass* %29 to %struct.RProc*
  %31 = call i32 @mrb_obj_value(%struct.RProc* %30)
  %32 = call i32 @mrb_obj_iv_set(i32* %24, %struct.RProc* %26, i32 %28, i32 %31)
  %33 = load i32*, i32** %3, align 8
  %34 = load %struct.RObject*, %struct.RObject** %7, align 8
  %35 = bitcast %struct.RObject* %34 to %struct.RProc*
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @mrb_intern_lit(i32* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %38 = call i32 (...) @mrb_nil_value()
  %39 = call i32 @mrb_obj_iv_set(i32* %33, %struct.RProc* %35, i32 %37, i32 %38)
  %40 = load i32*, i32** %3, align 8
  %41 = load %struct.RObject*, %struct.RObject** %7, align 8
  %42 = bitcast %struct.RObject* %41 to %struct.RProc*
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @mrb_intern_lit(i32* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @mrb_symbol_value(i32 %45)
  %47 = call i32 @mrb_obj_iv_set(i32* %40, %struct.RProc* %42, i32 %44, i32 %46)
  %48 = load i32*, i32** %3, align 8
  %49 = load %struct.RObject*, %struct.RObject** %7, align 8
  %50 = bitcast %struct.RObject* %49 to %struct.RProc*
  %51 = load i32*, i32** %3, align 8
  %52 = call i32 @mrb_intern_lit(i32* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %53 = load %struct.RProc*, %struct.RProc** %6, align 8
  %54 = icmp ne %struct.RProc* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %2
  %56 = load %struct.RProc*, %struct.RProc** %6, align 8
  %57 = call i32 @mrb_obj_value(%struct.RProc* %56)
  br label %60

58:                                               ; preds = %2
  %59 = call i32 (...) @mrb_nil_value()
  br label %60

60:                                               ; preds = %58, %55
  %61 = phi i32 [ %57, %55 ], [ %59, %58 ]
  %62 = call i32 @mrb_obj_iv_set(i32* %48, %struct.RProc* %50, i32 %52, i32 %61)
  %63 = load i32*, i32** %3, align 8
  %64 = load %struct.RObject*, %struct.RObject** %7, align 8
  %65 = bitcast %struct.RObject* %64 to %struct.RProc*
  %66 = load i32*, i32** %3, align 8
  %67 = call i32 @mrb_intern_lit(i32* %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @mrb_obj_iv_set(i32* %63, %struct.RProc* %65, i32 %67, i32 %68)
  %70 = load %struct.RObject*, %struct.RObject** %7, align 8
  %71 = bitcast %struct.RObject* %70 to %struct.RProc*
  %72 = call i32 @mrb_obj_value(%struct.RProc* %71)
  ret i32 %72
}

declare dso_local i32 @mrb_get_args(i32*, i8*, i32*) #1

declare dso_local i32 @mrb_search_method_owner(i32*, i32, i32, i32, %struct.RProc**, %struct.RProc**, i32) #1

declare dso_local i32 @mrb_class_ptr(i32) #1

declare dso_local %struct.RProc* @method_object_alloc(i32*, i32) #1

declare dso_local i32 @mrb_class_get(i32*, i8*) #1

declare dso_local i32 @mrb_obj_iv_set(i32*, %struct.RProc*, i32, i32) #1

declare dso_local i32 @mrb_intern_lit(i32*, i8*) #1

declare dso_local i32 @mrb_obj_value(%struct.RProc*) #1

declare dso_local i32 @mrb_nil_value(...) #1

declare dso_local i32 @mrb_symbol_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
