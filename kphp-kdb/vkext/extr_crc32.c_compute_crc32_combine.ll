; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_crc32.c_compute_crc32_combine.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_crc32.c_compute_crc32_combine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@compute_crc32_combine.power_buf_initialized = internal global i32 0, align 4
@compute_crc32_combine.power_buf = internal global [1024 x i32] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @compute_crc32_combine(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp sle i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %4, align 4
  br label %71

14:                                               ; preds = %3
  %15 = load i32, i32* @compute_crc32_combine.power_buf_initialized, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %50, label %17

17:                                               ; preds = %14
  store i32 -306674912, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @compute_crc32_combine.power_buf, i64 0, i64 0), align 16
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %28, %17
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 31
  br i1 %20, label %21, label %31

21:                                               ; preds = %18
  %22 = load i32, i32* %8, align 4
  %23 = shl i32 1, %22
  %24 = load i32, i32* %8, align 4
  %25 = add nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [1024 x i32], [1024 x i32]* @compute_crc32_combine.power_buf, i64 0, i64 %26
  store i32 %23, i32* %27, align 4
  br label %28

28:                                               ; preds = %21
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %8, align 4
  br label %18

31:                                               ; preds = %18
  store i32 1, i32* %8, align 4
  br label %32

32:                                               ; preds = %46, %31
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 32
  br i1 %34, label %35, label %49

35:                                               ; preds = %32
  %36 = load i32, i32* %8, align 4
  %37 = shl i32 %36, 5
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @compute_crc32_combine.power_buf, i64 0, i64 0), i64 %38
  %40 = load i32, i32* %8, align 4
  %41 = sub nsw i32 %40, 1
  %42 = shl i32 %41, 5
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @compute_crc32_combine.power_buf, i64 0, i64 0), i64 %43
  %45 = call i32 @gf32_matrix_square(i32* %39, i32* %44)
  br label %46

46:                                               ; preds = %35
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %8, align 4
  br label %32

49:                                               ; preds = %32
  store i32 1, i32* @compute_crc32_combine.power_buf_initialized, align 4
  br label %50

50:                                               ; preds = %49, %14
  store i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @compute_crc32_combine.power_buf, i64 0, i64 64), i32** %9, align 8
  br label %51

51:                                               ; preds = %64, %50
  %52 = load i32*, i32** %9, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 32
  store i32* %53, i32** %9, align 8
  %54 = load i32, i32* %7, align 4
  %55 = and i32 %54, 1
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load i32*, i32** %9, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @gf32_matrix_times(i32* %58, i32 %59)
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %57, %51
  %62 = load i32, i32* %7, align 4
  %63 = ashr i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %51, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* %6, align 4
  %70 = xor i32 %68, %69
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %67, %12
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @gf32_matrix_square(i32*, i32*) #1

declare dso_local i32 @gf32_matrix_times(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
