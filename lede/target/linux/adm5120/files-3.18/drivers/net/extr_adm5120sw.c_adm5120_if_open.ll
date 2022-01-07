; ModuleID = '/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/drivers/net/extr_adm5120sw.c_adm5120_if_open.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/drivers/net/extr_adm5120sw.c_adm5120_if_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }

@adm5120_switch_irq = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"unable to get irq for %s\0A\00", align 1
@sw_used = common dso_local global i32 0, align 4
@SWITCH_INTS_USED = common dso_local global i32 0, align 4
@SWITCH_REG_PORT_CONF0 = common dso_local global i32 0, align 4
@SWITCH_NUM_PORTS = common dso_local global i32 0, align 4
@adm5120_devs = common dso_local global %struct.net_device** null, align 8
@adm5120_eth_vlans = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @adm5120_if_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adm5120_if_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call i32 @adm5120_if_napi_enable(%struct.net_device* %7)
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @adm5120_switch_irq, align 4
  %13 = load i32, i32* @IRQF_SHARED, align 4
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = call i32 @request_irq(i32 %11, i32 %12, i32 %13, i32 %16, %struct.net_device* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.net_device*, %struct.net_device** %3, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @SW_ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %67

26:                                               ; preds = %1
  %27 = load i32, i32* @sw_used, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* @sw_used, align 4
  %29 = icmp ne i32 %27, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* @SWITCH_INTS_USED, align 4
  %32 = call i32 @sw_int_unmask(i32 %31)
  br label %33

33:                                               ; preds = %30, %26
  %34 = load i32, i32* @SWITCH_REG_PORT_CONF0, align 4
  %35 = call i32 @sw_read_reg(i32 %34)
  store i32 %35, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %58, %33
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @SWITCH_NUM_PORTS, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %61

40:                                               ; preds = %36
  %41 = load %struct.net_device*, %struct.net_device** %3, align 8
  %42 = load %struct.net_device**, %struct.net_device*** @adm5120_devs, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.net_device*, %struct.net_device** %42, i64 %44
  %46 = load %struct.net_device*, %struct.net_device** %45, align 8
  %47 = icmp eq %struct.net_device* %41, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %40
  %49 = load i32*, i32** @adm5120_eth_vlans, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %4, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %48, %40
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %36

61:                                               ; preds = %36
  %62 = load i32, i32* @SWITCH_REG_PORT_CONF0, align 4
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @sw_write_reg(i32 %62, i32 %63)
  %65 = load %struct.net_device*, %struct.net_device** %3, align 8
  %66 = call i32 @netif_start_queue(%struct.net_device* %65)
  store i32 0, i32* %2, align 4
  br label %71

67:                                               ; preds = %21
  %68 = load %struct.net_device*, %struct.net_device** %3, align 8
  %69 = call i32 @adm5120_if_napi_disable(%struct.net_device* %68)
  %70 = load i32, i32* %5, align 4
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %67, %61
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @adm5120_if_napi_enable(%struct.net_device*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @SW_ERR(i8*, i32) #1

declare dso_local i32 @sw_int_unmask(i32) #1

declare dso_local i32 @sw_read_reg(i32) #1

declare dso_local i32 @sw_write_reg(i32, i32) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @adm5120_if_napi_disable(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
