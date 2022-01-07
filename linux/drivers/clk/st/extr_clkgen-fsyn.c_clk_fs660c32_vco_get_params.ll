; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/st/extr_clkgen-fsyn.c_clk_fs660c32_vco_get_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/st/extr_clkgen-fsyn.c_clk_fs660c32_vco_get_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm_fs = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, %struct.stm_fs*)* @clk_fs660c32_vco_get_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_fs660c32_vco_get_params(i64 %0, i64 %1, %struct.stm_fs* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.stm_fs*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.stm_fs* %2, %struct.stm_fs** %7, align 8
  store i64 1, i64* %8, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp ult i64 %10, 384000000
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load i64, i64* %6, align 8
  %14 = icmp ugt i64 %13, 660000000
  br i1 %14, label %15, label %18

15:                                               ; preds = %12, %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %42

18:                                               ; preds = %12
  %19 = load i64, i64* %5, align 8
  %20 = icmp ugt i64 %19, 40000000
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %42

24:                                               ; preds = %18
  %25 = load i64, i64* %5, align 8
  %26 = udiv i64 %25, 1000
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* %6, align 8
  %28 = udiv i64 %27, 1000
  store i64 %28, i64* %6, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* %8, align 8
  %31 = mul i64 %29, %30
  %32 = load i64, i64* %5, align 8
  %33 = udiv i64 %31, %32
  store i64 %33, i64* %9, align 8
  %34 = load i64, i64* %9, align 8
  %35 = icmp ult i64 %34, 16
  br i1 %35, label %36, label %37

36:                                               ; preds = %24
  store i64 16, i64* %9, align 8
  br label %37

37:                                               ; preds = %36, %24
  %38 = load i64, i64* %9, align 8
  %39 = sub i64 %38, 16
  %40 = load %struct.stm_fs*, %struct.stm_fs** %7, align 8
  %41 = getelementptr inbounds %struct.stm_fs, %struct.stm_fs* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %37, %21, %15
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
