; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-io/src/extr_file.c_mrb_file_s_readlink.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-io/src/extr_file.c_mrb_file_s_readlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"z\00", align 1
@E_NOTIMP_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mrb_file_s_readlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_file_s_readlink(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 100, i64* %8, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @mrb_gc_arena_save(i32* %12)
  store i32 %13, i32* %11, align 4
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @mrb_get_args(i32* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %5)
  %16 = load i8*, i8** %5, align 8
  %17 = call i8* @mrb_locale_from_utf8(i8* %16, i32 -1)
  store i8* %17, i8** %7, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = load i64, i64* %8, align 8
  %20 = call i64 @mrb_malloc(i32* %18, i64 %19)
  %21 = inttoptr i64 %20 to i8*
  store i8* %21, i8** %6, align 8
  br label %22

22:                                               ; preds = %35, %2
  %23 = load i8*, i8** %7, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load i64, i64* %8, align 8
  %26 = call i32 @readlink(i8* %23, i8* %24, i64 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i64, i64* %8, align 8
  %28 = trunc i64 %27 to i32
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, -1
  br label %33

33:                                               ; preds = %30, %22
  %34 = phi i1 [ false, %22 ], [ %32, %30 ]
  br i1 %34, label %35, label %43

35:                                               ; preds = %33
  %36 = load i64, i64* %8, align 8
  %37 = mul i64 %36, 2
  store i64 %37, i64* %8, align 8
  %38 = load i32*, i32** %3, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load i64, i64* %8, align 8
  %41 = call i64 @mrb_realloc(i32* %38, i8* %39, i64 %40)
  %42 = inttoptr i64 %41 to i8*
  store i8* %42, i8** %6, align 8
  br label %22

43:                                               ; preds = %33
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 @mrb_locale_free(i8* %44)
  %46 = load i32, i32* %9, align 4
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load i32*, i32** %3, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @mrb_free(i32* %49, i8* %50)
  %52 = load i32*, i32** %3, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 @mrb_sys_fail(i32* %52, i8* %53)
  br label %55

55:                                               ; preds = %48, %43
  %56 = load i8*, i8** %6, align 8
  %57 = call i8* @mrb_utf8_from_locale(i8* %56, i32 -1)
  store i8* %57, i8** %7, align 8
  %58 = load i32*, i32** %3, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @mrb_str_new(i32* %58, i8* %59, i32 %60)
  store i32 %61, i32* %10, align 4
  %62 = load i8*, i8** %7, align 8
  %63 = call i32 @mrb_locale_free(i8* %62)
  %64 = load i32*, i32** %3, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = call i32 @mrb_free(i32* %64, i8* %65)
  %67 = load i32*, i32** %3, align 8
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @mrb_gc_arena_restore(i32* %67, i32 %68)
  %70 = load i32, i32* %10, align 4
  ret i32 %70
}

declare dso_local i32 @mrb_gc_arena_save(i32*) #1

declare dso_local i32 @mrb_get_args(i32*, i8*, i8**) #1

declare dso_local i8* @mrb_locale_from_utf8(i8*, i32) #1

declare dso_local i64 @mrb_malloc(i32*, i64) #1

declare dso_local i32 @readlink(i8*, i8*, i64) #1

declare dso_local i64 @mrb_realloc(i32*, i8*, i64) #1

declare dso_local i32 @mrb_locale_free(i8*) #1

declare dso_local i32 @mrb_free(i32*, i8*) #1

declare dso_local i32 @mrb_sys_fail(i32*, i8*) #1

declare dso_local i8* @mrb_utf8_from_locale(i8*, i32) #1

declare dso_local i32 @mrb_str_new(i32*, i8*, i32) #1

declare dso_local i32 @mrb_gc_arena_restore(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
