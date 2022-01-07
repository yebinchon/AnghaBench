; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-method/src/extr_method.c_mrb_kernel_method.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-method/src/extr_method.c_mrb_kernel_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RClass = type opaque
%struct.RProc = type { i32 }
%struct.RObject = type opaque

@.str = private unnamed_addr constant [2 x i8] c"n\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"Method\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"@owner\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"@recv\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"@name\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"proc\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"@klass\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mrb_kernel_method to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_kernel_method(i32* %0, i32 %1) #0 {
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
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call %struct.RProc* @mrb_class(i32* %12, i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %8, align 4
  %17 = bitcast %struct.RClass** %5 to %struct.RProc**
  %18 = load i32, i32* @FALSE, align 4
  %19 = call i32 @mrb_search_method_owner(i32* %11, %struct.RProc* %14, i32 %15, i32 %16, %struct.RProc** %17, %struct.RProc** %6, i32 %18)
  %20 = load i32*, i32** %3, align 8
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @mrb_class_get(i32* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %23 = call %struct.RProc* @method_object_alloc(i32* %20, i32 %22)
  %24 = bitcast %struct.RProc* %23 to %struct.RObject*
  store %struct.RObject* %24, %struct.RObject** %7, align 8
  %25 = load i32*, i32** %3, align 8
  %26 = load %struct.RObject*, %struct.RObject** %7, align 8
  %27 = bitcast %struct.RObject* %26 to %struct.RProc*
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @mrb_intern_lit(i32* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %30 = load %struct.RClass*, %struct.RClass** %5, align 8
  %31 = bitcast %struct.RClass* %30 to %struct.RProc*
  %32 = call i32 @mrb_obj_value(%struct.RProc* %31)
  %33 = call i32 @mrb_obj_iv_set(i32* %25, %struct.RProc* %27, i32 %29, i32 %32)
  %34 = load i32*, i32** %3, align 8
  %35 = load %struct.RObject*, %struct.RObject** %7, align 8
  %36 = bitcast %struct.RObject* %35 to %struct.RProc*
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @mrb_intern_lit(i32* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @mrb_obj_iv_set(i32* %34, %struct.RProc* %36, i32 %38, i32 %39)
  %41 = load i32*, i32** %3, align 8
  %42 = load %struct.RObject*, %struct.RObject** %7, align 8
  %43 = bitcast %struct.RObject* %42 to %struct.RProc*
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @mrb_intern_lit(i32* %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @mrb_symbol_value(i32 %46)
  %48 = call i32 @mrb_obj_iv_set(i32* %41, %struct.RProc* %43, i32 %45, i32 %47)
  %49 = load i32*, i32** %3, align 8
  %50 = load %struct.RObject*, %struct.RObject** %7, align 8
  %51 = bitcast %struct.RObject* %50 to %struct.RProc*
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 @mrb_intern_lit(i32* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %54 = load %struct.RProc*, %struct.RProc** %6, align 8
  %55 = icmp ne %struct.RProc* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %2
  %57 = load %struct.RProc*, %struct.RProc** %6, align 8
  %58 = call i32 @mrb_obj_value(%struct.RProc* %57)
  br label %61

59:                                               ; preds = %2
  %60 = call i32 (...) @mrb_nil_value()
  br label %61

61:                                               ; preds = %59, %56
  %62 = phi i32 [ %58, %56 ], [ %60, %59 ]
  %63 = call i32 @mrb_obj_iv_set(i32* %49, %struct.RProc* %51, i32 %53, i32 %62)
  %64 = load i32*, i32** %3, align 8
  %65 = load %struct.RObject*, %struct.RObject** %7, align 8
  %66 = bitcast %struct.RObject* %65 to %struct.RProc*
  %67 = load i32*, i32** %3, align 8
  %68 = call i32 @mrb_intern_lit(i32* %67, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %69 = load i32*, i32** %3, align 8
  %70 = load i32, i32* %4, align 4
  %71 = call %struct.RProc* @mrb_class(i32* %69, i32 %70)
  %72 = call i32 @mrb_obj_value(%struct.RProc* %71)
  %73 = call i32 @mrb_obj_iv_set(i32* %64, %struct.RProc* %66, i32 %68, i32 %72)
  %74 = load %struct.RObject*, %struct.RObject** %7, align 8
  %75 = bitcast %struct.RObject* %74 to %struct.RProc*
  %76 = call i32 @mrb_obj_value(%struct.RProc* %75)
  ret i32 %76
}

declare dso_local i32 @mrb_get_args(i32*, i8*, i32*) #1

declare dso_local i32 @mrb_search_method_owner(i32*, %struct.RProc*, i32, i32, %struct.RProc**, %struct.RProc**, i32) #1

declare dso_local %struct.RProc* @mrb_class(i32*, i32) #1

declare dso_local %struct.RProc* @method_object_alloc(i32*, i32) #1

declare dso_local i32 @mrb_class_get(i32*, i8*) #1

declare dso_local i32 @mrb_obj_iv_set(i32*, %struct.RProc*, i32, i32) #1

declare dso_local i32 @mrb_intern_lit(i32*, i8*) #1

declare dso_local i32 @mrb_obj_value(%struct.RProc*) #1

declare dso_local i32 @mrb_symbol_value(i32) #1

declare dso_local i32 @mrb_nil_value(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
