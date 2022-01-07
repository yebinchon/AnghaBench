; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libahci.c_ahci_sw_activity_blink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libahci.c_ahci_sw_activity_blink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_em_priv = type { i64, i64, i64, i64, i32, %struct.ata_link* }
%struct.ata_link = type { i32, %struct.ata_port* }
%struct.ata_port = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.ata_port*, i64, i32)* }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@EM_MSG_LED_VALUE = common dso_local global i64 0, align 8
@EM_MSG_LED_VALUE_ON = common dso_local global i64 0, align 8
@EM_MSG_LED_VALUE_ACTIVITY = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@BLINK_OFF = common dso_local global i64 0, align 8
@emp = common dso_local global %struct.ahci_em_priv* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @ahci_sw_activity_blink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahci_sw_activity_blink(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.ahci_em_priv*, align 8
  %4 = alloca %struct.ata_link*, align 8
  %5 = alloca %struct.ata_port*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %9 = load %struct.ahci_em_priv*, %struct.ahci_em_priv** %3, align 8
  %10 = ptrtoint %struct.ahci_em_priv* %9 to i32
  %11 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %12 = load i32, i32* @timer, align 4
  %13 = call %struct.ahci_em_priv* @from_timer(i32 %10, %struct.timer_list* %11, i32 %12)
  store %struct.ahci_em_priv* %13, %struct.ahci_em_priv** %3, align 8
  %14 = load %struct.ahci_em_priv*, %struct.ahci_em_priv** %3, align 8
  %15 = getelementptr inbounds %struct.ahci_em_priv, %struct.ahci_em_priv* %14, i32 0, i32 5
  %16 = load %struct.ata_link*, %struct.ata_link** %15, align 8
  store %struct.ata_link* %16, %struct.ata_link** %4, align 8
  %17 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %18 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %17, i32 0, i32 1
  %19 = load %struct.ata_port*, %struct.ata_port** %18, align 8
  store %struct.ata_port* %19, %struct.ata_port** %5, align 8
  %20 = load %struct.ahci_em_priv*, %struct.ahci_em_priv** %3, align 8
  %21 = getelementptr inbounds %struct.ahci_em_priv, %struct.ahci_em_priv* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* @EM_MSG_LED_VALUE, align 8
  %24 = load i64, i64* %6, align 8
  %25 = and i64 %24, %23
  store i64 %25, i64* %6, align 8
  %26 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %27 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %30 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = shl i32 %31, 8
  %33 = or i32 %28, %32
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* %6, align 8
  %36 = or i64 %35, %34
  store i64 %36, i64* %6, align 8
  %37 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %38 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @spin_lock_irqsave(i32 %39, i64 %40)
  %42 = load %struct.ahci_em_priv*, %struct.ahci_em_priv** %3, align 8
  %43 = getelementptr inbounds %struct.ahci_em_priv, %struct.ahci_em_priv* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.ahci_em_priv*, %struct.ahci_em_priv** %3, align 8
  %46 = getelementptr inbounds %struct.ahci_em_priv, %struct.ahci_em_priv* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %44, %47
  br i1 %48, label %49, label %77

49:                                               ; preds = %1
  %50 = load %struct.ahci_em_priv*, %struct.ahci_em_priv** %3, align 8
  %51 = getelementptr inbounds %struct.ahci_em_priv, %struct.ahci_em_priv* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.ahci_em_priv*, %struct.ahci_em_priv** %3, align 8
  %54 = getelementptr inbounds %struct.ahci_em_priv, %struct.ahci_em_priv* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  %55 = load i64, i64* %6, align 8
  %56 = load i64, i64* @EM_MSG_LED_VALUE_ON, align 8
  %57 = and i64 %55, %56
  store i64 %57, i64* %7, align 8
  %58 = load i64, i64* %7, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %49
  store i64 0, i64* %7, align 8
  br label %62

61:                                               ; preds = %49
  store i64 1, i64* %7, align 8
  br label %62

62:                                               ; preds = %61, %60
  %63 = load i64, i64* @EM_MSG_LED_VALUE_ACTIVITY, align 8
  %64 = xor i64 %63, -1
  %65 = load i64, i64* %6, align 8
  %66 = and i64 %65, %64
  store i64 %66, i64* %6, align 8
  %67 = load i64, i64* %7, align 8
  %68 = shl i64 %67, 16
  %69 = load i64, i64* %6, align 8
  %70 = or i64 %69, %68
  store i64 %70, i64* %6, align 8
  %71 = load %struct.ahci_em_priv*, %struct.ahci_em_priv** %3, align 8
  %72 = getelementptr inbounds %struct.ahci_em_priv, %struct.ahci_em_priv* %71, i32 0, i32 4
  %73 = load i64, i64* @jiffies, align 8
  %74 = call i64 @msecs_to_jiffies(i32 100)
  %75 = add nsw i64 %73, %74
  %76 = call i32 @mod_timer(i32* %72, i64 %75)
  br label %91

77:                                               ; preds = %1
  %78 = load i64, i64* @EM_MSG_LED_VALUE_ACTIVITY, align 8
  %79 = xor i64 %78, -1
  %80 = load i64, i64* %6, align 8
  %81 = and i64 %80, %79
  store i64 %81, i64* %6, align 8
  %82 = load %struct.ahci_em_priv*, %struct.ahci_em_priv** %3, align 8
  %83 = getelementptr inbounds %struct.ahci_em_priv, %struct.ahci_em_priv* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @BLINK_OFF, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %77
  %88 = load i64, i64* %6, align 8
  %89 = or i64 %88, 65536
  store i64 %89, i64* %6, align 8
  br label %90

90:                                               ; preds = %87, %77
  br label %91

91:                                               ; preds = %90, %62
  %92 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %93 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load i64, i64* %8, align 8
  %96 = call i32 @spin_unlock_irqrestore(i32 %94, i64 %95)
  %97 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %98 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %97, i32 0, i32 1
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32 (%struct.ata_port*, i64, i32)*, i32 (%struct.ata_port*, i64, i32)** %100, align 8
  %102 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %103 = load i64, i64* %6, align 8
  %104 = call i32 %101(%struct.ata_port* %102, i64 %103, i32 4)
  ret void
}

declare dso_local %struct.ahci_em_priv* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
