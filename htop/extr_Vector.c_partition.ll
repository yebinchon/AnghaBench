; ModuleID = '/home/carl/AnghaBench/htop/extr_Vector.c_partition.c'
source_filename = "/home/carl/AnghaBench/htop/extr_Vector.c_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@comparisons = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32, i32, i32, i64 (i32*, i8*)*)* @partition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @partition(i32** %0, i32 %1, i32 %2, i32 %3, i64 (i32*, i8*)* %4) #0 {
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64 (i32*, i8*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32** %0, i32*** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 (i32*, i8*)* %4, i64 (i32*, i8*)** %10, align 8
  %14 = load i32**, i32*** %6, align 8
  %15 = load i32, i32* %9, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32*, i32** %14, i64 %16
  %18 = load i32*, i32** %17, align 8
  %19 = bitcast i32* %18 to i8*
  store i8* %19, i8** %11, align 8
  %20 = load i32**, i32*** %6, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @swap(i32** %20, i32 %21, i32 %22)
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %13, align 4
  br label %26

26:                                               ; preds = %50, %5
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %53

30:                                               ; preds = %26
  %31 = load i32, i32* @comparisons, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* @comparisons, align 4
  %33 = load i64 (i32*, i8*)*, i64 (i32*, i8*)** %10, align 8
  %34 = load i32**, i32*** %6, align 8
  %35 = load i32, i32* %13, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32*, i32** %34, i64 %36
  %38 = load i32*, i32** %37, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = call i64 %33(i32* %38, i8* %39)
  %41 = icmp sle i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %30
  %43 = load i32**, i32*** %6, align 8
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @swap(i32** %43, i32 %44, i32 %45)
  %47 = load i32, i32* %12, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %12, align 4
  br label %49

49:                                               ; preds = %42, %30
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %13, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %13, align 4
  br label %26

53:                                               ; preds = %26
  %54 = load i32**, i32*** %6, align 8
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @swap(i32** %54, i32 %55, i32 %56)
  %58 = load i32, i32* %12, align 4
  ret i32 %58
}

declare dso_local i32 @swap(i32**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
