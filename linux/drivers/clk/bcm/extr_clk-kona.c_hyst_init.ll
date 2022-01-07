; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-kona.c_hyst_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-kona.c_hyst_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccu_data = type { i32 }
%struct.bcm_clk_hyst = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccu_data*, %struct.bcm_clk_hyst*)* @hyst_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hyst_init(%struct.ccu_data* %0, %struct.bcm_clk_hyst* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ccu_data*, align 8
  %5 = alloca %struct.bcm_clk_hyst*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ccu_data* %0, %struct.ccu_data** %4, align 8
  store %struct.bcm_clk_hyst* %1, %struct.bcm_clk_hyst** %5, align 8
  %9 = load %struct.bcm_clk_hyst*, %struct.bcm_clk_hyst** %5, align 8
  %10 = call i32 @hyst_exists(%struct.bcm_clk_hyst* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %37

13:                                               ; preds = %2
  %14 = load %struct.bcm_clk_hyst*, %struct.bcm_clk_hyst** %5, align 8
  %15 = getelementptr inbounds %struct.bcm_clk_hyst, %struct.bcm_clk_hyst* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  %17 = load %struct.bcm_clk_hyst*, %struct.bcm_clk_hyst** %5, align 8
  %18 = getelementptr inbounds %struct.bcm_clk_hyst, %struct.bcm_clk_hyst* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 1, %19
  store i32 %20, i32* %8, align 4
  %21 = load %struct.bcm_clk_hyst*, %struct.bcm_clk_hyst** %5, align 8
  %22 = getelementptr inbounds %struct.bcm_clk_hyst, %struct.bcm_clk_hyst* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 1, %23
  %25 = load i32, i32* %8, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %8, align 4
  %27 = load %struct.ccu_data*, %struct.ccu_data** %4, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @__ccu_read(%struct.ccu_data* %27, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %7, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %7, align 4
  %33 = load %struct.ccu_data*, %struct.ccu_data** %4, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @__ccu_write(%struct.ccu_data* %33, i32 %34, i32 %35)
  store i32 1, i32* %3, align 4
  br label %37

37:                                               ; preds = %13, %12
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @hyst_exists(%struct.bcm_clk_hyst*) #1

declare dso_local i32 @__ccu_read(%struct.ccu_data*, i32) #1

declare dso_local i32 @__ccu_write(%struct.ccu_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
