; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_curve25519.tweetnacl.c_car25519.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_curve25519.tweetnacl.c_car25519.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*)* @car25519 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @car25519(i64* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i64* %0, i64** %2, align 8
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %50, %1
  %6 = load i64, i64* %4, align 8
  %7 = icmp ult i64 %6, 16
  br i1 %7, label %8, label %53

8:                                                ; preds = %5
  %9 = load i64*, i64** %2, align 8
  %10 = load i64, i64* %4, align 8
  %11 = getelementptr inbounds i64, i64* %9, i64 %10
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %12, 65536
  store i64 %13, i64* %11, align 8
  %14 = load i64*, i64** %2, align 8
  %15 = load i64, i64* %4, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = ashr i64 %17, 16
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = sub nsw i32 %20, 1
  %22 = load i32, i32* %3, align 4
  %23 = sub nsw i32 %22, 1
  %24 = mul nsw i32 37, %23
  %25 = load i64, i64* %4, align 8
  %26 = icmp eq i64 %25, 15
  %27 = zext i1 %26 to i32
  %28 = mul nsw i32 %24, %27
  %29 = add nsw i32 %21, %28
  %30 = sext i32 %29 to i64
  %31 = load i64*, i64** %2, align 8
  %32 = load i64, i64* %4, align 8
  %33 = add i64 %32, 1
  %34 = load i64, i64* %4, align 8
  %35 = icmp ult i64 %34, 15
  %36 = zext i1 %35 to i32
  %37 = sext i32 %36 to i64
  %38 = mul i64 %33, %37
  %39 = getelementptr inbounds i64, i64* %31, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, %30
  store i64 %41, i64* %39, align 8
  %42 = load i32, i32* %3, align 4
  %43 = shl i32 %42, 16
  %44 = sext i32 %43 to i64
  %45 = load i64*, i64** %2, align 8
  %46 = load i64, i64* %4, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = sub nsw i64 %48, %44
  store i64 %49, i64* %47, align 8
  br label %50

50:                                               ; preds = %8
  %51 = load i64, i64* %4, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %4, align 8
  br label %5

53:                                               ; preds = %5
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
