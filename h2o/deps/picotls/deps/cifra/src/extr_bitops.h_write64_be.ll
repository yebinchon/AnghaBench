; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_bitops.h_write64_be.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_bitops.h_write64_be.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @write64_be to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write64_be(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = ashr i32 %5, 56
  %7 = and i32 %6, 255
  %8 = load i32*, i32** %4, align 8
  %9 = getelementptr inbounds i32, i32* %8, i32 1
  store i32* %9, i32** %4, align 8
  store i32 %7, i32* %8, align 4
  %10 = load i32, i32* %3, align 4
  %11 = ashr i32 %10, 48
  %12 = and i32 %11, 255
  %13 = load i32*, i32** %4, align 8
  %14 = getelementptr inbounds i32, i32* %13, i32 1
  store i32* %14, i32** %4, align 8
  store i32 %12, i32* %13, align 4
  %15 = load i32, i32* %3, align 4
  %16 = ashr i32 %15, 40
  %17 = and i32 %16, 255
  %18 = load i32*, i32** %4, align 8
  %19 = getelementptr inbounds i32, i32* %18, i32 1
  store i32* %19, i32** %4, align 8
  store i32 %17, i32* %18, align 4
  %20 = load i32, i32* %3, align 4
  %21 = ashr i32 %20, 32
  %22 = and i32 %21, 255
  %23 = load i32*, i32** %4, align 8
  %24 = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %24, i32** %4, align 8
  store i32 %22, i32* %23, align 4
  %25 = load i32, i32* %3, align 4
  %26 = ashr i32 %25, 24
  %27 = and i32 %26, 255
  %28 = load i32*, i32** %4, align 8
  %29 = getelementptr inbounds i32, i32* %28, i32 1
  store i32* %29, i32** %4, align 8
  store i32 %27, i32* %28, align 4
  %30 = load i32, i32* %3, align 4
  %31 = ashr i32 %30, 16
  %32 = and i32 %31, 255
  %33 = load i32*, i32** %4, align 8
  %34 = getelementptr inbounds i32, i32* %33, i32 1
  store i32* %34, i32** %4, align 8
  store i32 %32, i32* %33, align 4
  %35 = load i32, i32* %3, align 4
  %36 = ashr i32 %35, 8
  %37 = and i32 %36, 255
  %38 = load i32*, i32** %4, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %4, align 8
  store i32 %37, i32* %38, align 4
  %40 = load i32, i32* %3, align 4
  %41 = and i32 %40, 255
  %42 = load i32*, i32** %4, align 8
  store i32 %41, i32* %42, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
