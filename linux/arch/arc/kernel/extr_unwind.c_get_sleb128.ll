; ModuleID = '/home/carl/AnghaBench/linux/arch/arc/kernel/extr_unwind.c_get_sleb128.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arc/kernel/extr_unwind.c_get_sleb128.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32*)* @get_sleb128 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_sleb128(i32** %0, i32* %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32** %0, i32*** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32**, i32*** %3, align 8
  %9 = load i32*, i32** %8, align 8
  store i32* %9, i32** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %55, %2
  %11 = load i32*, i32** %5, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = icmp ult i32* %11, %12
  br i1 %13, label %14, label %58

14:                                               ; preds = %10
  %15 = load i32, i32* %7, align 4
  %16 = add i32 %15, 7
  %17 = zext i32 %16 to i64
  %18 = icmp ugt i64 %17, 32
  br i1 %18, label %19, label %32

19:                                               ; preds = %14
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 127
  %23 = load i32, i32* %7, align 4
  %24 = zext i32 %23 to i64
  %25 = sub i64 32, %24
  %26 = trunc i64 %25 to i32
  %27 = shl i32 1, %26
  %28 = icmp uge i32 %22, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %19
  %30 = load i32*, i32** %4, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  store i32* %31, i32** %5, align 8
  br label %58

32:                                               ; preds = %19, %14
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 127
  %36 = load i32, i32* %7, align 4
  %37 = shl i32 %35, %36
  %38 = load i32, i32* %6, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %6, align 4
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 128
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %32
  %45 = load i32*, i32** %5, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %5, align 8
  %47 = load i32, i32* %45, align 4
  %48 = and i32 %47, 64
  %49 = sub nsw i32 0, %48
  %50 = load i32, i32* %7, align 4
  %51 = shl i32 %49, %50
  %52 = load i32, i32* %6, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %6, align 4
  br label %58

54:                                               ; preds = %32
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %7, align 4
  %57 = add i32 %56, 7
  store i32 %57, i32* %7, align 4
  br label %10

58:                                               ; preds = %44, %29, %10
  %59 = load i32*, i32** %5, align 8
  %60 = load i32**, i32*** %3, align 8
  store i32* %59, i32** %60, align 8
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
