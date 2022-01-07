; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_monitor.c__glfwSplitBPP.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_monitor.c__glfwSplitBPP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_glfwSplitBPP(i32 %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %10, 32
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  store i32 24, i32* %5, align 4
  br label %13

13:                                               ; preds = %12, %4
  %14 = load i32, i32* %5, align 4
  %15 = sdiv i32 %14, 3
  %16 = load i32*, i32** %8, align 8
  store i32 %15, i32* %16, align 4
  %17 = load i32*, i32** %7, align 8
  store i32 %15, i32* %17, align 4
  %18 = load i32*, i32** %6, align 8
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* %20, align 4
  %22 = mul nsw i32 %21, 3
  %23 = sub nsw i32 %19, %22
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp sge i32 %24, 1
  br i1 %25, label %26, label %31

26:                                               ; preds = %13
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  %30 = load i32*, i32** %7, align 8
  store i32 %29, i32* %30, align 4
  br label %31

31:                                               ; preds = %26, %13
  %32 = load i32, i32* %9, align 4
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  %38 = load i32*, i32** %6, align 8
  store i32 %37, i32* %38, align 4
  br label %39

39:                                               ; preds = %34, %31
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
