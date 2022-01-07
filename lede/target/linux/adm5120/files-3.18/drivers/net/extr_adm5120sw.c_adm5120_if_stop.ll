; ModuleID = '/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/drivers/net/extr_adm5120sw.c_adm5120_if_stop.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/drivers/net/extr_adm5120sw.c_adm5120_if_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@SWITCH_REG_PORT_CONF0 = common dso_local global i32 0, align 4
@SWITCH_PORTS_NOCPU = common dso_local global i32 0, align 4
@SWITCH_NUM_PORTS = common dso_local global i32 0, align 4
@adm5120_devs = common dso_local global %struct.net_device** null, align 8
@adm5120_eth_vlans = common dso_local global i32* null, align 8
@sw_used = common dso_local global i32 0, align 4
@SWITCH_INTS_USED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @adm5120_if_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adm5120_if_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call i32 @netif_stop_queue(%struct.net_device* %5)
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call i32 @adm5120_if_napi_disable(%struct.net_device* %7)
  %9 = load i32, i32* @SWITCH_REG_PORT_CONF0, align 4
  %10 = call i32 @sw_read_reg(i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @SWITCH_PORTS_NOCPU, align 4
  %12 = load i32, i32* %3, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %44, %1
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @SWITCH_NUM_PORTS, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %47

18:                                               ; preds = %14
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = load %struct.net_device**, %struct.net_device*** @adm5120_devs, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.net_device*, %struct.net_device** %20, i64 %22
  %24 = load %struct.net_device*, %struct.net_device** %23, align 8
  %25 = icmp ne %struct.net_device* %19, %24
  br i1 %25, label %26, label %43

26:                                               ; preds = %18
  %27 = load %struct.net_device**, %struct.net_device*** @adm5120_devs, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.net_device*, %struct.net_device** %27, i64 %29
  %31 = load %struct.net_device*, %struct.net_device** %30, align 8
  %32 = call i64 @netif_running(%struct.net_device* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %26
  %35 = load i32*, i32** @adm5120_eth_vlans, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %3, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %34, %26, %18
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %14

47:                                               ; preds = %14
  %48 = load i32, i32* @SWITCH_REG_PORT_CONF0, align 4
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @sw_write_reg(i32 %48, i32 %49)
  %51 = load i32, i32* @sw_used, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* @sw_used, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %47
  %55 = load i32, i32* @SWITCH_INTS_USED, align 4
  %56 = call i32 @sw_int_mask(i32 %55)
  br label %57

57:                                               ; preds = %54, %47
  %58 = load %struct.net_device*, %struct.net_device** %2, align 8
  %59 = getelementptr inbounds %struct.net_device, %struct.net_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.net_device*, %struct.net_device** %2, align 8
  %62 = call i32 @free_irq(i32 %60, %struct.net_device* %61)
  ret i32 0
}

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @adm5120_if_napi_disable(%struct.net_device*) #1

declare dso_local i32 @sw_read_reg(i32) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @sw_write_reg(i32, i32) #1

declare dso_local i32 @sw_int_mask(i32) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
