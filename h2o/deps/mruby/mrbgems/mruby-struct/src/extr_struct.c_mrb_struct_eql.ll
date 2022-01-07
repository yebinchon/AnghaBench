; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-struct/src/extr_struct.c_mrb_struct_eql.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-struct/src/extr_struct.c_mrb_struct_eql.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"o\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"inconsistent struct\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mrb_struct_eql to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_struct_eql(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @mrb_get_args(i32* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %6)
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i64 @mrb_obj_equal(i32* %13, i32 %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = call i32 (...) @mrb_true_value()
  store i32 %19, i32* %3, align 4
  br label %70

20:                                               ; preds = %2
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @mrb_obj_class(i32* %21, i32 %22)
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i64 @mrb_obj_class(i32* %24, i32 %25)
  %27 = icmp ne i64 %23, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = call i32 (...) @mrb_false_value()
  store i32 %29, i32* %3, align 4
  br label %70

30:                                               ; preds = %20
  %31 = load i32, i32* %5, align 4
  %32 = call i64 @RSTRUCT_LEN(i32 %31)
  %33 = load i32, i32* %6, align 4
  %34 = call i64 @RSTRUCT_LEN(i32 %33)
  %35 = icmp ne i64 %32, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @mrb_bug(i32* %37, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %30
  %40 = load i32, i32* %5, align 4
  %41 = call i32* @RSTRUCT_PTR(i32 %40)
  store i32* %41, i32** %7, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32* @RSTRUCT_PTR(i32 %42)
  store i32* %43, i32** %8, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i64 @RSTRUCT_LEN(i32 %44)
  store i64 %45, i64* %10, align 8
  store i64 0, i64* %9, align 8
  br label %46

46:                                               ; preds = %65, %39
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* %10, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %50, label %68

50:                                               ; preds = %46
  %51 = load i32*, i32** %4, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = load i64, i64* %9, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %8, align 8
  %57 = load i64, i64* %9, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @mrb_eql(i32* %51, i32 %55, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %50
  %63 = call i32 (...) @mrb_false_value()
  store i32 %63, i32* %3, align 4
  br label %70

64:                                               ; preds = %50
  br label %65

65:                                               ; preds = %64
  %66 = load i64, i64* %9, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %9, align 8
  br label %46

68:                                               ; preds = %46
  %69 = call i32 (...) @mrb_true_value()
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %68, %62, %28, %18
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @mrb_get_args(i32*, i8*, i32*) #1

declare dso_local i64 @mrb_obj_equal(i32*, i32, i32) #1

declare dso_local i32 @mrb_true_value(...) #1

declare dso_local i64 @mrb_obj_class(i32*, i32) #1

declare dso_local i32 @mrb_false_value(...) #1

declare dso_local i64 @RSTRUCT_LEN(i32) #1

declare dso_local i32 @mrb_bug(i32*, i8*) #1

declare dso_local i32* @RSTRUCT_PTR(i32) #1

declare dso_local i32 @mrb_eql(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
