; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_mp.c_ccu_mp_find_best.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_mp.c_ccu_mp_find_best.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i32, i32, i32*, i32*)* @ccu_mp_find_best to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccu_mp_find_best(i64 %0, i64 %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  store i64 0, i64* %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 1, i32* %17, align 4
  br label %19

19:                                               ; preds = %57, %6
  %20 = load i32, i32* %17, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ule i32 %20, %21
  br i1 %22, label %23, label %60

23:                                               ; preds = %19
  store i32 1, i32* %16, align 4
  br label %24

24:                                               ; preds = %53, %23
  %25 = load i32, i32* %16, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ule i32 %25, %26
  br i1 %27, label %28, label %56

28:                                               ; preds = %24
  %29 = load i64, i64* %7, align 8
  %30 = load i32, i32* %17, align 4
  %31 = zext i32 %30 to i64
  %32 = udiv i64 %29, %31
  %33 = load i32, i32* %16, align 4
  %34 = zext i32 %33 to i64
  %35 = udiv i64 %32, %34
  store i64 %35, i64* %18, align 8
  %36 = load i64, i64* %18, align 8
  %37 = load i64, i64* %8, align 8
  %38 = icmp ugt i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  br label %53

40:                                               ; preds = %28
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* %18, align 8
  %43 = sub i64 %41, %42
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* %13, align 8
  %46 = sub i64 %44, %45
  %47 = icmp ult i64 %43, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = load i64, i64* %18, align 8
  store i64 %49, i64* %13, align 8
  %50 = load i32, i32* %16, align 4
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %17, align 4
  store i32 %51, i32* %15, align 4
  br label %52

52:                                               ; preds = %48, %40
  br label %53

53:                                               ; preds = %52, %39
  %54 = load i32, i32* %16, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %16, align 4
  br label %24

56:                                               ; preds = %24
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %17, align 4
  %59 = shl i32 %58, 1
  store i32 %59, i32* %17, align 4
  br label %19

60:                                               ; preds = %19
  %61 = load i32, i32* %14, align 4
  %62 = load i32*, i32** %11, align 8
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* %15, align 4
  %64 = load i32*, i32** %12, align 8
  store i32 %63, i32* %64, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
