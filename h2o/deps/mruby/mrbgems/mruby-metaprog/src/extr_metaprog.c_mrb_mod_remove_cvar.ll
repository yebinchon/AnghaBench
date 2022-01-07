; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-metaprog/src/extr_metaprog.c_mrb_mod_remove_cvar.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-metaprog/src/extr_metaprog.c_mrb_mod_remove_cvar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"cannot remove %S for %S\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"class variable %S not defined for %S\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mrb_mod_remove_cvar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_mod_remove_cvar(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @mrb_get_args(i32* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %7)
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @check_cv_name_sym(i32* %10, i32 %11)
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @mrb_iv_remove(i32* %13, i32 %14, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @mrb_undef_p(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %45

22:                                               ; preds = %2
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i64 @mrb_cv_defined(i32* %23, i32 %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %22
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @mrb_sym2str(i32* %31, i32 %32)
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @mrb_name_error(i32* %29, i32 %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %28, %22
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @mrb_sym2str(i32* %39, i32 %40)
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @mrb_name_error(i32* %37, i32 %38, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %41, i32 %42)
  %44 = call i32 (...) @mrb_nil_value()
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %36, %20
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @mrb_get_args(i32*, i8*, i32*) #1

declare dso_local i32 @check_cv_name_sym(i32*, i32) #1

declare dso_local i32 @mrb_iv_remove(i32*, i32, i32) #1

declare dso_local i32 @mrb_undef_p(i32) #1

declare dso_local i64 @mrb_cv_defined(i32*, i32, i32) #1

declare dso_local i32 @mrb_name_error(i32*, i32, i8*, i32, i32) #1

declare dso_local i32 @mrb_sym2str(i32*, i32) #1

declare dso_local i32 @mrb_nil_value(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
