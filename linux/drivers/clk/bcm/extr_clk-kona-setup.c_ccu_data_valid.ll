; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-kona-setup.c_ccu_data_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-kona-setup.c_ccu_data_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccu_data = type { i32, %struct.ccu_policy }
%struct.ccu_policy = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccu_data*)* @ccu_data_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccu_data_valid(%struct.ccu_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ccu_data*, align 8
  %4 = alloca %struct.ccu_policy*, align 8
  store %struct.ccu_data* %0, %struct.ccu_data** %3, align 8
  %5 = load %struct.ccu_data*, %struct.ccu_data** %3, align 8
  %6 = call i32 @ccu_data_offsets_valid(%struct.ccu_data* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %25

9:                                                ; preds = %1
  %10 = load %struct.ccu_data*, %struct.ccu_data** %3, align 8
  %11 = getelementptr inbounds %struct.ccu_data, %struct.ccu_data* %10, i32 0, i32 1
  store %struct.ccu_policy* %11, %struct.ccu_policy** %4, align 8
  %12 = load %struct.ccu_policy*, %struct.ccu_policy** %4, align 8
  %13 = call i64 @ccu_policy_exists(%struct.ccu_policy* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %9
  %16 = load %struct.ccu_policy*, %struct.ccu_policy** %4, align 8
  %17 = load %struct.ccu_data*, %struct.ccu_data** %3, align 8
  %18 = getelementptr inbounds %struct.ccu_data, %struct.ccu_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ccu_policy_valid(%struct.ccu_policy* %16, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %25

23:                                               ; preds = %15
  br label %24

24:                                               ; preds = %23, %9
  store i32 1, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %22, %8
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @ccu_data_offsets_valid(%struct.ccu_data*) #1

declare dso_local i64 @ccu_policy_exists(%struct.ccu_policy*) #1

declare dso_local i32 @ccu_policy_valid(%struct.ccu_policy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
