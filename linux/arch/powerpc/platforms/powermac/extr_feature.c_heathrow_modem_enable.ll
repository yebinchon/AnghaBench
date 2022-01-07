; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powermac/extr_feature.c_heathrow_modem_enable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powermac/extr_feature.c_heathrow_modem_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.device_node = type { i32 }
%struct.macio_chip = type { i32 }

@macio_unknown = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i64 0, align 8
@HRW_GPIO_MODEM_RESET = common dso_local global i32 0, align 4
@pmac_mb = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PMAC_TYPE_YOSEMITE = common dso_local global i64 0, align 8
@PMAC_TYPE_YIKES = common dso_local global i64 0, align 8
@HEATHROW_FCR = common dso_local global i32 0, align 4
@HRW_SCC_TRANS_EN_N = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device_node*, i64, i64)* @heathrow_modem_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @heathrow_modem_enable(%struct.device_node* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.macio_chip*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.device_node* %0, %struct.device_node** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.device_node*, %struct.device_node** %5, align 8
  %12 = load i32, i32* @macio_unknown, align 4
  %13 = call %struct.macio_chip* @macio_find(%struct.device_node* %11, i32 %12)
  store %struct.macio_chip* %13, %struct.macio_chip** %8, align 8
  %14 = load %struct.macio_chip*, %struct.macio_chip** %8, align 8
  %15 = icmp ne %struct.macio_chip* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i64, i64* @ENODEV, align 8
  %18 = sub nsw i64 0, %17
  store i64 %18, i64* %4, align 8
  br label %100

19:                                               ; preds = %3
  %20 = load i32, i32* @HRW_GPIO_MODEM_RESET, align 4
  %21 = call i32 @MACIO_IN8(i32 %20)
  %22 = and i32 %21, -2
  store i32 %22, i32* %9, align 4
  %23 = load i64, i64* %7, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %19
  %26 = load i64, i64* %10, align 8
  %27 = call i32 @LOCK(i64 %26)
  %28 = load i32, i32* @HRW_GPIO_MODEM_RESET, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @MACIO_OUT8(i32 %28, i32 %29)
  %31 = load i64, i64* %10, align 8
  %32 = call i32 @UNLOCK(i64 %31)
  %33 = load i32, i32* @HRW_GPIO_MODEM_RESET, align 4
  %34 = call i32 @MACIO_IN8(i32 %33)
  %35 = call i32 @mdelay(i32 250)
  br label %36

36:                                               ; preds = %25, %19
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pmac_mb, i32 0, i32 0), align 8
  %38 = load i64, i64* @PMAC_TYPE_YOSEMITE, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %63

40:                                               ; preds = %36
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pmac_mb, i32 0, i32 0), align 8
  %42 = load i64, i64* @PMAC_TYPE_YIKES, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %63

44:                                               ; preds = %40
  %45 = load i64, i64* %10, align 8
  %46 = call i32 @LOCK(i64 %45)
  %47 = load i64, i64* %7, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i32, i32* @HEATHROW_FCR, align 4
  %51 = load i32, i32* @HRW_SCC_TRANS_EN_N, align 4
  %52 = call i32 @MACIO_BIC(i32 %50, i32 %51)
  br label %57

53:                                               ; preds = %44
  %54 = load i32, i32* @HEATHROW_FCR, align 4
  %55 = load i32, i32* @HRW_SCC_TRANS_EN_N, align 4
  %56 = call i32 @MACIO_BIS(i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %53, %49
  %58 = load i64, i64* %10, align 8
  %59 = call i32 @UNLOCK(i64 %58)
  %60 = load i32, i32* @HEATHROW_FCR, align 4
  %61 = call i32 @MACIO_IN32(i32 %60)
  %62 = call i32 @mdelay(i32 250)
  br label %63

63:                                               ; preds = %57, %40, %36
  %64 = load i64, i64* %7, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %99

66:                                               ; preds = %63
  %67 = load i64, i64* %10, align 8
  %68 = call i32 @LOCK(i64 %67)
  %69 = load i32, i32* @HRW_GPIO_MODEM_RESET, align 4
  %70 = load i32, i32* %9, align 4
  %71 = or i32 %70, 1
  %72 = call i32 @MACIO_OUT8(i32 %69, i32 %71)
  %73 = load i32, i32* @HRW_GPIO_MODEM_RESET, align 4
  %74 = call i32 @MACIO_IN8(i32 %73)
  %75 = load i64, i64* %10, align 8
  %76 = call i32 @UNLOCK(i64 %75)
  %77 = call i32 @mdelay(i32 250)
  %78 = load i64, i64* %10, align 8
  %79 = call i32 @LOCK(i64 %78)
  %80 = load i32, i32* @HRW_GPIO_MODEM_RESET, align 4
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @MACIO_OUT8(i32 %80, i32 %81)
  %83 = load i32, i32* @HRW_GPIO_MODEM_RESET, align 4
  %84 = call i32 @MACIO_IN8(i32 %83)
  %85 = load i64, i64* %10, align 8
  %86 = call i32 @UNLOCK(i64 %85)
  %87 = call i32 @mdelay(i32 250)
  %88 = load i64, i64* %10, align 8
  %89 = call i32 @LOCK(i64 %88)
  %90 = load i32, i32* @HRW_GPIO_MODEM_RESET, align 4
  %91 = load i32, i32* %9, align 4
  %92 = or i32 %91, 1
  %93 = call i32 @MACIO_OUT8(i32 %90, i32 %92)
  %94 = load i32, i32* @HRW_GPIO_MODEM_RESET, align 4
  %95 = call i32 @MACIO_IN8(i32 %94)
  %96 = load i64, i64* %10, align 8
  %97 = call i32 @UNLOCK(i64 %96)
  %98 = call i32 @mdelay(i32 250)
  br label %99

99:                                               ; preds = %66, %63
  store i64 0, i64* %4, align 8
  br label %100

100:                                              ; preds = %99, %16
  %101 = load i64, i64* %4, align 8
  ret i64 %101
}

declare dso_local %struct.macio_chip* @macio_find(%struct.device_node*, i32) #1

declare dso_local i32 @MACIO_IN8(i32) #1

declare dso_local i32 @LOCK(i64) #1

declare dso_local i32 @MACIO_OUT8(i32, i32) #1

declare dso_local i32 @UNLOCK(i64) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @MACIO_BIC(i32, i32) #1

declare dso_local i32 @MACIO_BIS(i32, i32) #1

declare dso_local i32 @MACIO_IN32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
