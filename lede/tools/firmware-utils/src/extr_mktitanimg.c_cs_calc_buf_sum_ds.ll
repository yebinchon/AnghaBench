; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mktitanimg.c_cs_calc_buf_sum_ds.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mktitanimg.c_cs_calc_buf_sum_ds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crctab = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @cs_calc_buf_sum_ds(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i64 0, i64* %9, align 8
  %12 = load i8*, i8** %5, align 8
  store i8* %12, i8** %10, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %8, align 4
  %15 = add nsw i32 %13, %14
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %11, align 8
  br label %17

17:                                               ; preds = %21, %4
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %6, align 4
  %20 = icmp ne i32 %18, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %17
  %22 = load i64, i64* %9, align 8
  %23 = shl i64 %22, 8
  %24 = load i64*, i64** @crctab, align 8
  %25 = load i64, i64* %9, align 8
  %26 = lshr i64 %25, 24
  %27 = load i8*, i8** %10, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %10, align 8
  %29 = load i8, i8* %27, align 1
  %30 = sext i8 %29 to i64
  %31 = xor i64 %26, %30
  %32 = and i64 %31, 255
  %33 = getelementptr inbounds i64, i64* %24, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = xor i64 %23, %34
  store i64 %35, i64* %9, align 8
  br label %17

36:                                               ; preds = %17
  %37 = load i8*, i8** %7, align 8
  store i8* %37, i8** %10, align 8
  br label %38

38:                                               ; preds = %42, %36
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %8, align 4
  %41 = icmp ne i32 %39, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %38
  %43 = load i64, i64* %9, align 8
  %44 = shl i64 %43, 8
  %45 = load i64*, i64** @crctab, align 8
  %46 = load i64, i64* %9, align 8
  %47 = lshr i64 %46, 24
  %48 = load i8*, i8** %10, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %10, align 8
  %50 = load i8, i8* %48, align 1
  %51 = sext i8 %50 to i64
  %52 = xor i64 %47, %51
  %53 = and i64 %52, 255
  %54 = getelementptr inbounds i64, i64* %45, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = xor i64 %44, %55
  store i64 %56, i64* %9, align 8
  br label %38

57:                                               ; preds = %38
  br label %58

58:                                               ; preds = %73, %57
  %59 = load i64, i64* %11, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %76

61:                                               ; preds = %58
  %62 = load i64, i64* %9, align 8
  %63 = shl i64 %62, 8
  %64 = load i64*, i64** @crctab, align 8
  %65 = load i64, i64* %9, align 8
  %66 = lshr i64 %65, 24
  %67 = load i64, i64* %11, align 8
  %68 = xor i64 %66, %67
  %69 = and i64 %68, 255
  %70 = getelementptr inbounds i64, i64* %64, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = xor i64 %63, %71
  store i64 %72, i64* %9, align 8
  br label %73

73:                                               ; preds = %61
  %74 = load i64, i64* %11, align 8
  %75 = lshr i64 %74, 8
  store i64 %75, i64* %11, align 8
  br label %58

76:                                               ; preds = %58
  %77 = load i64, i64* %9, align 8
  %78 = xor i64 %77, -1
  %79 = and i64 %78, 4294967295
  store i64 %79, i64* %9, align 8
  %80 = load i64, i64* %9, align 8
  ret i64 %80
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
