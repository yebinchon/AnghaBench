; ModuleID = '/home/carl/AnghaBench/jq/src/decNumber/extr_decBasic.c_decFloatSameQuantum.c'
source_filename = "/home/carl/AnghaBench/jq/src/decNumber/extr_decBasic.c_decFloatSameQuantum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @decFloatSameQuantum(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = call i64 @DFISSPECIAL(i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load i32*, i32** %5, align 8
  %11 = call i64 @DFISSPECIAL(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %32

13:                                               ; preds = %9, %2
  %14 = load i32*, i32** %4, align 8
  %15 = call i64 @DFISNAN(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = load i32*, i32** %5, align 8
  %19 = call i64 @DFISNAN(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 1, i32* %3, align 4
  br label %40

22:                                               ; preds = %17, %13
  %23 = load i32*, i32** %4, align 8
  %24 = call i64 @DFISINF(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load i32*, i32** %5, align 8
  %28 = call i64 @DFISINF(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 1, i32* %3, align 4
  br label %40

31:                                               ; preds = %26, %22
  store i32 0, i32* %3, align 4
  br label %40

32:                                               ; preds = %9
  %33 = load i32*, i32** %4, align 8
  %34 = call i64 @GETEXP(i32* %33)
  %35 = load i32*, i32** %5, align 8
  %36 = call i64 @GETEXP(i32* %35)
  %37 = icmp eq i64 %34, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 1, i32* %3, align 4
  br label %40

39:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %38, %31, %30, %21
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i64 @DFISSPECIAL(i32*) #1

declare dso_local i64 @DFISNAN(i32*) #1

declare dso_local i64 @DFISINF(i32*) #1

declare dso_local i64 @GETEXP(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
