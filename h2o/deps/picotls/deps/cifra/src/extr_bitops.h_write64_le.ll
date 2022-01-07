; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_bitops.h_write64_le.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_bitops.h_write64_le.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @write64_le to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write64_le(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = and i32 %5, 255
  %7 = load i32*, i32** %4, align 8
  %8 = getelementptr inbounds i32, i32* %7, i32 1
  store i32* %8, i32** %4, align 8
  store i32 %6, i32* %7, align 4
  %9 = load i32, i32* %3, align 4
  %10 = ashr i32 %9, 8
  %11 = and i32 %10, 255
  %12 = load i32*, i32** %4, align 8
  %13 = getelementptr inbounds i32, i32* %12, i32 1
  store i32* %13, i32** %4, align 8
  store i32 %11, i32* %12, align 4
  %14 = load i32, i32* %3, align 4
  %15 = ashr i32 %14, 16
  %16 = and i32 %15, 255
  %17 = load i32*, i32** %4, align 8
  %18 = getelementptr inbounds i32, i32* %17, i32 1
  store i32* %18, i32** %4, align 8
  store i32 %16, i32* %17, align 4
  %19 = load i32, i32* %3, align 4
  %20 = ashr i32 %19, 24
  %21 = and i32 %20, 255
  %22 = load i32*, i32** %4, align 8
  %23 = getelementptr inbounds i32, i32* %22, i32 1
  store i32* %23, i32** %4, align 8
  store i32 %21, i32* %22, align 4
  %24 = load i32, i32* %3, align 4
  %25 = ashr i32 %24, 32
  %26 = and i32 %25, 255
  %27 = load i32*, i32** %4, align 8
  %28 = getelementptr inbounds i32, i32* %27, i32 1
  store i32* %28, i32** %4, align 8
  store i32 %26, i32* %27, align 4
  %29 = load i32, i32* %3, align 4
  %30 = ashr i32 %29, 40
  %31 = and i32 %30, 255
  %32 = load i32*, i32** %4, align 8
  %33 = getelementptr inbounds i32, i32* %32, i32 1
  store i32* %33, i32** %4, align 8
  store i32 %31, i32* %32, align 4
  %34 = load i32, i32* %3, align 4
  %35 = ashr i32 %34, 48
  %36 = and i32 %35, 255
  %37 = load i32*, i32** %4, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %4, align 8
  store i32 %36, i32* %37, align 4
  %39 = load i32, i32* %3, align 4
  %40 = ashr i32 %39, 56
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
