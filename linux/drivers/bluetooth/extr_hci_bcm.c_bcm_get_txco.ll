; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_bcm.c_bcm_get_txco.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_bcm.c_bcm_get_txco.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"txco\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"extclk\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.clk* (%struct.device*)* @bcm_get_txco to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.clk* @bcm_get_txco(%struct.device* %0) #0 {
  %2 = alloca %struct.clk*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.clk*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %5 = load %struct.device*, %struct.device** %3, align 8
  %6 = call %struct.clk* @devm_clk_get(%struct.device* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.clk* %6, %struct.clk** %4, align 8
  %7 = load %struct.clk*, %struct.clk** %4, align 8
  %8 = call i32 @IS_ERR(%struct.clk* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.clk*, %struct.clk** %4, align 8
  %12 = call i32 @PTR_ERR(%struct.clk* %11)
  %13 = load i32, i32* @EPROBE_DEFER, align 4
  %14 = sub nsw i32 0, %13
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %10, %1
  %17 = load %struct.clk*, %struct.clk** %4, align 8
  store %struct.clk* %17, %struct.clk** %2, align 8
  br label %35

18:                                               ; preds = %10
  %19 = load %struct.device*, %struct.device** %3, align 8
  %20 = call %struct.clk* @devm_clk_get(%struct.device* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store %struct.clk* %20, %struct.clk** %4, align 8
  %21 = load %struct.clk*, %struct.clk** %4, align 8
  %22 = call i32 @IS_ERR(%struct.clk* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load %struct.clk*, %struct.clk** %4, align 8
  %26 = call i32 @PTR_ERR(%struct.clk* %25)
  %27 = load i32, i32* @EPROBE_DEFER, align 4
  %28 = sub nsw i32 0, %27
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24, %18
  %31 = load %struct.clk*, %struct.clk** %4, align 8
  store %struct.clk* %31, %struct.clk** %2, align 8
  br label %35

32:                                               ; preds = %24
  %33 = load %struct.device*, %struct.device** %3, align 8
  %34 = call %struct.clk* @devm_clk_get(%struct.device* %33, i8* null)
  store %struct.clk* %34, %struct.clk** %2, align 8
  br label %35

35:                                               ; preds = %32, %30, %16
  %36 = load %struct.clk*, %struct.clk** %2, align 8
  ret %struct.clk* %36
}

declare dso_local %struct.clk* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
