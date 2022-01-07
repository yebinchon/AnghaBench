; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-cs2000-cp.c_cs2000_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-cs2000-cp.c_cs2000_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.cs2000_priv = type { %struct.i2c_client* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @cs2000_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs2000_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.cs2000_priv*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %7, align 8
  %11 = load %struct.device*, %struct.device** %7, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.cs2000_priv* @devm_kzalloc(%struct.device* %11, i32 8, i32 %12)
  store %struct.cs2000_priv* %13, %struct.cs2000_priv** %6, align 8
  %14 = load %struct.cs2000_priv*, %struct.cs2000_priv** %6, align 8
  %15 = icmp ne %struct.cs2000_priv* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %50

19:                                               ; preds = %2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = load %struct.cs2000_priv*, %struct.cs2000_priv** %6, align 8
  %22 = getelementptr inbounds %struct.cs2000_priv, %struct.cs2000_priv* %21, i32 0, i32 0
  store %struct.i2c_client* %20, %struct.i2c_client** %22, align 8
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = load %struct.cs2000_priv*, %struct.cs2000_priv** %6, align 8
  %25 = call i32 @i2c_set_clientdata(%struct.i2c_client* %23, %struct.cs2000_priv* %24)
  %26 = load %struct.cs2000_priv*, %struct.cs2000_priv** %6, align 8
  %27 = call i32 @cs2000_clk_get(%struct.cs2000_priv* %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %19
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %3, align 4
  br label %50

32:                                               ; preds = %19
  %33 = load %struct.cs2000_priv*, %struct.cs2000_priv** %6, align 8
  %34 = call i32 @cs2000_clk_register(%struct.cs2000_priv* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %3, align 4
  br label %50

39:                                               ; preds = %32
  %40 = load %struct.cs2000_priv*, %struct.cs2000_priv** %6, align 8
  %41 = call i32 @cs2000_version_print(%struct.cs2000_priv* %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %46

45:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %50

46:                                               ; preds = %44
  %47 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %48 = call i32 @cs2000_remove(%struct.i2c_client* %47)
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %46, %45, %37, %30, %16
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.cs2000_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.cs2000_priv*) #1

declare dso_local i32 @cs2000_clk_get(%struct.cs2000_priv*) #1

declare dso_local i32 @cs2000_clk_register(%struct.cs2000_priv*) #1

declare dso_local i32 @cs2000_version_print(%struct.cs2000_priv*) #1

declare dso_local i32 @cs2000_remove(%struct.i2c_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
