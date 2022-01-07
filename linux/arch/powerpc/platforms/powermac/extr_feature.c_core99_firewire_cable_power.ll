; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powermac/extr_feature.c_core99_firewire_cable_power.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powermac/extr_feature.c_core99_firewire_cable_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.macio_chip = type { i64, i32 }
%struct.device_node = type { i32 }

@pmac_mb = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@PMAC_MB_HAS_FW_POWER = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i64 0, align 8
@macio_chips = common dso_local global %struct.macio_chip* null, align 8
@macio_keylargo = common dso_local global i64 0, align 8
@macio_pangea = common dso_local global i64 0, align 8
@macio_intrepid = common dso_local global i64 0, align 8
@MACIO_FLAG_FW_SUPPORTED = common dso_local global i32 0, align 4
@KL_GPIO_FW_CABLE_POWER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device_node*, i64, i64)* @core99_firewire_cable_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @core99_firewire_cable_power(%struct.device_node* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.macio_chip*, align 8
  store %struct.device_node* %0, %struct.device_node** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pmac_mb, i32 0, i32 0), align 4
  %11 = load i32, i32* @PMAC_MB_HAS_FW_POWER, align 4
  %12 = and i32 %10, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i64, i64* @ENODEV, align 8
  %16 = sub nsw i64 0, %15
  store i64 %16, i64* %4, align 8
  br label %71

17:                                               ; preds = %3
  %18 = load %struct.macio_chip*, %struct.macio_chip** @macio_chips, align 8
  %19 = getelementptr inbounds %struct.macio_chip, %struct.macio_chip* %18, i64 0
  store %struct.macio_chip* %19, %struct.macio_chip** %9, align 8
  %20 = load %struct.macio_chip*, %struct.macio_chip** %9, align 8
  %21 = getelementptr inbounds %struct.macio_chip, %struct.macio_chip* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @macio_keylargo, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %17
  %26 = load %struct.macio_chip*, %struct.macio_chip** %9, align 8
  %27 = getelementptr inbounds %struct.macio_chip, %struct.macio_chip* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @macio_pangea, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %25
  %32 = load %struct.macio_chip*, %struct.macio_chip** %9, align 8
  %33 = getelementptr inbounds %struct.macio_chip, %struct.macio_chip* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @macio_intrepid, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i64, i64* @ENODEV, align 8
  %39 = sub nsw i64 0, %38
  store i64 %39, i64* %4, align 8
  br label %71

40:                                               ; preds = %31, %25, %17
  %41 = load %struct.macio_chip*, %struct.macio_chip** %9, align 8
  %42 = getelementptr inbounds %struct.macio_chip, %struct.macio_chip* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @MACIO_FLAG_FW_SUPPORTED, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %40
  %48 = load i64, i64* @ENODEV, align 8
  %49 = sub nsw i64 0, %48
  store i64 %49, i64* %4, align 8
  br label %71

50:                                               ; preds = %40
  %51 = load i64, i64* %8, align 8
  %52 = call i32 @LOCK(i64 %51)
  %53 = load i64, i64* %7, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load i32, i32* @KL_GPIO_FW_CABLE_POWER, align 4
  %57 = call i32 @MACIO_OUT8(i32 %56, i32 0)
  %58 = load i32, i32* @KL_GPIO_FW_CABLE_POWER, align 4
  %59 = call i32 @MACIO_IN8(i32 %58)
  %60 = call i32 @udelay(i32 10)
  br label %67

61:                                               ; preds = %50
  %62 = load i32, i32* @KL_GPIO_FW_CABLE_POWER, align 4
  %63 = call i32 @MACIO_OUT8(i32 %62, i32 4)
  %64 = load i32, i32* @KL_GPIO_FW_CABLE_POWER, align 4
  %65 = call i32 @MACIO_IN8(i32 %64)
  %66 = call i32 @udelay(i32 10)
  br label %67

67:                                               ; preds = %61, %55
  %68 = load i64, i64* %8, align 8
  %69 = call i32 @UNLOCK(i64 %68)
  %70 = call i32 @mdelay(i32 1)
  store i64 0, i64* %4, align 8
  br label %71

71:                                               ; preds = %67, %47, %37, %14
  %72 = load i64, i64* %4, align 8
  ret i64 %72
}

declare dso_local i32 @LOCK(i64) #1

declare dso_local i32 @MACIO_OUT8(i32, i32) #1

declare dso_local i32 @MACIO_IN8(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @UNLOCK(i64) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
