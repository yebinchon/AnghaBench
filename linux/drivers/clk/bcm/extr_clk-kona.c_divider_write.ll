; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-kona.c_divider_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-kona.c_divider_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccu_data = type { i32 }
%struct.bcm_clk_gate = type { i32 }
%struct.bcm_clk_div = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.bcm_clk_trig = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccu_data*, %struct.bcm_clk_gate*, %struct.bcm_clk_div*, %struct.bcm_clk_trig*, i64)* @divider_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @divider_write(%struct.ccu_data* %0, %struct.bcm_clk_gate* %1, %struct.bcm_clk_div* %2, %struct.bcm_clk_trig* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ccu_data*, align 8
  %8 = alloca %struct.bcm_clk_gate*, align 8
  %9 = alloca %struct.bcm_clk_div*, align 8
  %10 = alloca %struct.bcm_clk_trig*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.ccu_data* %0, %struct.ccu_data** %7, align 8
  store %struct.bcm_clk_gate* %1, %struct.bcm_clk_gate** %8, align 8
  store %struct.bcm_clk_div* %2, %struct.bcm_clk_div** %9, align 8
  store %struct.bcm_clk_trig* %3, %struct.bcm_clk_trig** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.bcm_clk_div*, %struct.bcm_clk_div** %9, align 8
  %16 = call i32 @divider_is_fixed(%struct.bcm_clk_div* %15)
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load %struct.bcm_clk_div*, %struct.bcm_clk_div** %9, align 8
  %19 = getelementptr inbounds %struct.bcm_clk_div, %struct.bcm_clk_div* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %13, align 8
  %23 = load i64, i64* %13, align 8
  %24 = load i64, i64* %11, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %57

27:                                               ; preds = %5
  %28 = load i64, i64* %11, align 8
  %29 = load %struct.bcm_clk_div*, %struct.bcm_clk_div** %9, align 8
  %30 = getelementptr inbounds %struct.bcm_clk_div, %struct.bcm_clk_div* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i64 %28, i64* %32, align 8
  %33 = load %struct.ccu_data*, %struct.ccu_data** %7, align 8
  %34 = call i64 @ccu_lock(%struct.ccu_data* %33)
  store i64 %34, i64* %12, align 8
  %35 = load %struct.ccu_data*, %struct.ccu_data** %7, align 8
  %36 = call i32 @__ccu_write_enable(%struct.ccu_data* %35)
  %37 = load %struct.ccu_data*, %struct.ccu_data** %7, align 8
  %38 = load %struct.bcm_clk_gate*, %struct.bcm_clk_gate** %8, align 8
  %39 = load %struct.bcm_clk_div*, %struct.bcm_clk_div** %9, align 8
  %40 = load %struct.bcm_clk_trig*, %struct.bcm_clk_trig** %10, align 8
  %41 = call i32 @__div_commit(%struct.ccu_data* %37, %struct.bcm_clk_gate* %38, %struct.bcm_clk_div* %39, %struct.bcm_clk_trig* %40)
  store i32 %41, i32* %14, align 4
  %42 = load %struct.ccu_data*, %struct.ccu_data** %7, align 8
  %43 = call i32 @__ccu_write_disable(%struct.ccu_data* %42)
  %44 = load %struct.ccu_data*, %struct.ccu_data** %7, align 8
  %45 = load i64, i64* %12, align 8
  %46 = call i32 @ccu_unlock(%struct.ccu_data* %44, i64 %45)
  %47 = load i32, i32* %14, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %27
  %50 = load i64, i64* %13, align 8
  %51 = load %struct.bcm_clk_div*, %struct.bcm_clk_div** %9, align 8
  %52 = getelementptr inbounds %struct.bcm_clk_div, %struct.bcm_clk_div* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i64 %50, i64* %54, align 8
  br label %55

55:                                               ; preds = %49, %27
  %56 = load i32, i32* %14, align 4
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %55, %26
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @divider_is_fixed(%struct.bcm_clk_div*) #1

declare dso_local i64 @ccu_lock(%struct.ccu_data*) #1

declare dso_local i32 @__ccu_write_enable(%struct.ccu_data*) #1

declare dso_local i32 @__div_commit(%struct.ccu_data*, %struct.bcm_clk_gate*, %struct.bcm_clk_div*, %struct.bcm_clk_trig*) #1

declare dso_local i32 @__ccu_write_disable(%struct.ccu_data*) #1

declare dso_local i32 @ccu_unlock(%struct.ccu_data*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
