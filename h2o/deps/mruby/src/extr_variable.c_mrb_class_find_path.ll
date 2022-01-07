; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/src/extr_variable.c_mrb_class_find_path.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/src/extr_variable.c_mrb_class_find_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RClass = type { i32 }
%struct.RBasic = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"::\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"__outer__\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"__classname__\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mrb_class_find_path(i32* %0, %struct.RClass* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.RClass*, align 8
  %6 = alloca %struct.RClass*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.RClass* %1, %struct.RClass** %5, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load %struct.RClass*, %struct.RClass** %5, align 8
  %13 = call i64 @detect_outer_loop(i32* %11, %struct.RClass* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = call i32 (...) @mrb_nil_value()
  store i32 %16, i32* %3, align 4
  br label %84

17:                                               ; preds = %2
  %18 = load i32*, i32** %4, align 8
  %19 = load %struct.RClass*, %struct.RClass** %5, align 8
  %20 = call %struct.RClass* @outer_class(i32* %18, %struct.RClass* %19)
  store %struct.RClass* %20, %struct.RClass** %6, align 8
  %21 = load %struct.RClass*, %struct.RClass** %6, align 8
  %22 = icmp eq %struct.RClass* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = call i32 (...) @mrb_nil_value()
  store i32 %24, i32* %3, align 4
  br label %84

25:                                               ; preds = %17
  %26 = load i32*, i32** %4, align 8
  %27 = load %struct.RClass*, %struct.RClass** %6, align 8
  %28 = load %struct.RClass*, %struct.RClass** %5, align 8
  %29 = call i64 @find_class_sym(i32* %26, %struct.RClass* %27, %struct.RClass* %28)
  store i64 %29, i64* %8, align 8
  %30 = load i64, i64* %8, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = call i32 (...) @mrb_nil_value()
  store i32 %33, i32* %3, align 4
  br label %84

34:                                               ; preds = %25
  %35 = load i32*, i32** %4, align 8
  %36 = load %struct.RClass*, %struct.RClass** %6, align 8
  %37 = call i8* @mrb_class_name(i32* %35, %struct.RClass* %36)
  store i8* %37, i8** %9, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @mrb_str_new_capa(i32* %38, i32 40)
  store i32 %39, i32* %7, align 4
  %40 = load i32*, i32** %4, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i8*, i8** %9, align 8
  %43 = call i32 @mrb_str_cat_cstr(i32* %40, i32 %41, i8* %42)
  %44 = load i32*, i32** %4, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @mrb_str_cat_cstr(i32* %44, i32 %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %47 = load i32*, i32** %4, align 8
  %48 = load i64, i64* %8, align 8
  %49 = call i8* @mrb_sym2name_len(i32* %47, i64 %48, i32* %10)
  store i8* %49, i8** %9, align 8
  %50 = load i32*, i32** %4, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load i8*, i8** %9, align 8
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @mrb_str_cat(i32* %50, i32 %51, i8* %52, i32 %53)
  %55 = load i32, i32* %7, align 4
  %56 = call i8* @RSTRING_PTR(i32 %55)
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 35
  br i1 %60, label %61, label %82

61:                                               ; preds = %34
  %62 = load i32*, i32** %4, align 8
  %63 = load %struct.RClass*, %struct.RClass** %5, align 8
  %64 = getelementptr inbounds %struct.RClass, %struct.RClass* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %4, align 8
  %67 = call i32 @mrb_intern_lit(i32* %66, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %68 = call i32 @iv_del(i32* %62, i32 %65, i32 %67, i32* null)
  %69 = load i32*, i32** %4, align 8
  %70 = load %struct.RClass*, %struct.RClass** %5, align 8
  %71 = getelementptr inbounds %struct.RClass, %struct.RClass* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %4, align 8
  %74 = call i32 @mrb_intern_lit(i32* %73, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @iv_put(i32* %69, i32 %72, i32 %74, i32 %75)
  %77 = load i32*, i32** %4, align 8
  %78 = load %struct.RClass*, %struct.RClass** %5, align 8
  %79 = bitcast %struct.RClass* %78 to %struct.RBasic*
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @mrb_field_write_barrier_value(i32* %77, %struct.RBasic* %79, i32 %80)
  br label %82

82:                                               ; preds = %61, %34
  %83 = load i32, i32* %7, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %82, %32, %23, %15
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i64 @detect_outer_loop(i32*, %struct.RClass*) #1

declare dso_local i32 @mrb_nil_value(...) #1

declare dso_local %struct.RClass* @outer_class(i32*, %struct.RClass*) #1

declare dso_local i64 @find_class_sym(i32*, %struct.RClass*, %struct.RClass*) #1

declare dso_local i8* @mrb_class_name(i32*, %struct.RClass*) #1

declare dso_local i32 @mrb_str_new_capa(i32*, i32) #1

declare dso_local i32 @mrb_str_cat_cstr(i32*, i32, i8*) #1

declare dso_local i8* @mrb_sym2name_len(i32*, i64, i32*) #1

declare dso_local i32 @mrb_str_cat(i32*, i32, i8*, i32) #1

declare dso_local i8* @RSTRING_PTR(i32) #1

declare dso_local i32 @iv_del(i32*, i32, i32, i32*) #1

declare dso_local i32 @mrb_intern_lit(i32*, i8*) #1

declare dso_local i32 @iv_put(i32*, i32, i32, i32) #1

declare dso_local i32 @mrb_field_write_barrier_value(i32*, %struct.RBasic*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
