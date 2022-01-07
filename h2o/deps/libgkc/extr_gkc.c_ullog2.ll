; ModuleID = '/home/carl/AnghaBench/h2o/deps/libgkc/extr_gkc.c_ullog2.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/libgkc/extr_gkc.c_ullog2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ullog2.debruijn_magic = internal constant i32 -862635923, align 4
@ullog2.magic_table = internal constant [64 x i32] [i32 0, i32 1, i32 2, i32 53, i32 3, i32 7, i32 54, i32 27, i32 4, i32 38, i32 41, i32 8, i32 34, i32 55, i32 48, i32 28, i32 62, i32 5, i32 39, i32 46, i32 44, i32 42, i32 22, i32 9, i32 24, i32 35, i32 59, i32 56, i32 49, i32 18, i32 29, i32 11, i32 63, i32 52, i32 6, i32 26, i32 37, i32 40, i32 33, i32 47, i32 61, i32 45, i32 43, i32 21, i32 23, i32 58, i32 17, i32 10, i32 51, i32 25, i32 36, i32 32, i32 60, i32 20, i32 57, i32 16, i32 50, i32 31, i32 19, i32 15, i32 30, i32 14, i32 13, i32 12], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ullog2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ullog2(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = ashr i32 %3, 1
  %5 = load i32, i32* %2, align 4
  %6 = or i32 %5, %4
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = ashr i32 %7, 2
  %9 = load i32, i32* %2, align 4
  %10 = or i32 %9, %8
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = ashr i32 %11, 4
  %13 = load i32, i32* %2, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* %2, align 4
  %16 = ashr i32 %15, 8
  %17 = load i32, i32* %2, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %2, align 4
  %19 = load i32, i32* %2, align 4
  %20 = ashr i32 %19, 16
  %21 = load i32, i32* %2, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %2, align 4
  %23 = load i32, i32* %2, align 4
  %24 = ashr i32 %23, 32
  %25 = load i32, i32* %2, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %2, align 4
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* %2, align 4
  %29 = ashr i32 %28, 1
  %30 = xor i32 %29, -1
  %31 = and i32 %27, %30
  %32 = mul nsw i32 %31, -862635923
  %33 = ashr i32 %32, 58
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [64 x i32], [64 x i32]* @ullog2.magic_table, i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
