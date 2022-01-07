; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby-onig-regexp/src/extr_mruby_onig_regexp.c_match_data_index.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby-onig-regexp/src/extr_mruby_onig_regexp.c_match_data_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"[]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @match_data_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_data_index(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @mrb_get_args(i32* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32** %8, i32* %7)
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @match_data_to_a(i32* %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %32

16:                                               ; preds = %2
  %17 = load i32*, i32** %8, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @mrb_type(i32 %19)
  switch i32 %20, label %30 [
    i32 130, label %21
    i32 128, label %21
    i32 129, label %21
  ]

21:                                               ; preds = %16, %16, %16
  %22 = load i32, i32* %6, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32*, i32** %8, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @match_data_actual_index(i32* %23, i32 %24, i32 %27)
  %29 = call i32 @mrb_ary_entry(i32 %22, i32 %28)
  store i32 %29, i32* %3, align 4
  br label %40

30:                                               ; preds = %16
  br label %31

31:                                               ; preds = %30
  br label %32

32:                                               ; preds = %31, %2
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @mrb_intern_lit(i32* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* %7, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = call i32 @mrb_funcall_argv(i32* %33, i32 %34, i32 %36, i32 %37, i32* %38)
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %32, %21
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @mrb_get_args(i32*, i8*, i32**, i32*) #1

declare dso_local i32 @match_data_to_a(i32*, i32) #1

declare dso_local i32 @mrb_type(i32) #1

declare dso_local i32 @mrb_ary_entry(i32, i32) #1

declare dso_local i32 @match_data_actual_index(i32*, i32, i32) #1

declare dso_local i32 @mrb_funcall_argv(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @mrb_intern_lit(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
