; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-io/src/extr_file.c_mrb_file_s_symlink.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-io/src/extr_file.c_mrb_file_s_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"SS\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"(%S, %S)\00", align 1
@E_NOTIMP_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mrb_file_s_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_file_s_symlink(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @mrb_gc_arena_save(i32* %10)
  store i32 %11, i32* %9, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @mrb_get_args(i32* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %5, i32* %6)
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @mrb_str_to_cstr(i32* %14, i32 %15)
  %17 = call i8* @mrb_locale_from_utf8(i32 %16, i32 -1)
  store i8* %17, i8** %7, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @mrb_str_to_cstr(i32* %18, i32 %19)
  %21 = call i8* @mrb_locale_from_utf8(i32 %20, i32 -1)
  store i8* %21, i8** %8, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @symlink(i8* %22, i8* %23)
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %39

26:                                               ; preds = %2
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @mrb_locale_free(i8* %27)
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @mrb_locale_free(i8* %29)
  %31 = load i32*, i32** %3, align 8
  %32 = load i32*, i32** %3, align 8
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @mrb_format(i32* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %35)
  %37 = call i32 @mrb_str_to_cstr(i32* %32, i32 %36)
  %38 = call i32 @mrb_sys_fail(i32* %31, i32 %37)
  br label %39

39:                                               ; preds = %26, %2
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 @mrb_locale_free(i8* %40)
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 @mrb_locale_free(i8* %42)
  %44 = load i32*, i32** %3, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @mrb_gc_arena_restore(i32* %44, i32 %45)
  %47 = call i32 @mrb_fixnum_value(i32 0)
  ret i32 %47
}

declare dso_local i32 @mrb_gc_arena_save(i32*) #1

declare dso_local i32 @mrb_get_args(i32*, i8*, i32*, i32*) #1

declare dso_local i8* @mrb_locale_from_utf8(i32, i32) #1

declare dso_local i32 @mrb_str_to_cstr(i32*, i32) #1

declare dso_local i32 @symlink(i8*, i8*) #1

declare dso_local i32 @mrb_locale_free(i8*) #1

declare dso_local i32 @mrb_sys_fail(i32*, i32) #1

declare dso_local i32 @mrb_format(i32*, i8*, i32, i32) #1

declare dso_local i32 @mrb_gc_arena_restore(i32*, i32) #1

declare dso_local i32 @mrb_fixnum_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
