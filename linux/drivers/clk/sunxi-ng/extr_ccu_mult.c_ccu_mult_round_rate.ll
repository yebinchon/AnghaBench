; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_mult.c_ccu_mult_round_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_mult.c_ccu_mult_round_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccu_mux_internal = type { i32 }
%struct.clk_hw = type { i32 }
%struct.ccu_mult = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i64, i32 }
%struct._ccu_mult = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ccu_mux_internal*, %struct.clk_hw*, i64*, i64, i8*)* @ccu_mult_round_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ccu_mult_round_rate(%struct.ccu_mux_internal* %0, %struct.clk_hw* %1, i64* %2, i64 %3, i8* %4) #0 {
  %6 = alloca %struct.ccu_mux_internal*, align 8
  %7 = alloca %struct.clk_hw*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.ccu_mult*, align 8
  %12 = alloca %struct._ccu_mult, align 8
  store %struct.ccu_mux_internal* %0, %struct.ccu_mux_internal** %6, align 8
  store %struct.clk_hw* %1, %struct.clk_hw** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  store i8* %4, i8** %10, align 8
  %13 = load i8*, i8** %10, align 8
  %14 = bitcast i8* %13 to %struct.ccu_mult*
  store %struct.ccu_mult* %14, %struct.ccu_mult** %11, align 8
  %15 = load %struct.ccu_mult*, %struct.ccu_mult** %11, align 8
  %16 = getelementptr inbounds %struct.ccu_mult, %struct.ccu_mult* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = getelementptr inbounds %struct._ccu_mult, %struct._ccu_mult* %12, i32 0, i32 2
  store i32 %18, i32* %19, align 8
  %20 = load %struct.ccu_mult*, %struct.ccu_mult** %11, align 8
  %21 = getelementptr inbounds %struct.ccu_mult, %struct.ccu_mult* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %5
  %26 = load %struct.ccu_mult*, %struct.ccu_mult** %11, align 8
  %27 = getelementptr inbounds %struct.ccu_mult, %struct.ccu_mult* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct._ccu_mult, %struct._ccu_mult* %12, i32 0, i32 1
  store i64 %29, i64* %30, align 8
  br label %45

31:                                               ; preds = %5
  %32 = load %struct.ccu_mult*, %struct.ccu_mult** %11, align 8
  %33 = getelementptr inbounds %struct.ccu_mult, %struct.ccu_mult* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = shl i32 1, %35
  %37 = sext i32 %36 to i64
  %38 = load %struct.ccu_mult*, %struct.ccu_mult** %11, align 8
  %39 = getelementptr inbounds %struct.ccu_mult, %struct.ccu_mult* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %37, %41
  %43 = sub nsw i64 %42, 1
  %44 = getelementptr inbounds %struct._ccu_mult, %struct._ccu_mult* %12, i32 0, i32 1
  store i64 %43, i64* %44, align 8
  br label %45

45:                                               ; preds = %31, %25
  %46 = load i64*, i64** %8, align 8
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %9, align 8
  %49 = call i32 @ccu_mult_find_best(i64 %47, i64 %48, %struct._ccu_mult* %12)
  %50 = load i64*, i64** %8, align 8
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct._ccu_mult, %struct._ccu_mult* %12, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = mul i64 %51, %53
  ret i64 %54
}

declare dso_local i32 @ccu_mult_find_best(i64, i64, %struct._ccu_mult*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
