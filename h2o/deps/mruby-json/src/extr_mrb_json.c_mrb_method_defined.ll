; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby-json/src/extr_mrb_json.c_mrb_method_defined.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby-json/src/extr_mrb_json.c_mrb_method_defined.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"public_methods\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*)* @mrb_method_defined to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_method_defined(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @mrb_gc_arena_save(i32* %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i64 @mrb_intern_cstr(i32* %14, i8* %15)
  store i64 %16, i64* %8, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 (...) @mrb_false_value()
  %20 = call i32 @mrb_funcall(i32* %17, i32 %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 1, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i64 @mrb_array_p(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %47

25:                                               ; preds = %3
  store i64 0, i64* %11, align 8
  br label %26

26:                                               ; preds = %43, %25
  %27 = load i64, i64* %11, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i64 @RARRAY_LEN(i32 %28)
  %30 = icmp ult i64 %27, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %26
  %32 = load i64, i64* %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i32* @RARRAY_PTR(i32 %33)
  %35 = load i64, i64* %11, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @mrb_symbol(i32 %37)
  %39 = icmp eq i64 %32, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = load i32, i32* @TRUE, align 4
  store i32 %41, i32* %10, align 4
  br label %46

42:                                               ; preds = %31
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* %11, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %11, align 8
  br label %26

46:                                               ; preds = %40, %26
  br label %47

47:                                               ; preds = %46, %3
  %48 = load i32*, i32** %4, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @mrb_gc_arena_restore(i32* %48, i32 %49)
  %51 = load i32, i32* %10, align 4
  ret i32 %51
}

declare dso_local i32 @mrb_gc_arena_save(i32*) #1

declare dso_local i64 @mrb_intern_cstr(i32*, i8*) #1

declare dso_local i32 @mrb_funcall(i32*, i32, i8*, i32, i32) #1

declare dso_local i32 @mrb_false_value(...) #1

declare dso_local i64 @mrb_array_p(i32) #1

declare dso_local i64 @RARRAY_LEN(i32) #1

declare dso_local i64 @mrb_symbol(i32) #1

declare dso_local i32* @RARRAY_PTR(i32) #1

declare dso_local i32 @mrb_gc_arena_restore(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
