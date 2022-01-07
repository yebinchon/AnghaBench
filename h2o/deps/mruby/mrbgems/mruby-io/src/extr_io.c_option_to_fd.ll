; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-io/src/extr_io.c_option_to_fd.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-io/src/extr_io.c_option_to_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"[]\00", align 1
@E_ARGUMENT_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"wrong exec redirect action\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*)* @option_to_fd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @option_to_fd(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call i32 @strlen(i8* %13)
  %15 = call i32 @mrb_intern_static(i32* %11, i8* %12, i32 %14)
  %16 = call i32 @mrb_symbol_value(i32 %15)
  %17 = call i32 @mrb_funcall(i32* %9, i32 %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 1, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i64 @mrb_nil_p(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %40

22:                                               ; preds = %3
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @mrb_type(i32 %23)
  switch i32 %24, label %35 [
    i32 129, label %25
    i32 128, label %31
  ]

25:                                               ; preds = %22
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @mrb_io_fileno(i32* %26, i32 %27)
  %29 = call i64 @mrb_fixnum(i32 %28)
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %4, align 4
  br label %40

31:                                               ; preds = %22
  %32 = load i32, i32* %8, align 4
  %33 = call i64 @mrb_fixnum(i32 %32)
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %4, align 4
  br label %40

35:                                               ; preds = %22
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* @E_ARGUMENT_ERROR, align 4
  %38 = call i32 @mrb_raise(i32* %36, i32 %37, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %35
  store i32 -1, i32* %4, align 4
  br label %40

40:                                               ; preds = %39, %31, %25, %21
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @mrb_funcall(i32*, i32, i8*, i32, i32) #1

declare dso_local i32 @mrb_symbol_value(i32) #1

declare dso_local i32 @mrb_intern_static(i32*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @mrb_nil_p(i32) #1

declare dso_local i32 @mrb_type(i32) #1

declare dso_local i64 @mrb_fixnum(i32) #1

declare dso_local i32 @mrb_io_fileno(i32*, i32) #1

declare dso_local i32 @mrb_raise(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
