; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-kona.c_divider_read_scaled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-kona.c_divider_read_scaled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccu_data = type { i32 }
%struct.bcm_clk_div = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccu_data*, %struct.bcm_clk_div*)* @divider_read_scaled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @divider_read_scaled(%struct.ccu_data* %0, %struct.bcm_clk_div* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ccu_data*, align 8
  %5 = alloca %struct.bcm_clk_div*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ccu_data* %0, %struct.ccu_data** %4, align 8
  store %struct.bcm_clk_div* %1, %struct.bcm_clk_div** %5, align 8
  %9 = load %struct.bcm_clk_div*, %struct.bcm_clk_div** %5, align 8
  %10 = call i64 @divider_is_fixed(%struct.bcm_clk_div* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.bcm_clk_div*, %struct.bcm_clk_div** %5, align 8
  %14 = getelementptr inbounds %struct.bcm_clk_div, %struct.bcm_clk_div* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %3, align 4
  br label %45

17:                                               ; preds = %2
  %18 = load %struct.ccu_data*, %struct.ccu_data** %4, align 8
  %19 = call i64 @ccu_lock(%struct.ccu_data* %18)
  store i64 %19, i64* %6, align 8
  %20 = load %struct.ccu_data*, %struct.ccu_data** %4, align 8
  %21 = load %struct.bcm_clk_div*, %struct.bcm_clk_div** %5, align 8
  %22 = getelementptr inbounds %struct.bcm_clk_div, %struct.bcm_clk_div* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @__ccu_read(%struct.ccu_data* %20, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.ccu_data*, %struct.ccu_data** %4, align 8
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @ccu_unlock(%struct.ccu_data* %27, i64 %28)
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.bcm_clk_div*, %struct.bcm_clk_div** %5, align 8
  %32 = getelementptr inbounds %struct.bcm_clk_div, %struct.bcm_clk_div* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.bcm_clk_div*, %struct.bcm_clk_div** %5, align 8
  %37 = getelementptr inbounds %struct.bcm_clk_div, %struct.bcm_clk_div* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @bitfield_extract(i32 %30, i32 %35, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load %struct.bcm_clk_div*, %struct.bcm_clk_div** %5, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @scaled_div_value(%struct.bcm_clk_div* %42, i32 %43)
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %17, %12
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i64 @divider_is_fixed(%struct.bcm_clk_div*) #1

declare dso_local i64 @ccu_lock(%struct.ccu_data*) #1

declare dso_local i32 @__ccu_read(%struct.ccu_data*, i32) #1

declare dso_local i32 @ccu_unlock(%struct.ccu_data*, i64) #1

declare dso_local i32 @bitfield_extract(i32, i32, i32) #1

declare dso_local i32 @scaled_div_value(%struct.bcm_clk_div*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
