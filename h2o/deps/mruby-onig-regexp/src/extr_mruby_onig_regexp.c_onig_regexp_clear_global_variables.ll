; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby-onig-regexp/src/extr_mruby_onig_regexp.c_onig_regexp_clear_global_variables.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby-onig-regexp/src/extr_mruby_onig_regexp.c_onig_regexp_clear_global_variables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"$~\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"$&\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"$`\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"$'\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"$+\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @onig_regexp_clear_global_variables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @onig_regexp_clear_global_variables(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [2 x i8], align 1
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @mrb_intern_lit(i32* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 @mrb_gv_remove(i32* %7, i32 %9)
  %11 = load i32*, i32** %3, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @mrb_intern_lit(i32* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %14 = call i32 @mrb_gv_remove(i32* %11, i32 %13)
  %15 = load i32*, i32** %3, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @mrb_intern_lit(i32* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %18 = call i32 @mrb_gv_remove(i32* %15, i32 %17)
  %19 = load i32*, i32** %3, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @mrb_intern_lit(i32* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %22 = call i32 @mrb_gv_remove(i32* %19, i32 %21)
  %23 = load i32*, i32** %3, align 8
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @mrb_intern_lit(i32* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %26 = call i32 @mrb_gv_remove(i32* %23, i32 %25)
  store i32 1, i32* %5, align 4
  br label %27

27:                                               ; preds = %41, %2
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %28, 10
  br i1 %29, label %30, label %44

30:                                               ; preds = %27
  %31 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  store i8 36, i8* %31, align 1
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 48, %33
  %35 = trunc i32 %34 to i8
  store i8 %35, i8* %32, align 1
  %36 = load i32*, i32** %3, align 8
  %37 = load i32*, i32** %3, align 8
  %38 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %39 = call i32 @mrb_intern(i32* %37, i8* %38, i32 2)
  %40 = call i32 @mrb_gv_remove(i32* %36, i32 %39)
  br label %41

41:                                               ; preds = %30
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %27

44:                                               ; preds = %27
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @mrb_gv_remove(i32*, i32) #1

declare dso_local i32 @mrb_intern_lit(i32*, i8*) #1

declare dso_local i32 @mrb_intern(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
