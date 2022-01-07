; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_huffman.c_Huff_putBit.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_huffman.c_Huff_putBit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bloc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Huff_putBit(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32*, i32** %6, align 8
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* @bloc, align 4
  %9 = load i32, i32* @bloc, align 4
  %10 = and i32 %9, 7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* @bloc, align 4
  %15 = ashr i32 %14, 3
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  store i32 0, i32* %17, align 4
  br label %18

18:                                               ; preds = %12, %3
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @bloc, align 4
  %21 = and i32 %20, 7
  %22 = shl i32 %19, %21
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* @bloc, align 4
  %25 = ashr i32 %24, 3
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %22
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* @bloc, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* @bloc, align 4
  %32 = load i32, i32* @bloc, align 4
  %33 = load i32*, i32** %6, align 8
  store i32 %32, i32* %33, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
