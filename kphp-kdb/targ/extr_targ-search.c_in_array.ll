; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_in_array.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_in_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in_array(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  %11 = load i32, i32* %7, align 4
  store i32 %11, i32* %9, align 4
  br label %12

12:                                               ; preds = %33, %3
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* %8, align 4
  %15 = sub nsw i32 %13, %14
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %34

17:                                               ; preds = %12
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %9, align 4
  %20 = add nsw i32 %18, %19
  %21 = ashr i32 %20, 1
  store i32 %21, i32* %10, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp sle i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %17
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %8, align 4
  br label %33

31:                                               ; preds = %17
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %31, %29
  br label %12

34:                                               ; preds = %12
  %35 = load i32, i32* %8, align 4
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %34
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %4, align 4
  br label %48

47:                                               ; preds = %37, %34
  store i32 -1, i32* %4, align 4
  br label %48

48:                                               ; preds = %47, %45
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
