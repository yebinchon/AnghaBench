; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby-json/src/extr_mrb_json.c_mrb_json_load.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby-json/src/extr_mrb_json.c_mrb_json_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"S&\00", align 1
@E_PARSER_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"invalid json\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mrb_json_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_json_load(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [1 x i32], align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = call i32 (...) @mrb_nil_value()
  store i32 %10, i32* %8, align 4
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @mrb_get_args(i32* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %8, i32* %6)
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @mrb_str_to_cstr(i32* %13, i32 %14)
  %16 = call i32* @json_parse_string(i32 %15)
  store i32* %16, i32** %7, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* @E_PARSER_ERROR, align 4
  %22 = call i32 @mrb_raise(i32* %20, i32 %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %23

23:                                               ; preds = %19, %2
  %24 = load i32*, i32** %3, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @json_value_to_mrb_value(i32* %24, i32* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @json_value_free(i32* %27)
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @mrb_nil_p(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %23
  %33 = load i32, i32* %5, align 4
  %34 = getelementptr inbounds [1 x i32], [1 x i32]* %9, i64 0, i64 0
  store i32 %33, i32* %34, align 4
  %35 = load i32*, i32** %3, align 8
  %36 = load i32, i32* %6, align 4
  %37 = getelementptr inbounds [1 x i32], [1 x i32]* %9, i64 0, i64 0
  %38 = call i32 @mrb_yield_argv(i32* %35, i32 %36, i32 1, i32* %37)
  br label %39

39:                                               ; preds = %32, %23
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i32 @mrb_nil_value(...) #1

declare dso_local i32 @mrb_get_args(i32*, i8*, i32*, i32*) #1

declare dso_local i32* @json_parse_string(i32) #1

declare dso_local i32 @mrb_str_to_cstr(i32*, i32) #1

declare dso_local i32 @mrb_raise(i32*, i32, i8*) #1

declare dso_local i32 @json_value_to_mrb_value(i32*, i32*) #1

declare dso_local i32 @json_value_free(i32*) #1

declare dso_local i32 @mrb_nil_p(i32) #1

declare dso_local i32 @mrb_yield_argv(i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
