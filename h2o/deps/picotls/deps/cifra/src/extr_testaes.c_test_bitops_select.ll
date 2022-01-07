; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testaes.c_test_bitops_select.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testaes.c_test_bitops_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_bitops_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_bitops_select() #0 {
  %1 = alloca [8 x i64], align 16
  %2 = alloca [32 x i64], align 16
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 0, i64* %3, align 8
  br label %7

7:                                                ; preds = %17, %0
  %8 = load i64, i64* %3, align 8
  %9 = icmp ult i64 %8, 8
  br i1 %9, label %10, label %20

10:                                               ; preds = %7
  %11 = load i64, i64* %3, align 8
  %12 = trunc i64 %11 to i32
  %13 = shl i32 1, %12
  %14 = sext i32 %13 to i64
  %15 = load i64, i64* %3, align 8
  %16 = getelementptr inbounds [8 x i64], [8 x i64]* %1, i64 0, i64 %15
  store i64 %14, i64* %16, align 8
  br label %17

17:                                               ; preds = %10
  %18 = load i64, i64* %3, align 8
  %19 = add i64 %18, 1
  store i64 %19, i64* %3, align 8
  br label %7

20:                                               ; preds = %7
  store i64 0, i64* %4, align 8
  br label %21

21:                                               ; preds = %31, %20
  %22 = load i64, i64* %4, align 8
  %23 = icmp ult i64 %22, 32
  br i1 %23, label %24, label %34

24:                                               ; preds = %21
  %25 = load i64, i64* %4, align 8
  %26 = trunc i64 %25 to i32
  %27 = shl i32 1, %26
  %28 = sext i32 %27 to i64
  %29 = load i64, i64* %4, align 8
  %30 = getelementptr inbounds [32 x i64], [32 x i64]* %2, i64 0, i64 %29
  store i64 %28, i64* %30, align 8
  br label %31

31:                                               ; preds = %24
  %32 = load i64, i64* %4, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %4, align 8
  br label %21

34:                                               ; preds = %21
  store i64 0, i64* %5, align 8
  br label %35

35:                                               ; preds = %48, %34
  %36 = load i64, i64* %5, align 8
  %37 = icmp ult i64 %36, 8
  br i1 %37, label %38, label %51

38:                                               ; preds = %35
  %39 = load i64, i64* %5, align 8
  %40 = getelementptr inbounds [8 x i64], [8 x i64]* %1, i64 0, i64 0
  %41 = call i64 @select_u8(i64 %39, i64* %40, i32 8)
  %42 = load i64, i64* %5, align 8
  %43 = getelementptr inbounds [8 x i64], [8 x i64]* %1, i64 0, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %41, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @TEST_CHECK(i32 %46)
  br label %48

48:                                               ; preds = %38
  %49 = load i64, i64* %5, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %5, align 8
  br label %35

51:                                               ; preds = %35
  store i64 0, i64* %6, align 8
  br label %52

52:                                               ; preds = %65, %51
  %53 = load i64, i64* %6, align 8
  %54 = icmp ult i64 %53, 32
  br i1 %54, label %55, label %68

55:                                               ; preds = %52
  %56 = load i64, i64* %6, align 8
  %57 = getelementptr inbounds [32 x i64], [32 x i64]* %2, i64 0, i64 0
  %58 = call i64 @select_u32(i64 %56, i64* %57, i32 32)
  %59 = load i64, i64* %6, align 8
  %60 = getelementptr inbounds [32 x i64], [32 x i64]* %2, i64 0, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %58, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @TEST_CHECK(i32 %63)
  br label %65

65:                                               ; preds = %55
  %66 = load i64, i64* %6, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %6, align 8
  br label %52

68:                                               ; preds = %52
  ret void
}

declare dso_local i32 @TEST_CHECK(i32) #1

declare dso_local i64 @select_u8(i64, i64*, i32) #1

declare dso_local i64 @select_u32(i64, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
