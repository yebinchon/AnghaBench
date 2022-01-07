; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/src/extr_class.c_mrb_class_name_class.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/src/extr_class.c_mrb_class_name_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.RClass* }
%struct.RClass = type { i32 }
%struct.RObject = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"__classname__\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"__outer__\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"::\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mrb_class_name_class(%struct.TYPE_9__* %0, %struct.RClass* %1, %struct.RClass* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.RClass*, align 8
  %7 = alloca %struct.RClass*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store %struct.RClass* %1, %struct.RClass** %6, align 8
  store %struct.RClass* %2, %struct.RClass** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %12 = call i32 @mrb_intern_lit(%struct.TYPE_9__* %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* %10, align 4
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %14 = load %struct.RClass*, %struct.RClass** %7, align 8
  %15 = bitcast %struct.RClass* %14 to %struct.RObject*
  %16 = load i32, i32* %10, align 4
  %17 = call i64 @mrb_obj_iv_defined(%struct.TYPE_9__* %13, %struct.RObject* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  br label %76

20:                                               ; preds = %4
  %21 = load %struct.RClass*, %struct.RClass** %6, align 8
  %22 = icmp eq %struct.RClass* %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %20
  %24 = load %struct.RClass*, %struct.RClass** %6, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load %struct.RClass*, %struct.RClass** %26, align 8
  %28 = icmp eq %struct.RClass* %24, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23, %20
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @mrb_symbol_value(i32 %30)
  store i32 %31, i32* %9, align 4
  br label %69

32:                                               ; preds = %23
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %34 = load %struct.RClass*, %struct.RClass** %6, align 8
  %35 = call i32 @mrb_class_path(%struct.TYPE_9__* %33, %struct.RClass* %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i64 @mrb_nil_p(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %59

39:                                               ; preds = %32
  %40 = load %struct.RClass*, %struct.RClass** %6, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load %struct.RClass*, %struct.RClass** %42, align 8
  %44 = icmp ne %struct.RClass* %40, %43
  br i1 %44, label %45, label %58

45:                                               ; preds = %39
  %46 = load %struct.RClass*, %struct.RClass** %6, align 8
  %47 = load %struct.RClass*, %struct.RClass** %7, align 8
  %48 = icmp ne %struct.RClass* %46, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %45
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %51 = load %struct.RClass*, %struct.RClass** %7, align 8
  %52 = bitcast %struct.RClass* %51 to %struct.RObject*
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %54 = call i32 @mrb_intern_lit(%struct.TYPE_9__* %53, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %55 = load %struct.RClass*, %struct.RClass** %6, align 8
  %56 = call i32 @mrb_obj_value(%struct.RClass* %55)
  %57 = call i32 @mrb_obj_iv_set(%struct.TYPE_9__* %50, %struct.RObject* %52, i32 %54, i32 %56)
  br label %58

58:                                               ; preds = %49, %45, %39
  br label %76

59:                                               ; preds = %32
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @mrb_str_cat_cstr(%struct.TYPE_9__* %60, i32 %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i8* @mrb_sym2name(%struct.TYPE_9__* %65, i32 %66)
  %68 = call i32 @mrb_str_cat_cstr(%struct.TYPE_9__* %63, i32 %64, i8* %67)
  br label %69

69:                                               ; preds = %59, %29
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %71 = load %struct.RClass*, %struct.RClass** %7, align 8
  %72 = bitcast %struct.RClass* %71 to %struct.RObject*
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @mrb_obj_iv_set(%struct.TYPE_9__* %70, %struct.RObject* %72, i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %69, %58, %19
  ret void
}

declare dso_local i32 @mrb_intern_lit(%struct.TYPE_9__*, i8*) #1

declare dso_local i64 @mrb_obj_iv_defined(%struct.TYPE_9__*, %struct.RObject*, i32) #1

declare dso_local i32 @mrb_symbol_value(i32) #1

declare dso_local i32 @mrb_class_path(%struct.TYPE_9__*, %struct.RClass*) #1

declare dso_local i64 @mrb_nil_p(i32) #1

declare dso_local i32 @mrb_obj_iv_set(%struct.TYPE_9__*, %struct.RObject*, i32, i32) #1

declare dso_local i32 @mrb_obj_value(%struct.RClass*) #1

declare dso_local i32 @mrb_str_cat_cstr(%struct.TYPE_9__*, i32, i8*) #1

declare dso_local i8* @mrb_sym2name(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
