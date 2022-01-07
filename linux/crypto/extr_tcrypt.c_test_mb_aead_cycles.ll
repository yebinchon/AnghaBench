; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_tcrypt.c_test_mb_aead_cycles.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_tcrypt.c_test_mb_aead_cycles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_mb_aead_data = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"1 operation in %lu cycles (%d bytes)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.test_mb_aead_data*, i32, i32, i32)* @test_mb_aead_cycles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_mb_aead_cycles(%struct.test_mb_aead_data* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.test_mb_aead_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.test_mb_aead_data* %0, %struct.test_mb_aead_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 0, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i32* @kcalloc(i32 %16, i32 4, i32 %17)
  store i32* %18, i32** %13, align 8
  %19 = load i32*, i32** %13, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %78

24:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  br label %25

25:                                               ; preds = %38, %24
  %26 = load i32, i32* %12, align 4
  %27 = icmp slt i32 %26, 4
  br i1 %27, label %28, label %41

28:                                               ; preds = %25
  %29 = load %struct.test_mb_aead_data*, %struct.test_mb_aead_data** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32*, i32** %13, align 8
  %33 = call i32 @do_mult_aead_op(%struct.test_mb_aead_data* %29, i32 %30, i32 %31, i32* %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %74

37:                                               ; preds = %28
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %12, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %12, align 4
  br label %25

41:                                               ; preds = %25
  store i32 0, i32* %12, align 4
  br label %42

42:                                               ; preds = %62, %41
  %43 = load i32, i32* %12, align 4
  %44 = icmp slt i32 %43, 8
  br i1 %44, label %45, label %65

45:                                               ; preds = %42
  %46 = call i64 (...) @get_cycles()
  store i64 %46, i64* %14, align 8
  %47 = load %struct.test_mb_aead_data*, %struct.test_mb_aead_data** %6, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32*, i32** %13, align 8
  %51 = call i32 @do_mult_aead_op(%struct.test_mb_aead_data* %47, i32 %48, i32 %49, i32* %50)
  store i32 %51, i32* %11, align 4
  %52 = call i64 (...) @get_cycles()
  store i64 %52, i64* %15, align 8
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  br label %74

56:                                               ; preds = %45
  %57 = load i64, i64* %15, align 8
  %58 = load i64, i64* %14, align 8
  %59 = sub nsw i64 %57, %58
  %60 = load i64, i64* %10, align 8
  %61 = add i64 %60, %59
  store i64 %61, i64* %10, align 8
  br label %62

62:                                               ; preds = %56
  %63 = load i32, i32* %12, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %12, align 4
  br label %42

65:                                               ; preds = %42
  %66 = load i64, i64* %10, align 8
  %67 = add i64 %66, 4
  %68 = load i32, i32* %9, align 4
  %69 = mul nsw i32 8, %68
  %70 = sext i32 %69 to i64
  %71 = udiv i64 %67, %70
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @pr_cont(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %71, i32 %72)
  br label %74

74:                                               ; preds = %65, %55, %36
  %75 = load i32*, i32** %13, align 8
  %76 = call i32 @kfree(i32* %75)
  %77 = load i32, i32* %11, align 4
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %74, %21
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @do_mult_aead_op(%struct.test_mb_aead_data*, i32, i32, i32*) #1

declare dso_local i64 @get_cycles(...) #1

declare dso_local i32 @pr_cont(i8*, i64, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
