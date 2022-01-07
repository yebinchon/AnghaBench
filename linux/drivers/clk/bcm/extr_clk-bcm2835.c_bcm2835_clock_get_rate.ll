; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-bcm2835.c_bcm2835_clock_get_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-bcm2835.c_bcm2835_clock_get_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.bcm2835_clock = type { %struct.bcm2835_clock_data*, %struct.bcm2835_cprman* }
%struct.bcm2835_clock_data = type { i64, i64, i32 }
%struct.bcm2835_cprman = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @bcm2835_clock_get_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bcm2835_clock_get_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.bcm2835_clock*, align 8
  %7 = alloca %struct.bcm2835_cprman*, align 8
  %8 = alloca %struct.bcm2835_clock_data*, align 8
  %9 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %11 = call %struct.bcm2835_clock* @bcm2835_clock_from_hw(%struct.clk_hw* %10)
  store %struct.bcm2835_clock* %11, %struct.bcm2835_clock** %6, align 8
  %12 = load %struct.bcm2835_clock*, %struct.bcm2835_clock** %6, align 8
  %13 = getelementptr inbounds %struct.bcm2835_clock, %struct.bcm2835_clock* %12, i32 0, i32 1
  %14 = load %struct.bcm2835_cprman*, %struct.bcm2835_cprman** %13, align 8
  store %struct.bcm2835_cprman* %14, %struct.bcm2835_cprman** %7, align 8
  %15 = load %struct.bcm2835_clock*, %struct.bcm2835_clock** %6, align 8
  %16 = getelementptr inbounds %struct.bcm2835_clock, %struct.bcm2835_clock* %15, i32 0, i32 0
  %17 = load %struct.bcm2835_clock_data*, %struct.bcm2835_clock_data** %16, align 8
  store %struct.bcm2835_clock_data* %17, %struct.bcm2835_clock_data** %8, align 8
  %18 = load %struct.bcm2835_clock_data*, %struct.bcm2835_clock_data** %8, align 8
  %19 = getelementptr inbounds %struct.bcm2835_clock_data, %struct.bcm2835_clock_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = load %struct.bcm2835_clock_data*, %struct.bcm2835_clock_data** %8, align 8
  %24 = getelementptr inbounds %struct.bcm2835_clock_data, %struct.bcm2835_clock_data* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i64, i64* %5, align 8
  store i64 %28, i64* %3, align 8
  br label %39

29:                                               ; preds = %22, %2
  %30 = load %struct.bcm2835_cprman*, %struct.bcm2835_cprman** %7, align 8
  %31 = load %struct.bcm2835_clock_data*, %struct.bcm2835_clock_data** %8, align 8
  %32 = getelementptr inbounds %struct.bcm2835_clock_data, %struct.bcm2835_clock_data* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @cprman_read(%struct.bcm2835_cprman* %30, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load %struct.bcm2835_clock*, %struct.bcm2835_clock** %6, align 8
  %36 = load i64, i64* %5, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i64 @bcm2835_clock_rate_from_divisor(%struct.bcm2835_clock* %35, i64 %36, i32 %37)
  store i64 %38, i64* %3, align 8
  br label %39

39:                                               ; preds = %29, %27
  %40 = load i64, i64* %3, align 8
  ret i64 %40
}

declare dso_local %struct.bcm2835_clock* @bcm2835_clock_from_hw(%struct.clk_hw*) #1

declare dso_local i32 @cprman_read(%struct.bcm2835_cprman*, i32) #1

declare dso_local i64 @bcm2835_clock_rate_from_divisor(%struct.bcm2835_clock*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
