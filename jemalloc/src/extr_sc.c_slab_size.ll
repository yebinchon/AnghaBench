; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_sc.c_slab_size.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_sc.c_slab_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @slab_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slab_size(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = call i32 @ZU(i32 1)
  %17 = load i32, i32* %5, align 4
  %18 = shl i32 %16, %17
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %9, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i64 @reg_size_compute(i32 %20, i32 %21, i32 %22)
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %9, align 8
  store i64 %24, i64* %11, align 8
  %25 = load i64, i64* %11, align 8
  %26 = load i64, i64* %10, align 8
  %27 = udiv i64 %25, %26
  store i64 %27, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i32 0, i32* %14, align 4
  br label %28

28:                                               ; preds = %47, %4
  %29 = load i32, i32* %14, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br i1 %31, label %32, label %48

32:                                               ; preds = %28
  %33 = load i64, i64* %11, align 8
  store i64 %33, i64* %13, align 8
  %34 = load i64, i64* %12, align 8
  store i64 %34, i64* %15, align 8
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* %11, align 8
  %37 = add i64 %36, %35
  store i64 %37, i64* %11, align 8
  %38 = load i64, i64* %11, align 8
  %39 = load i64, i64* %10, align 8
  %40 = udiv i64 %38, %39
  store i64 %40, i64* %12, align 8
  %41 = load i64, i64* %13, align 8
  %42 = load i64, i64* %15, align 8
  %43 = load i64, i64* %10, align 8
  %44 = mul i64 %42, %43
  %45 = icmp eq i64 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %32
  store i32 1, i32* %14, align 4
  br label %47

47:                                               ; preds = %46, %32
  br label %28

48:                                               ; preds = %28
  %49 = load i64, i64* %13, align 8
  %50 = load i64, i64* %9, align 8
  %51 = udiv i64 %49, %50
  %52 = trunc i64 %51 to i32
  ret i32 %52
}

declare dso_local i32 @ZU(i32) #1

declare dso_local i64 @reg_size_compute(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
