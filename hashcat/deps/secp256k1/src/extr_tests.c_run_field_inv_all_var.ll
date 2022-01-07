; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_run_field_inv_all_var.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_run_field_inv_all_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @run_field_inv_all_var() #0 {
  %1 = alloca [16 x i32], align 16
  %2 = alloca [16 x i32], align 16
  %3 = alloca [16 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %8 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 0
  %9 = call i32 @secp256k1_fe_inv_all_var(i32* %7, i32* %8, i64 0)
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %68, %0
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @count, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %71

14:                                               ; preds = %10
  %15 = call i32 @secp256k1_rand_int(i32 15)
  %16 = add nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %18

18:                                               ; preds = %26, %14
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 %23
  %25 = call i32 @random_fe_non_zero(i32* %24)
  br label %26

26:                                               ; preds = %22
  %27 = load i64, i64* %5, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %5, align 8
  br label %18

29:                                               ; preds = %18
  %30 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %31 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 0
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @secp256k1_fe_inv_all_var(i32* %30, i32* %31, i64 %32)
  store i64 0, i64* %5, align 8
  br label %34

34:                                               ; preds = %45, %29
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* %6, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %34
  %39 = load i64, i64* %5, align 8
  %40 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 %39
  %41 = load i64, i64* %5, align 8
  %42 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 %41
  %43 = call i32 @check_fe_inverse(i32* %40, i32* %42)
  %44 = call i32 @CHECK(i32 %43)
  br label %45

45:                                               ; preds = %38
  %46 = load i64, i64* %5, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %5, align 8
  br label %34

48:                                               ; preds = %34
  %49 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %50 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @secp256k1_fe_inv_all_var(i32* %49, i32* %50, i64 %51)
  store i64 0, i64* %5, align 8
  br label %53

53:                                               ; preds = %64, %48
  %54 = load i64, i64* %5, align 8
  %55 = load i64, i64* %6, align 8
  %56 = icmp ult i64 %54, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %53
  %58 = load i64, i64* %5, align 8
  %59 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 %58
  %60 = load i64, i64* %5, align 8
  %61 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 %60
  %62 = call i32 @check_fe_equal(i32* %59, i32* %61)
  %63 = call i32 @CHECK(i32 %62)
  br label %64

64:                                               ; preds = %57
  %65 = load i64, i64* %5, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %5, align 8
  br label %53

67:                                               ; preds = %53
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %4, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %4, align 4
  br label %10

71:                                               ; preds = %10
  ret void
}

declare dso_local i32 @secp256k1_fe_inv_all_var(i32*, i32*, i64) #1

declare dso_local i32 @secp256k1_rand_int(i32) #1

declare dso_local i32 @random_fe_non_zero(i32*) #1

declare dso_local i32 @CHECK(i32) #1

declare dso_local i32 @check_fe_inverse(i32*, i32*) #1

declare dso_local i32 @check_fe_equal(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
