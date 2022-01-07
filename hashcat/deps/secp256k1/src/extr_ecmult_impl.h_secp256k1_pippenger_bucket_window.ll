; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_ecmult_impl.h_secp256k1_pippenger_bucket_window.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_ecmult_impl.h_secp256k1_pippenger_bucket_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PIPPENGER_MAX_BUCKET_WINDOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @secp256k1_pippenger_bucket_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @secp256k1_pippenger_bucket_window(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = icmp ule i64 %4, 1
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %49

7:                                                ; preds = %1
  %8 = load i64, i64* %3, align 8
  %9 = icmp ule i64 %8, 11
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  store i32 2, i32* %2, align 4
  br label %49

11:                                               ; preds = %7
  %12 = load i64, i64* %3, align 8
  %13 = icmp ule i64 %12, 45
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 3, i32* %2, align 4
  br label %49

15:                                               ; preds = %11
  %16 = load i64, i64* %3, align 8
  %17 = icmp ule i64 %16, 100
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 4, i32* %2, align 4
  br label %49

19:                                               ; preds = %15
  %20 = load i64, i64* %3, align 8
  %21 = icmp ule i64 %20, 275
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 5, i32* %2, align 4
  br label %49

23:                                               ; preds = %19
  %24 = load i64, i64* %3, align 8
  %25 = icmp ule i64 %24, 625
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 6, i32* %2, align 4
  br label %49

27:                                               ; preds = %23
  %28 = load i64, i64* %3, align 8
  %29 = icmp ule i64 %28, 1850
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 7, i32* %2, align 4
  br label %49

31:                                               ; preds = %27
  %32 = load i64, i64* %3, align 8
  %33 = icmp ule i64 %32, 3400
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 8, i32* %2, align 4
  br label %49

35:                                               ; preds = %31
  %36 = load i64, i64* %3, align 8
  %37 = icmp ule i64 %36, 9630
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 9, i32* %2, align 4
  br label %49

39:                                               ; preds = %35
  %40 = load i64, i64* %3, align 8
  %41 = icmp ule i64 %40, 17900
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 10, i32* %2, align 4
  br label %49

43:                                               ; preds = %39
  %44 = load i64, i64* %3, align 8
  %45 = icmp ule i64 %44, 32800
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 11, i32* %2, align 4
  br label %49

47:                                               ; preds = %43
  %48 = load i32, i32* @PIPPENGER_MAX_BUCKET_WINDOW, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %47, %46, %42, %38, %34, %30, %26, %22, %18, %14, %10, %6
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
