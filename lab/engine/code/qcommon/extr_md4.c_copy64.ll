; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_md4.c_copy64.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_md4.c_copy64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64*)* @copy64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy64(i32* %0, i64* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i64* %1, i64** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %53, %2
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 16
  br i1 %8, label %9, label %56

9:                                                ; preds = %6
  %10 = load i64*, i64** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = mul nsw i32 %11, 4
  %13 = add nsw i32 %12, 3
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i64, i64* %10, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = trunc i64 %16 to i32
  %18 = shl i32 %17, 24
  %19 = load i64*, i64** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = mul nsw i32 %20, 4
  %22 = add nsw i32 %21, 2
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %19, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = shl i32 %26, 16
  %28 = or i32 %18, %27
  %29 = load i64*, i64** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = mul nsw i32 %30, 4
  %32 = add nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %29, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = shl i32 %36, 8
  %38 = or i32 %28, %37
  %39 = load i64*, i64** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = mul nsw i32 %40, 4
  %42 = add nsw i32 %41, 0
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %39, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = shl i32 %46, 0
  %48 = or i32 %38, %47
  %49 = load i32*, i32** %3, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32 %48, i32* %52, align 4
  br label %53

53:                                               ; preds = %9
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %6

56:                                               ; preds = %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
