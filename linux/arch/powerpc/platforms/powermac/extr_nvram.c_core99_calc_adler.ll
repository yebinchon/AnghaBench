; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powermac/extr_nvram.c_core99_calc_adler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powermac/extr_nvram.c_core99_calc_adler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CORE99_ADLER_START = common dso_local global i32 0, align 4
@NVRAM_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*)* @core99_calc_adler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @core99_calc_adler(i64* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64* %0, i64** %2, align 8
  %6 = load i32, i32* @CORE99_ADLER_START, align 4
  %7 = load i64*, i64** %2, align 8
  %8 = sext i32 %6 to i64
  %9 = getelementptr inbounds i64, i64* %7, i64 %8
  store i64* %9, i64** %2, align 8
  store i64 1, i64* %4, align 8
  store i64 0, i64* %5, align 8
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %36, %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @NVRAM_SIZE, align 4
  %13 = load i32, i32* @CORE99_ADLER_START, align 4
  %14 = sub nsw i32 %12, %13
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %39

16:                                               ; preds = %10
  %17 = load i32, i32* %3, align 4
  %18 = srem i32 %17, 5000
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load i64, i64* %5, align 8
  %22 = urem i64 %21, 65521
  store i64 %22, i64* %5, align 8
  %23 = load i64, i64* %5, align 8
  %24 = urem i64 %23, 65521
  store i64 %24, i64* %5, align 8
  br label %25

25:                                               ; preds = %20, %16
  %26 = load i64*, i64** %2, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %4, align 8
  %32 = add i64 %31, %30
  store i64 %32, i64* %4, align 8
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* %5, align 8
  %35 = add i64 %34, %33
  store i64 %35, i64* %5, align 8
  br label %36

36:                                               ; preds = %25
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %10

39:                                               ; preds = %10
  %40 = load i64, i64* %4, align 8
  %41 = urem i64 %40, 65521
  store i64 %41, i64* %4, align 8
  %42 = load i64, i64* %5, align 8
  %43 = urem i64 %42, 65521
  store i64 %43, i64* %5, align 8
  %44 = load i64, i64* %5, align 8
  %45 = shl i64 %44, 16
  %46 = load i64, i64* %4, align 8
  %47 = or i64 %45, %46
  ret i64 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
