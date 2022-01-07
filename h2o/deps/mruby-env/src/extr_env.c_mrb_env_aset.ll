; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby-env/src/extr_env.c_mrb_env_aset.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby-env/src/extr_env.c_mrb_env_aset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"So\00", align 1
@E_RUNTIME_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"can't delete environment variable\00", align 1
@MRB_TT_STRING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"String\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"to_str\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"can't change environment variable\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mrb_env_aset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_env_aset(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @mrb_get_args(i32* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %5, i32* %6)
  %11 = load i32*, i32** %3, align 8
  %12 = call i8* @mrb_string_value_cstr(i32* %11, i32* %5)
  store i8* %12, i8** %7, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @mrb_nil_p(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %2
  %17 = load i8*, i8** %7, align 8
  %18 = call i64 @unsetenv(i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* @E_RUNTIME_ERROR, align 4
  %23 = call i32 @mrb_raise(i32* %21, i32 %22, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %20, %16
  br label %41

25:                                               ; preds = %2
  %26 = load i32*, i32** %3, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @MRB_TT_STRING, align 4
  %29 = call i32 @mrb_convert_type(i32* %26, i32 %27, i32 %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %30 = load i32*, i32** %3, align 8
  %31 = call i8* @mrb_string_value_cstr(i32* %30, i32* %6)
  store i8* %31, i8** %8, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = call i64 @setenv(i8* %32, i8* %33, i32 1)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %25
  %37 = load i32*, i32** %3, align 8
  %38 = load i32, i32* @E_RUNTIME_ERROR, align 4
  %39 = call i32 @mrb_raise(i32* %37, i32 %38, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %40

40:                                               ; preds = %36, %25
  br label %41

41:                                               ; preds = %40, %24
  %42 = load i32, i32* %6, align 4
  ret i32 %42
}

declare dso_local i32 @mrb_get_args(i32*, i8*, i32*, i32*) #1

declare dso_local i8* @mrb_string_value_cstr(i32*, i32*) #1

declare dso_local i64 @mrb_nil_p(i32) #1

declare dso_local i64 @unsetenv(i8*) #1

declare dso_local i32 @mrb_raise(i32*, i32, i8*) #1

declare dso_local i32 @mrb_convert_type(i32*, i32, i32, i8*, i8*) #1

declare dso_local i64 @setenv(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
