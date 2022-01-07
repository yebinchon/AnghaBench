; ModuleID = '/home/carl/AnghaBench/h2o/deps/brotli/c/enc/extr_encode.c_EncodeWindowBits.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/brotli/c/enc/extr_encode.c_EncodeWindowBits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*)* @EncodeWindowBits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @EncodeWindowBits(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp eq i32 %7, 16
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = load i32*, i32** %5, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32*, i32** %6, align 8
  store i32 1, i32* %11, align 4
  br label %37

12:                                               ; preds = %3
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 17
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32*, i32** %5, align 8
  store i32 1, i32* %16, align 4
  %17 = load i32*, i32** %6, align 8
  store i32 7, i32* %17, align 4
  br label %36

18:                                               ; preds = %12
  %19 = load i32, i32* %4, align 4
  %20 = icmp sgt i32 %19, 17
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load i32, i32* %4, align 4
  %23 = sub nsw i32 %22, 17
  %24 = shl i32 %23, 1
  %25 = or i32 %24, 1
  %26 = load i32*, i32** %5, align 8
  store i32 %25, i32* %26, align 4
  %27 = load i32*, i32** %6, align 8
  store i32 4, i32* %27, align 4
  br label %35

28:                                               ; preds = %18
  %29 = load i32, i32* %4, align 4
  %30 = sub nsw i32 %29, 8
  %31 = shl i32 %30, 4
  %32 = or i32 %31, 1
  %33 = load i32*, i32** %5, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i32*, i32** %6, align 8
  store i32 7, i32* %34, align 4
  br label %35

35:                                               ; preds = %28, %21
  br label %36

36:                                               ; preds = %35, %15
  br label %37

37:                                               ; preds = %36, %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
