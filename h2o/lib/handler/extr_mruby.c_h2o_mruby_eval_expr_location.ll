; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/extr_mruby.c_h2o_mruby_eval_expr_location.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/extr_mruby.c_h2o_mruby_eval_expr_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"eval\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @h2o_mruby_eval_expr_location(i32* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @mrb_top_self(i32* %10)
  %12 = load i32*, i32** %5, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @mrb_str_new_cstr(i32* %12, i8* %13)
  %15 = call i32 (...) @mrb_nil_value()
  %16 = load i32*, i32** %5, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 @mrb_str_new_cstr(i32* %16, i8* %17)
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @mrb_fixnum_value(i32 %19)
  %21 = call i32 @mrb_funcall(i32* %9, i32 %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4, i32 %14, i32 %15, i32 %18, i32 %20)
  ret i32 %21
}

declare dso_local i32 @mrb_funcall(i32*, i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mrb_top_self(i32*) #1

declare dso_local i32 @mrb_str_new_cstr(i32*, i8*) #1

declare dso_local i32 @mrb_nil_value(...) #1

declare dso_local i32 @mrb_fixnum_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
