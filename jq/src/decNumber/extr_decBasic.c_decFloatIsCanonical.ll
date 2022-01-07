; ModuleID = '/home/carl/AnghaBench/jq/src/decNumber/extr_decBasic.c_decFloatIsCanonical.c'
source_filename = "/home/carl/AnghaBench/jq/src/decNumber/extr_decBasic.c_decFloatIsCanonical.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ECONMASK = common dso_local global i32 0, align 4
@ECONNANMASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @decFloatIsCanonical(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = call i64 @DFISSPECIAL(i32* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %37

7:                                                ; preds = %1
  %8 = load i32*, i32** %3, align 8
  %9 = call i64 @DFISINF(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %7
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @DFWORD(i32* %12, i32 0)
  %14 = load i32, i32* @ECONMASK, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %38

18:                                               ; preds = %11
  %19 = load i32*, i32** %3, align 8
  %20 = call i64 @DFISCCZERO(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %38

23:                                               ; preds = %18
  store i32 1, i32* %2, align 4
  br label %38

24:                                               ; preds = %7
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @DFWORD(i32* %25, i32 0)
  %27 = load i32, i32* @ECONNANMASK, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %38

31:                                               ; preds = %24
  %32 = load i32*, i32** %3, align 8
  %33 = call i64 @DFISCCZERO(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 1, i32* %2, align 4
  br label %38

36:                                               ; preds = %31
  br label %37

37:                                               ; preds = %36, %1
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %35, %30, %23, %22, %17
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i64 @DFISSPECIAL(i32*) #1

declare dso_local i64 @DFISINF(i32*) #1

declare dso_local i32 @DFWORD(i32*, i32) #1

declare dso_local i64 @DFISCCZERO(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
