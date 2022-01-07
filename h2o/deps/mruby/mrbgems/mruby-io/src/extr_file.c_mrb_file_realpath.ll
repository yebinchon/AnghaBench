; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-io/src/extr_file.c_mrb_file_realpath.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-io/src/extr_file.c_mrb_file_realpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"S|S\00", align 1
@FILE_SEPARATOR = common dso_local global i32 0, align 4
@PATH_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mrb_file_realpath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_file_realpath(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @mrb_get_args(i32* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %5, i32* %6)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %30

15:                                               ; preds = %2
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @mrb_str_dup(i32* %16, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32*, i32** %3, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* @FILE_SEPARATOR, align 4
  %23 = call i32 @mrb_str_new_cstr(i32* %21, i32 %22)
  %24 = call i32 @mrb_str_append(i32* %19, i32 %20, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @mrb_str_append(i32* %25, i32 %26, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %15, %2
  %31 = load i32*, i32** %3, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @mrb_str_to_cstr(i32* %31, i32 %32)
  %34 = call i8* @mrb_locale_from_utf8(i32 %33, i32 -1)
  store i8* %34, i8** %10, align 8
  %35 = load i32*, i32** %3, align 8
  %36 = load i32, i32* @PATH_MAX, align 4
  %37 = call i32 @mrb_str_buf_new(i32* %35, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i8*, i8** %10, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @RSTRING_PTR(i32 %39)
  %41 = call i32* @realpath(i8* %38, i32 %40)
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %30
  %44 = load i8*, i8** %10, align 8
  %45 = call i32 @mrb_locale_free(i8* %44)
  %46 = load i32*, i32** %3, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = call i32 @mrb_sys_fail(i32* %46, i8* %47)
  br label %49

49:                                               ; preds = %43, %30
  %50 = load i8*, i8** %10, align 8
  %51 = call i32 @mrb_locale_free(i8* %50)
  %52 = load i32*, i32** %3, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @RSTRING_PTR(i32 %54)
  %56 = call i32 @strlen(i32 %55)
  %57 = call i32 @mrb_str_resize(i32* %52, i32 %53, i32 %56)
  %58 = load i32, i32* %8, align 4
  ret i32 %58
}

declare dso_local i32 @mrb_get_args(i32*, i8*, i32*, i32*) #1

declare dso_local i32 @mrb_str_dup(i32*, i32) #1

declare dso_local i32 @mrb_str_append(i32*, i32, i32) #1

declare dso_local i32 @mrb_str_new_cstr(i32*, i32) #1

declare dso_local i8* @mrb_locale_from_utf8(i32, i32) #1

declare dso_local i32 @mrb_str_to_cstr(i32*, i32) #1

declare dso_local i32 @mrb_str_buf_new(i32*, i32) #1

declare dso_local i32* @realpath(i8*, i32) #1

declare dso_local i32 @RSTRING_PTR(i32) #1

declare dso_local i32 @mrb_locale_free(i8*) #1

declare dso_local i32 @mrb_sys_fail(i32*, i8*) #1

declare dso_local i32 @mrb_str_resize(i32*, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
