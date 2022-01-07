; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-string-ext/src/extr_string.c_mrb_str_del_prefix.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-string-ext/src/extr_string.c_mrb_str_del_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mrb_str_del_prefix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_str_del_prefix(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @mrb_get_args(i32* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %8, i64* %6)
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @RSTRING_LEN(i32 %11)
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @mrb_str_dup(i32* %17, i32 %18)
  store i32 %19, i32* %3, align 4
  br label %39

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @RSTRING_PTR(i32 %21)
  %23 = load i8*, i8** %8, align 8
  %24 = load i64, i64* %6, align 8
  %25 = call i64 @memcmp(i32 %22, i8* %23, i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @mrb_str_dup(i32* %28, i32 %29)
  store i32 %30, i32* %3, align 4
  br label %39

31:                                               ; preds = %20
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* %6, align 8
  %37 = sub nsw i64 %35, %36
  %38 = call i32 @mrb_str_substr(i32* %32, i32 %33, i64 %34, i64 %37)
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %31, %27, %16
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @mrb_get_args(i32*, i8*, i8**, i64*) #1

declare dso_local i64 @RSTRING_LEN(i32) #1

declare dso_local i32 @mrb_str_dup(i32*, i32) #1

declare dso_local i64 @memcmp(i32, i8*, i64) #1

declare dso_local i32 @RSTRING_PTR(i32) #1

declare dso_local i32 @mrb_str_substr(i32*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
