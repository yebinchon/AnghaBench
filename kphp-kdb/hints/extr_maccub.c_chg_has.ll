; ModuleID = '/home/carl/AnghaBench/kphp-kdb/hints/extr_maccub.c_chg_has.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/hints/extr_maccub.c_chg_has.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chg_has(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = mul nsw i32 %8, 2
  store i32 %9, i32* %5, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = ptrtoint i32* %10 to i64
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  %15 = ptrtoint i32* %14 to i64
  %16 = sub nsw i64 0, %15
  %17 = and i64 %16, -2
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = icmp eq i64 %17, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %13
  %22 = load i32*, i32** %4, align 8
  %23 = ptrtoint i32* %22 to i64
  %24 = sub nsw i64 0, %23
  %25 = and i64 %24, 1
  %26 = icmp ne i64 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 1, i32 -1
  store i32 %28, i32* %3, align 4
  br label %77

29:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %77

30:                                               ; preds = %2
  %31 = load i32*, i32** %4, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %75

33:                                               ; preds = %30
  %34 = load i32*, i32** %4, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %70

38:                                               ; preds = %33
  %39 = load i32*, i32** %4, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %7, align 4
  store i32 1, i32* %6, align 4
  br label %42

42:                                               ; preds = %66, %38
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp sle i32 %43, %44
  br i1 %45, label %46, label %69

46:                                               ; preds = %42
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, -2
  %53 = load i32, i32* %5, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %46
  %56 = load i32*, i32** %4, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, 1
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i32 1, i32 -1
  store i32 %64, i32* %3, align 4
  br label %77

65:                                               ; preds = %46
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %6, align 4
  br label %42

69:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %77

70:                                               ; preds = %33
  %71 = load i32*, i32** %4, align 8
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @trp_has(i32 %72, i32 %73)
  store i32 %74, i32* %3, align 4
  br label %77

75:                                               ; preds = %30
  br label %76

76:                                               ; preds = %75
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %76, %70, %69, %55, %29, %21
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @trp_has(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
