; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-io/src/extr_io.c_mrb_io_s_sysopen.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-io/src/extr_io.c_mrb_io_s_sysopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"S|Si\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mrb_io_s_sysopen(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = call i32 (...) @mrb_nil_value()
  store i32 %12, i32* %5, align 4
  %13 = call i32 (...) @mrb_nil_value()
  store i32 %13, i32* %6, align 4
  store i32 -1, i32* %8, align 4
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @mrb_get_args(i32* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %5, i32* %6, i32* %8)
  %16 = load i32, i32* %6, align 4
  %17 = call i64 @mrb_nil_p(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @mrb_str_new_cstr(i32* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %19, %2
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 438, i32* %8, align 4
  br label %26

26:                                               ; preds = %25, %22
  %27 = load i32*, i32** %3, align 8
  %28 = call i8* @mrb_string_value_cstr(i32* %27, i32* %5)
  store i8* %28, i8** %9, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = load i32*, i32** %3, align 8
  %31 = call i8* @mrb_string_value_cstr(i32* %30, i32* %6)
  %32 = call i32 @mrb_io_modestr_to_flags(i32* %29, i8* %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @mrb_io_flags_to_modenum(i32* %33, i32 %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32*, i32** %3, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @mrb_cloexec_open(i32* %36, i8* %37, i32 %38, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @mrb_fixnum_value(i32 %41)
  ret i32 %42
}

declare dso_local i32 @mrb_nil_value(...) #1

declare dso_local i32 @mrb_get_args(i32*, i8*, i32*, i32*, i32*) #1

declare dso_local i64 @mrb_nil_p(i32) #1

declare dso_local i32 @mrb_str_new_cstr(i32*, i8*) #1

declare dso_local i8* @mrb_string_value_cstr(i32*, i32*) #1

declare dso_local i32 @mrb_io_modestr_to_flags(i32*, i8*) #1

declare dso_local i32 @mrb_io_flags_to_modenum(i32*, i32) #1

declare dso_local i32 @mrb_cloexec_open(i32*, i8*, i32, i32) #1

declare dso_local i32 @mrb_fixnum_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
