; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/src/extr_version.c_mrb_init_version.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/src/extr_version.c_mrb_init_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MRUBY_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"RUBY_VERSION\00", align 1
@MRUBY_RUBY_VERSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"RUBY_ENGINE\00", align 1
@MRUBY_RUBY_ENGINE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"RUBY_ENGINE_VERSION\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"MRUBY_VERSION\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"MRUBY_RELEASE_NO\00", align 1
@MRUBY_RELEASE_NO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"MRUBY_RELEASE_DATE\00", align 1
@MRUBY_RELEASE_DATE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"MRUBY_DESCRIPTION\00", align 1
@MRUBY_DESCRIPTION = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [16 x i8] c"MRUBY_COPYRIGHT\00", align 1
@MRUBY_COPYRIGHT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mrb_init_version(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = load i32, i32* @MRUBY_VERSION, align 4
  %6 = call i32 @mrb_str_new_lit(i32* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32*, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = load i32, i32* @MRUBY_RUBY_VERSION, align 4
  %10 = call i32 @mrb_str_new_lit(i32* %8, i32 %9)
  %11 = call i32 @mrb_define_global_const(i32* %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32*, i32** %2, align 8
  %13 = load i32*, i32** %2, align 8
  %14 = load i32, i32* @MRUBY_RUBY_ENGINE, align 4
  %15 = call i32 @mrb_str_new_lit(i32* %13, i32 %14)
  %16 = call i32 @mrb_define_global_const(i32* %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  %17 = load i32*, i32** %2, align 8
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @mrb_define_global_const(i32* %17, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %18)
  %20 = load i32*, i32** %2, align 8
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @mrb_define_global_const(i32* %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %21)
  %23 = load i32*, i32** %2, align 8
  %24 = load i32, i32* @MRUBY_RELEASE_NO, align 4
  %25 = call i32 @mrb_fixnum_value(i32 %24)
  %26 = call i32 @mrb_define_global_const(i32* %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %25)
  %27 = load i32*, i32** %2, align 8
  %28 = load i32*, i32** %2, align 8
  %29 = load i32, i32* @MRUBY_RELEASE_DATE, align 4
  %30 = call i32 @mrb_str_new_lit(i32* %28, i32 %29)
  %31 = call i32 @mrb_define_global_const(i32* %27, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %30)
  %32 = load i32*, i32** %2, align 8
  %33 = load i32*, i32** %2, align 8
  %34 = load i32, i32* @MRUBY_DESCRIPTION, align 4
  %35 = call i32 @mrb_str_new_lit(i32* %33, i32 %34)
  %36 = call i32 @mrb_define_global_const(i32* %32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %35)
  %37 = load i32*, i32** %2, align 8
  %38 = load i32*, i32** %2, align 8
  %39 = load i32, i32* @MRUBY_COPYRIGHT, align 4
  %40 = call i32 @mrb_str_new_lit(i32* %38, i32 %39)
  %41 = call i32 @mrb_define_global_const(i32* %37, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 %40)
  ret void
}

declare dso_local i32 @mrb_str_new_lit(i32*, i32) #1

declare dso_local i32 @mrb_define_global_const(i32*, i8*, i32) #1

declare dso_local i32 @mrb_fixnum_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
