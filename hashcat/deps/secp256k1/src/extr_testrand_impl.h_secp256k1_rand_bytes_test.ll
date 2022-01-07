; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_testrand_impl.h_secp256k1_rand_bytes_test.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_testrand_impl.h_secp256k1_rand_bytes_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @secp256k1_rand_bytes_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @secp256k1_rand_bytes_test(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @memset(i8* %8, i32 0, i64 %9)
  br label %11

11:                                               ; preds = %52, %2
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* %4, align 8
  %14 = mul i64 %13, 8
  %15 = icmp ult i64 %12, %14
  br i1 %15, label %16, label %53

16:                                               ; preds = %11
  %17 = call i32 @secp256k1_rand_bits(i32 6)
  %18 = call i32 @secp256k1_rand_bits(i32 5)
  %19 = mul nsw i32 %17, %18
  %20 = add nsw i32 %19, 16
  %21 = sdiv i32 %20, 31
  %22 = add nsw i32 1, %21
  store i32 %22, i32* %6, align 4
  %23 = call i32 @secp256k1_rand_bits(i32 1)
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %7, align 8
  br label %25

25:                                               ; preds = %35, %16
  %26 = load i32, i32* %6, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* %4, align 8
  %31 = mul i64 %30, 8
  %32 = icmp ult i64 %29, %31
  br label %33

33:                                               ; preds = %28, %25
  %34 = phi i1 [ false, %25 ], [ %32, %28 ]
  br i1 %34, label %35, label %52

35:                                               ; preds = %33
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* %5, align 8
  %38 = urem i64 %37, 8
  %39 = shl i64 %36, %38
  %40 = load i8*, i8** %3, align 8
  %41 = load i64, i64* %5, align 8
  %42 = udiv i64 %41, 8
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i64
  %46 = or i64 %45, %39
  %47 = trunc i64 %46 to i8
  store i8 %47, i8* %43, align 1
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %6, align 4
  %50 = load i64, i64* %5, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %5, align 8
  br label %25

52:                                               ; preds = %33
  br label %11

53:                                               ; preds = %11
  ret void
}

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @secp256k1_rand_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
