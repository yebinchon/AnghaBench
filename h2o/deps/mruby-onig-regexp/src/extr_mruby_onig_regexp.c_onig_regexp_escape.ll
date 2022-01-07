; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby-onig-regexp/src/extr_mruby_onig_regexp.c_onig_regexp_escape.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby-onig-regexp/src/extr_mruby_onig_regexp.c_onig_regexp_escape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @onig_regexp_escape to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @onig_regexp_escape(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca [2 x i8], align 1
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @mrb_get_args(i32* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %5, i32* %6)
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @mrb_str_new(i32* %14, i32* null, i32 0)
  store i32 %15, i32* %7, align 4
  store i8 0, i8* %8, align 1
  store i32 0, i32* %9, align 4
  %16 = load i8*, i8** %5, align 8
  store i8* %16, i8** %10, align 8
  br label %17

17:                                               ; preds = %55, %2
  %18 = load i8*, i8** %10, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = icmp ult i8* %18, %22
  br i1 %23, label %24, label %58

24:                                               ; preds = %17
  %25 = load i8*, i8** %10, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  switch i32 %27, label %35 [
    i32 10, label %28
    i32 9, label %29
    i32 13, label %30
    i32 12, label %31
    i32 32, label %32
    i32 35, label %32
    i32 36, label %32
    i32 40, label %32
    i32 41, label %32
    i32 42, label %32
    i32 43, label %32
    i32 45, label %32
    i32 46, label %32
    i32 63, label %32
    i32 91, label %32
    i32 92, label %32
    i32 93, label %32
    i32 94, label %32
    i32 123, label %32
    i32 124, label %32
    i32 125, label %32
  ]

28:                                               ; preds = %24
  store i8 110, i8* %8, align 1
  br label %38

29:                                               ; preds = %24
  store i8 116, i8* %8, align 1
  br label %38

30:                                               ; preds = %24
  store i8 114, i8* %8, align 1
  br label %38

31:                                               ; preds = %24
  store i8 102, i8* %8, align 1
  br label %38

32:                                               ; preds = %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24
  %33 = load i8*, i8** %10, align 8
  %34 = load i8, i8* %33, align 1
  store i8 %34, i8* %8, align 1
  br label %38

35:                                               ; preds = %24
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %9, align 4
  br label %55

38:                                               ; preds = %32, %31, %30, %29, %28
  %39 = load i32*, i32** %3, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i8*, i8** %10, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = sub i64 0, %43
  %45 = getelementptr inbounds i8, i8* %41, i64 %44
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @mrb_str_cat(i32* %39, i32 %40, i8* %45, i32 %46)
  store i32 0, i32* %9, align 4
  %48 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  store i8 92, i8* %48, align 1
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  %50 = load i8, i8* %8, align 1
  store i8 %50, i8* %49, align 1
  %51 = load i32*, i32** %3, align 8
  %52 = load i32, i32* %7, align 4
  %53 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %54 = call i32 @mrb_str_cat(i32* %51, i32 %52, i8* %53, i32 2)
  br label %55

55:                                               ; preds = %38, %35
  %56 = load i8*, i8** %10, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %10, align 8
  br label %17

58:                                               ; preds = %17
  %59 = load i32*, i32** %3, align 8
  %60 = load i32, i32* %7, align 4
  %61 = load i8*, i8** %10, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = sub i64 0, %63
  %65 = getelementptr inbounds i8, i8* %61, i64 %64
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @mrb_str_cat(i32* %59, i32 %60, i8* %65, i32 %66)
  %68 = load i32, i32* %7, align 4
  ret i32 %68
}

declare dso_local i32 @mrb_get_args(i32*, i8*, i8**, i32*) #1

declare dso_local i32 @mrb_str_new(i32*, i32*, i32) #1

declare dso_local i32 @mrb_str_cat(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
