; ModuleID = '/home/carl/AnghaBench/jq/src/decNumber/extr_decBasic.c_decFloatIsNormal.c'
source_filename = "/home/carl/AnghaBench/jq/src/decNumber/extr_decBasic.c_decFloatIsNormal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DECEMIN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @decFloatIsNormal(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i64 @DFISSPECIAL(i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %25

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = call i64 @DFISZERO(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %25

14:                                               ; preds = %9
  %15 = load i32*, i32** %3, align 8
  %16 = call i64 @GETEXPUN(i32* %15)
  %17 = load i32*, i32** %3, align 8
  %18 = call i64 @decFloatDigits(i32* %17)
  %19 = add nsw i64 %16, %18
  %20 = sub nsw i64 %19, 1
  store i64 %20, i64* %4, align 8
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* @DECEMIN, align 8
  %23 = icmp sge i64 %21, %22
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %14, %13, %8
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i64 @DFISSPECIAL(i32*) #1

declare dso_local i64 @DFISZERO(i32*) #1

declare dso_local i64 @GETEXPUN(i32*) #1

declare dso_local i64 @decFloatDigits(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
