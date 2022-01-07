; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-bcm2835.c_bcm2835_clock_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-bcm2835.c_bcm2835_clock_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.bcm2835_clock = type { %struct.bcm2835_clock_data*, %struct.bcm2835_cprman* }
%struct.bcm2835_clock_data = type { i32, i32 }
%struct.bcm2835_cprman = type { i32 }

@CM_FRAC = common dso_local global i32 0, align 4
@CM_DIV_FRAC_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @bcm2835_clock_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835_clock_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.bcm2835_clock*, align 8
  %8 = alloca %struct.bcm2835_cprman*, align 8
  %9 = alloca %struct.bcm2835_clock_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %13 = call %struct.bcm2835_clock* @bcm2835_clock_from_hw(%struct.clk_hw* %12)
  store %struct.bcm2835_clock* %13, %struct.bcm2835_clock** %7, align 8
  %14 = load %struct.bcm2835_clock*, %struct.bcm2835_clock** %7, align 8
  %15 = getelementptr inbounds %struct.bcm2835_clock, %struct.bcm2835_clock* %14, i32 0, i32 1
  %16 = load %struct.bcm2835_cprman*, %struct.bcm2835_cprman** %15, align 8
  store %struct.bcm2835_cprman* %16, %struct.bcm2835_cprman** %8, align 8
  %17 = load %struct.bcm2835_clock*, %struct.bcm2835_clock** %7, align 8
  %18 = getelementptr inbounds %struct.bcm2835_clock, %struct.bcm2835_clock* %17, i32 0, i32 0
  %19 = load %struct.bcm2835_clock_data*, %struct.bcm2835_clock_data** %18, align 8
  store %struct.bcm2835_clock_data* %19, %struct.bcm2835_clock_data** %9, align 8
  %20 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @bcm2835_clock_choose_div(%struct.clk_hw* %20, i64 %21, i64 %22, i32 0)
  store i32 %23, i32* %10, align 4
  %24 = load %struct.bcm2835_cprman*, %struct.bcm2835_cprman** %8, align 8
  %25 = getelementptr inbounds %struct.bcm2835_cprman, %struct.bcm2835_cprman* %24, i32 0, i32 0
  %26 = call i32 @spin_lock(i32* %25)
  %27 = load %struct.bcm2835_cprman*, %struct.bcm2835_cprman** %8, align 8
  %28 = load %struct.bcm2835_clock_data*, %struct.bcm2835_clock_data** %9, align 8
  %29 = getelementptr inbounds %struct.bcm2835_clock_data, %struct.bcm2835_clock_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @cprman_read(%struct.bcm2835_cprman* %27, i32 %30)
  %32 = load i32, i32* @CM_FRAC, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @CM_DIV_FRAC_MASK, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %3
  %40 = load i32, i32* @CM_FRAC, align 4
  br label %42

41:                                               ; preds = %3
  br label %42

42:                                               ; preds = %41, %39
  %43 = phi i32 [ %40, %39 ], [ 0, %41 ]
  %44 = load i32, i32* %11, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %11, align 4
  %46 = load %struct.bcm2835_cprman*, %struct.bcm2835_cprman** %8, align 8
  %47 = load %struct.bcm2835_clock_data*, %struct.bcm2835_clock_data** %9, align 8
  %48 = getelementptr inbounds %struct.bcm2835_clock_data, %struct.bcm2835_clock_data* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @cprman_write(%struct.bcm2835_cprman* %46, i32 %49, i32 %50)
  %52 = load %struct.bcm2835_cprman*, %struct.bcm2835_cprman** %8, align 8
  %53 = load %struct.bcm2835_clock_data*, %struct.bcm2835_clock_data** %9, align 8
  %54 = getelementptr inbounds %struct.bcm2835_clock_data, %struct.bcm2835_clock_data* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @cprman_write(%struct.bcm2835_cprman* %52, i32 %55, i32 %56)
  %58 = load %struct.bcm2835_cprman*, %struct.bcm2835_cprman** %8, align 8
  %59 = getelementptr inbounds %struct.bcm2835_cprman, %struct.bcm2835_cprman* %58, i32 0, i32 0
  %60 = call i32 @spin_unlock(i32* %59)
  ret i32 0
}

declare dso_local %struct.bcm2835_clock* @bcm2835_clock_from_hw(%struct.clk_hw*) #1

declare dso_local i32 @bcm2835_clock_choose_div(%struct.clk_hw*, i64, i64, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @cprman_read(%struct.bcm2835_cprman*, i32) #1

declare dso_local i32 @cprman_write(%struct.bcm2835_cprman*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
