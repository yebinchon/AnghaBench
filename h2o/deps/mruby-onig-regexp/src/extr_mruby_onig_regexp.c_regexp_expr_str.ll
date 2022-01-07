; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby-onig-regexp/src/extr_mruby_onig_regexp.c_regexp_expr_str.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby-onig-regexp/src/extr_mruby_onig_regexp.c_regexp_expr_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i32)* @regexp_expr_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regexp_expr_str(i32* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca [5 x i8], align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %13, i64 %15
  store i8* %16, i8** %9, align 8
  br label %17

17:                                               ; preds = %96, %4
  %18 = load i8*, i8** %7, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = icmp ult i8* %18, %19
  br i1 %20, label %21, label %99

21:                                               ; preds = %17
  %22 = load i8*, i8** %7, align 8
  %23 = load i8, i8* %22, align 1
  store i8 %23, i8* %11, align 1
  %24 = load i8, i8* %11, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp eq i32 %25, 47
  br i1 %26, label %27, label %35

27:                                               ; preds = %21
  %28 = getelementptr inbounds [5 x i8], [5 x i8]* %10, i64 0, i64 0
  store i8 92, i8* %28, align 1
  %29 = load i8, i8* %11, align 1
  %30 = getelementptr inbounds [5 x i8], [5 x i8]* %10, i64 0, i64 1
  store i8 %29, i8* %30, align 1
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = getelementptr inbounds [5 x i8], [5 x i8]* %10, i64 0, i64 0
  %34 = call i32 @mrb_str_cat(i32* %31, i32 %32, i8* %33, i32 2)
  br label %96

35:                                               ; preds = %21
  %36 = load i8, i8* %11, align 1
  %37 = call i64 @ISPRINT(i8 zeroext %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %35
  %40 = load i8, i8* %11, align 1
  %41 = getelementptr inbounds [5 x i8], [5 x i8]* %10, i64 0, i64 0
  store i8 %40, i8* %41, align 1
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = getelementptr inbounds [5 x i8], [5 x i8]* %10, i64 0, i64 0
  %45 = call i32 @mrb_str_cat(i32* %42, i32 %43, i8* %44, i32 1)
  br label %96

46:                                               ; preds = %35
  %47 = load i8, i8* %11, align 1
  %48 = zext i8 %47 to i32
  switch i32 %48, label %52 [
    i32 10, label %49
    i32 13, label %50
    i32 9, label %51
  ]

49:                                               ; preds = %46
  store i8 110, i8* %12, align 1
  br label %53

50:                                               ; preds = %46
  store i8 114, i8* %12, align 1
  br label %53

51:                                               ; preds = %46
  store i8 116, i8* %12, align 1
  br label %53

52:                                               ; preds = %46
  store i8 0, i8* %12, align 1
  br label %53

53:                                               ; preds = %52, %51, %50, %49
  %54 = load i8, i8* %12, align 1
  %55 = icmp ne i8 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = getelementptr inbounds [5 x i8], [5 x i8]* %10, i64 0, i64 0
  store i8 92, i8* %57, align 1
  %58 = load i8, i8* %12, align 1
  %59 = getelementptr inbounds [5 x i8], [5 x i8]* %10, i64 0, i64 1
  store i8 %58, i8* %59, align 1
  %60 = load i32*, i32** %5, align 8
  %61 = load i32, i32* %6, align 4
  %62 = getelementptr inbounds [5 x i8], [5 x i8]* %10, i64 0, i64 0
  %63 = call i32 @mrb_str_cat(i32* %60, i32 %61, i8* %62, i32 2)
  br label %96

64:                                               ; preds = %53
  %65 = getelementptr inbounds [5 x i8], [5 x i8]* %10, i64 0, i64 0
  store i8 92, i8* %65, align 1
  %66 = load i8, i8* %11, align 1
  %67 = zext i8 %66 to i32
  %68 = srem i32 %67, 8
  %69 = add nsw i32 48, %68
  %70 = trunc i32 %69 to i8
  %71 = getelementptr inbounds [5 x i8], [5 x i8]* %10, i64 0, i64 3
  store i8 %70, i8* %71, align 1
  %72 = load i8, i8* %11, align 1
  %73 = zext i8 %72 to i32
  %74 = sdiv i32 %73, 8
  %75 = trunc i32 %74 to i8
  store i8 %75, i8* %11, align 1
  %76 = load i8, i8* %11, align 1
  %77 = zext i8 %76 to i32
  %78 = srem i32 %77, 8
  %79 = add nsw i32 48, %78
  %80 = trunc i32 %79 to i8
  %81 = getelementptr inbounds [5 x i8], [5 x i8]* %10, i64 0, i64 2
  store i8 %80, i8* %81, align 1
  %82 = load i8, i8* %11, align 1
  %83 = zext i8 %82 to i32
  %84 = sdiv i32 %83, 8
  %85 = trunc i32 %84 to i8
  store i8 %85, i8* %11, align 1
  %86 = load i8, i8* %11, align 1
  %87 = zext i8 %86 to i32
  %88 = srem i32 %87, 8
  %89 = add nsw i32 48, %88
  %90 = trunc i32 %89 to i8
  %91 = getelementptr inbounds [5 x i8], [5 x i8]* %10, i64 0, i64 1
  store i8 %90, i8* %91, align 1
  %92 = load i32*, i32** %5, align 8
  %93 = load i32, i32* %6, align 4
  %94 = getelementptr inbounds [5 x i8], [5 x i8]* %10, i64 0, i64 0
  %95 = call i32 @mrb_str_cat(i32* %92, i32 %93, i8* %94, i32 4)
  br label %96

96:                                               ; preds = %64, %56, %39, %27
  %97 = load i8*, i8** %7, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %7, align 8
  br label %17

99:                                               ; preds = %17
  %100 = load i32, i32* %6, align 4
  ret i32 %100
}

declare dso_local i32 @mrb_str_cat(i32*, i32, i8*, i32) #1

declare dso_local i64 @ISPRINT(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
