; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_test_secp256k1_pippenger_bucket_window_inv.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_test_secp256k1_pippenger_bucket_window_inv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PIPPENGER_MAX_BUCKET_WINDOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_secp256k1_pippenger_bucket_window_inv() #0 {
  %1 = alloca i32, align 4
  %2 = call i64 @secp256k1_pippenger_bucket_window_inv(i32 0)
  %3 = icmp eq i64 %2, 0
  %4 = zext i1 %3 to i32
  %5 = call i32 @CHECK(i32 %4)
  store i32 1, i32* %1, align 4
  br label %6

6:                                                ; preds = %31, %0
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @PIPPENGER_MAX_BUCKET_WINDOW, align 4
  %9 = icmp sle i32 %7, %8
  br i1 %9, label %10, label %34

10:                                               ; preds = %6
  %11 = load i32, i32* %1, align 4
  %12 = call i64 @secp256k1_pippenger_bucket_window_inv(i32 %11)
  %13 = call i32 @secp256k1_pippenger_bucket_window(i64 %12)
  %14 = load i32, i32* %1, align 4
  %15 = icmp eq i32 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @CHECK(i32 %16)
  %18 = load i32, i32* %1, align 4
  %19 = load i32, i32* @PIPPENGER_MAX_BUCKET_WINDOW, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %10
  %22 = load i32, i32* %1, align 4
  %23 = call i64 @secp256k1_pippenger_bucket_window_inv(i32 %22)
  %24 = add nsw i64 %23, 1
  %25 = call i32 @secp256k1_pippenger_bucket_window(i64 %24)
  %26 = load i32, i32* %1, align 4
  %27 = icmp sgt i32 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @CHECK(i32 %28)
  br label %30

30:                                               ; preds = %21, %10
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %1, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %1, align 4
  br label %6

34:                                               ; preds = %6
  ret void
}

declare dso_local i32 @CHECK(i32) #1

declare dso_local i64 @secp256k1_pippenger_bucket_window_inv(i32) #1

declare dso_local i32 @secp256k1_pippenger_bucket_window(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
