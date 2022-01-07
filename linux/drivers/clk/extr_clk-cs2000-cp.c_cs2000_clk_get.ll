; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-cs2000-cp.c_cs2000_clk_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-cs2000-cp.c_cs2000_clk_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs2000_priv = type { %struct.clk*, %struct.clk* }
%struct.clk = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"clk_in\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"ref_clk\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cs2000_priv*)* @cs2000_clk_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs2000_clk_get(%struct.cs2000_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cs2000_priv*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.clk*, align 8
  %6 = alloca %struct.clk*, align 8
  store %struct.cs2000_priv* %0, %struct.cs2000_priv** %3, align 8
  %7 = load %struct.cs2000_priv*, %struct.cs2000_priv** %3, align 8
  %8 = call %struct.device* @priv_to_dev(%struct.cs2000_priv* %7)
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.clk* @devm_clk_get(%struct.device* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.clk* %10, %struct.clk** %5, align 8
  %11 = load %struct.clk*, %struct.clk** %5, align 8
  %12 = call i64 @IS_ERR(%struct.clk* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @EPROBE_DEFER, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %33

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = call %struct.clk* @devm_clk_get(%struct.device* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store %struct.clk* %19, %struct.clk** %6, align 8
  %20 = load %struct.clk*, %struct.clk** %6, align 8
  %21 = call i64 @IS_ERR(%struct.clk* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* @EPROBE_DEFER, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %33

26:                                               ; preds = %17
  %27 = load %struct.clk*, %struct.clk** %5, align 8
  %28 = load %struct.cs2000_priv*, %struct.cs2000_priv** %3, align 8
  %29 = getelementptr inbounds %struct.cs2000_priv, %struct.cs2000_priv* %28, i32 0, i32 1
  store %struct.clk* %27, %struct.clk** %29, align 8
  %30 = load %struct.clk*, %struct.clk** %6, align 8
  %31 = load %struct.cs2000_priv*, %struct.cs2000_priv** %3, align 8
  %32 = getelementptr inbounds %struct.cs2000_priv, %struct.cs2000_priv* %31, i32 0, i32 0
  store %struct.clk* %30, %struct.clk** %32, align 8
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %26, %23, %14
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.device* @priv_to_dev(%struct.cs2000_priv*) #1

declare dso_local %struct.clk* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
