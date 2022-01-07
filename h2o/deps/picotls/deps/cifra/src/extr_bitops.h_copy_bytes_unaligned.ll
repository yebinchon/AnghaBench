; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_bitops.h_copy_bytes_unaligned.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_bitops.h_copy_bytes_unaligned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i64, i32)* @copy_bytes_unaligned to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_bytes_unaligned(i32* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = sdiv i32 %14, 8
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %8, align 4
  %17 = and i32 %16, 7
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = shl i32 1, %18
  %20 = sub nsw i32 %19, 1
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = xor i32 %21, -1
  store i32 %22, i32* %12, align 4
  store i64 0, i64* %13, align 8
  br label %23

23:                                               ; preds = %60, %4
  %24 = load i64, i64* %13, align 8
  %25 = load i64, i64* %7, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %63

27:                                               ; preds = %23
  %28 = load i32*, i32** %6, align 8
  %29 = load i64, i64* %13, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = add i64 %29, %31
  %33 = getelementptr inbounds i32, i32* %28, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %10, align 4
  %36 = shl i32 %34, %35
  %37 = load i32, i32* %12, align 4
  %38 = and i32 %36, %37
  %39 = load i32*, i32** %5, align 8
  %40 = load i64, i64* %13, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  store i32 %38, i32* %41, align 4
  %42 = load i32*, i32** %6, align 8
  %43 = load i64, i64* %13, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = add i64 %43, %45
  %47 = add i64 %46, 1
  %48 = getelementptr inbounds i32, i32* %42, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %10, align 4
  %51 = sub nsw i32 8, %50
  %52 = ashr i32 %49, %51
  %53 = load i32, i32* %11, align 4
  %54 = and i32 %52, %53
  %55 = load i32*, i32** %5, align 8
  %56 = load i64, i64* %13, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %54
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %27
  %61 = load i64, i64* %13, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %13, align 8
  br label %23

63:                                               ; preds = %23
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
