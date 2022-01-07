; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-pack/src/extr_pack.c_pack_x.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-pack/src/extr_pack.c_pack_x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i64, i64, i32)* @pack_x to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pack_x(i32* %0, i32 %1, i32 %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = load i64, i64* %12, align 8
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %42

18:                                               ; preds = %6
  %19 = load i32*, i32** %8, align 8
  %20 = load i32, i32* %10, align 4
  %21 = load i64, i64* %11, align 8
  %22 = load i64, i64* %12, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @str_len_ensure(i32* %19, i32 %20, i64 %23)
  store i32 %24, i32* %10, align 4
  store i64 0, i64* %14, align 8
  br label %25

25:                                               ; preds = %36, %18
  %26 = load i64, i64* %14, align 8
  %27 = load i64, i64* %12, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %25
  %30 = load i32, i32* %10, align 4
  %31 = call i8* @RSTRING_PTR(i32 %30)
  %32 = load i64, i64* %11, align 8
  %33 = load i64, i64* %14, align 8
  %34 = add nsw i64 %32, %33
  %35 = getelementptr inbounds i8, i8* %31, i64 %34
  store i8 0, i8* %35, align 1
  br label %36

36:                                               ; preds = %29
  %37 = load i64, i64* %14, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %14, align 8
  br label %25

39:                                               ; preds = %25
  %40 = load i64, i64* %12, align 8
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %39, %17
  %43 = load i32, i32* %7, align 4
  ret i32 %43
}

declare dso_local i32 @str_len_ensure(i32*, i32, i64) #1

declare dso_local i8* @RSTRING_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
