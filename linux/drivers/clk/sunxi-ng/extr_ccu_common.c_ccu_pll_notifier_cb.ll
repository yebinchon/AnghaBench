; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_common.c_ccu_pll_notifier_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_common.c_ccu_pll_notifier_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.ccu_pll_nb = type { i32, i32, i32 }

@POST_RATE_CHANGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @ccu_pll_notifier_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccu_pll_notifier_cb(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.notifier_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ccu_pll_nb*, align 8
  %8 = alloca i32, align 4
  store %struct.notifier_block* %0, %struct.notifier_block** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.notifier_block*, %struct.notifier_block** %4, align 8
  %10 = call %struct.ccu_pll_nb* @to_ccu_pll_nb(%struct.notifier_block* %9)
  store %struct.ccu_pll_nb* %10, %struct.ccu_pll_nb** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @POST_RATE_CHANGE, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %41

15:                                               ; preds = %3
  %16 = load %struct.ccu_pll_nb*, %struct.ccu_pll_nb** %7, align 8
  %17 = getelementptr inbounds %struct.ccu_pll_nb, %struct.ccu_pll_nb* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ccu_pll_nb*, %struct.ccu_pll_nb** %7, align 8
  %20 = getelementptr inbounds %struct.ccu_pll_nb, %struct.ccu_pll_nb* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ccu_gate_helper_disable(i32 %18, i32 %21)
  %23 = load %struct.ccu_pll_nb*, %struct.ccu_pll_nb** %7, align 8
  %24 = getelementptr inbounds %struct.ccu_pll_nb, %struct.ccu_pll_nb* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ccu_pll_nb*, %struct.ccu_pll_nb** %7, align 8
  %27 = getelementptr inbounds %struct.ccu_pll_nb, %struct.ccu_pll_nb* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ccu_gate_helper_enable(i32 %25, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %15
  br label %41

33:                                               ; preds = %15
  %34 = load %struct.ccu_pll_nb*, %struct.ccu_pll_nb** %7, align 8
  %35 = getelementptr inbounds %struct.ccu_pll_nb, %struct.ccu_pll_nb* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ccu_pll_nb*, %struct.ccu_pll_nb** %7, align 8
  %38 = getelementptr inbounds %struct.ccu_pll_nb, %struct.ccu_pll_nb* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ccu_helper_wait_for_lock(i32 %36, i32 %39)
  br label %41

41:                                               ; preds = %33, %32, %14
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @notifier_from_errno(i32 %42)
  ret i32 %43
}

declare dso_local %struct.ccu_pll_nb* @to_ccu_pll_nb(%struct.notifier_block*) #1

declare dso_local i32 @ccu_gate_helper_disable(i32, i32) #1

declare dso_local i32 @ccu_gate_helper_enable(i32, i32) #1

declare dso_local i32 @ccu_helper_wait_for_lock(i32, i32) #1

declare dso_local i32 @notifier_from_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
