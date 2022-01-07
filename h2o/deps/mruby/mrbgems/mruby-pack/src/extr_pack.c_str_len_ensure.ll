; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-pack/src/extr_pack.c_str_len_ensure.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-pack/src/extr_pack.c_str_len_ensure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@E_RANGE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"negative (or overflowed) integer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i64)* @str_len_ensure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @str_len_ensure(i32* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i64 @RSTRING_LEN(i32 %8)
  store i64 %9, i64* %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* @E_RANGE_ERROR, align 4
  %15 = call i32 @mrb_raise(i32* %13, i32 %14, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %12, %3
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %16
  br label %21

21:                                               ; preds = %24, %20
  %22 = load i64, i64* %7, align 8
  %23 = mul nsw i64 %22, 2
  store i64 %23, i64* %7, align 8
  br label %24

24:                                               ; preds = %21
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %21, label %28

28:                                               ; preds = %24
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @mrb_str_resize(i32* %29, i32 %30, i64 %31)
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %28, %16
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i64 @RSTRING_LEN(i32) #1

declare dso_local i32 @mrb_raise(i32*, i32, i8*) #1

declare dso_local i32 @mrb_str_resize(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
