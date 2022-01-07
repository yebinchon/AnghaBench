; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-kona.c_selector_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-kona.c_selector_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccu_data = type { i32 }
%struct.bcm_clk_gate = type { i32 }
%struct.bcm_clk_sel = type { i64 }
%struct.bcm_clk_trig = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccu_data*, %struct.bcm_clk_gate*, %struct.bcm_clk_sel*, %struct.bcm_clk_trig*, i64)* @selector_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selector_write(%struct.ccu_data* %0, %struct.bcm_clk_gate* %1, %struct.bcm_clk_sel* %2, %struct.bcm_clk_trig* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ccu_data*, align 8
  %8 = alloca %struct.bcm_clk_gate*, align 8
  %9 = alloca %struct.bcm_clk_sel*, align 8
  %10 = alloca %struct.bcm_clk_trig*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.ccu_data* %0, %struct.ccu_data** %7, align 8
  store %struct.bcm_clk_gate* %1, %struct.bcm_clk_gate** %8, align 8
  store %struct.bcm_clk_sel* %2, %struct.bcm_clk_sel** %9, align 8
  store %struct.bcm_clk_trig* %3, %struct.bcm_clk_trig** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.bcm_clk_sel*, %struct.bcm_clk_sel** %9, align 8
  %16 = getelementptr inbounds %struct.bcm_clk_sel, %struct.bcm_clk_sel* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %13, align 8
  %18 = load i64, i64* %13, align 8
  %19 = load i64, i64* %11, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %48

22:                                               ; preds = %5
  %23 = load i64, i64* %11, align 8
  %24 = load %struct.bcm_clk_sel*, %struct.bcm_clk_sel** %9, align 8
  %25 = getelementptr inbounds %struct.bcm_clk_sel, %struct.bcm_clk_sel* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.ccu_data*, %struct.ccu_data** %7, align 8
  %27 = call i64 @ccu_lock(%struct.ccu_data* %26)
  store i64 %27, i64* %12, align 8
  %28 = load %struct.ccu_data*, %struct.ccu_data** %7, align 8
  %29 = call i32 @__ccu_write_enable(%struct.ccu_data* %28)
  %30 = load %struct.ccu_data*, %struct.ccu_data** %7, align 8
  %31 = load %struct.bcm_clk_gate*, %struct.bcm_clk_gate** %8, align 8
  %32 = load %struct.bcm_clk_sel*, %struct.bcm_clk_sel** %9, align 8
  %33 = load %struct.bcm_clk_trig*, %struct.bcm_clk_trig** %10, align 8
  %34 = call i32 @__sel_commit(%struct.ccu_data* %30, %struct.bcm_clk_gate* %31, %struct.bcm_clk_sel* %32, %struct.bcm_clk_trig* %33)
  store i32 %34, i32* %14, align 4
  %35 = load %struct.ccu_data*, %struct.ccu_data** %7, align 8
  %36 = call i32 @__ccu_write_disable(%struct.ccu_data* %35)
  %37 = load %struct.ccu_data*, %struct.ccu_data** %7, align 8
  %38 = load i64, i64* %12, align 8
  %39 = call i32 @ccu_unlock(%struct.ccu_data* %37, i64 %38)
  %40 = load i32, i32* %14, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %22
  %43 = load i64, i64* %13, align 8
  %44 = load %struct.bcm_clk_sel*, %struct.bcm_clk_sel** %9, align 8
  %45 = getelementptr inbounds %struct.bcm_clk_sel, %struct.bcm_clk_sel* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  br label %46

46:                                               ; preds = %42, %22
  %47 = load i32, i32* %14, align 4
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %46, %21
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local i64 @ccu_lock(%struct.ccu_data*) #1

declare dso_local i32 @__ccu_write_enable(%struct.ccu_data*) #1

declare dso_local i32 @__sel_commit(%struct.ccu_data*, %struct.bcm_clk_gate*, %struct.bcm_clk_sel*, %struct.bcm_clk_trig*) #1

declare dso_local i32 @__ccu_write_disable(%struct.ccu_data*) #1

declare dso_local i32 @ccu_unlock(%struct.ccu_data*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
