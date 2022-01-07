; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-io/src/extr_io.c_mrb_cloexec_open.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-io/src/extr_io.c_mrb_cloexec_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"open %S\00", align 1
@O_CLOEXEC = common dso_local global i64 0, align 8
@O_NOINHERIT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mrb_cloexec_open(i32* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %11, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = call i8* @mrb_locale_from_utf8(i8* %14, i32 -1)
  store i8* %15, i8** %12, align 8
  br label %16

16:                                               ; preds = %30, %4
  %17 = load i8*, i8** %12, align 8
  %18 = load i64, i64* %7, align 8
  %19 = trunc i64 %18 to i32
  %20 = load i64, i64* %8, align 8
  %21 = trunc i64 %20 to i32
  %22 = call i32 @open(i8* %17, i32 %19, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %49

25:                                               ; preds = %16
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* @errno, align 4
  switch i32 %29, label %34 [
    i32 128, label %30
    i32 129, label %30
  ]

30:                                               ; preds = %28, %28
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @mrb_garbage_collect(i32* %31)
  %33 = load i32, i32* @TRUE, align 4
  store i32 %33, i32* %11, align 4
  br label %16

34:                                               ; preds = %28
  br label %35

35:                                               ; preds = %34, %25
  %36 = load i32*, i32** %5, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @mrb_str_new_cstr(i32* %37, i8* %38)
  %40 = call i32 @mrb_format(i32* %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @mrb_str_ptr(i32 %42)
  %44 = call i32 @mrb_str_modify(i32* %41, i32 %43)
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @RSTRING_PTR(i32 %46)
  %48 = call i32 @mrb_sys_fail(i32* %45, i32 %47)
  br label %49

49:                                               ; preds = %35, %16
  %50 = load i8*, i8** %12, align 8
  %51 = call i32 @mrb_locale_free(i8* %50)
  %52 = load i32, i32* %10, align 4
  %53 = icmp sle i32 %52, 2
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @mrb_fd_cloexec(i32* %55, i32 %56)
  br label %58

58:                                               ; preds = %54, %49
  %59 = load i32, i32* %10, align 4
  ret i32 %59
}

declare dso_local i8* @mrb_locale_from_utf8(i8*, i32) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @mrb_garbage_collect(i32*) #1

declare dso_local i32 @mrb_format(i32*, i8*, i32) #1

declare dso_local i32 @mrb_str_new_cstr(i32*, i8*) #1

declare dso_local i32 @mrb_str_modify(i32*, i32) #1

declare dso_local i32 @mrb_str_ptr(i32) #1

declare dso_local i32 @mrb_sys_fail(i32*, i32) #1

declare dso_local i32 @RSTRING_PTR(i32) #1

declare dso_local i32 @mrb_locale_free(i8*) #1

declare dso_local i32 @mrb_fd_cloexec(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
