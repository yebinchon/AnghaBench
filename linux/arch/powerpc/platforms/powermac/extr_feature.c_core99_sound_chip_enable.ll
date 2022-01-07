; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powermac/extr_feature.c_core99_sound_chip_enable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powermac/extr_feature.c_core99_sound_chip_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.device_node = type { i32 }
%struct.macio_chip = type { i32 }

@ENODEV = common dso_local global i64 0, align 8
@pmac_mb = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PMAC_TYPE_PISMO = common dso_local global i64 0, align 8
@PMAC_TYPE_TITANIUM = common dso_local global i64 0, align 8
@KL_GPIO_SOUND_POWER = common dso_local global i32 0, align 4
@KEYLARGO_GPIO_OUTPUT_ENABLE = common dso_local global i32 0, align 4
@KEYLARGO_GPIO_OUTOUT_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device_node*, i64, i64)* @core99_sound_chip_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @core99_sound_chip_enable(%struct.device_node* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.macio_chip*, align 8
  %9 = alloca i64, align 8
  store %struct.device_node* %0, %struct.device_node** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.device_node*, %struct.device_node** %5, align 8
  %11 = call %struct.macio_chip* @macio_find(%struct.device_node* %10, i32 0)
  store %struct.macio_chip* %11, %struct.macio_chip** %8, align 8
  %12 = load %struct.macio_chip*, %struct.macio_chip** %8, align 8
  %13 = icmp ne %struct.macio_chip* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i64, i64* @ENODEV, align 8
  %16 = sub nsw i64 0, %15
  store i64 %16, i64* %4, align 8
  br label %46

17:                                               ; preds = %3
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pmac_mb, i32 0, i32 0), align 8
  %19 = load i64, i64* @PMAC_TYPE_PISMO, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pmac_mb, i32 0, i32 0), align 8
  %23 = load i64, i64* @PMAC_TYPE_TITANIUM, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %45

25:                                               ; preds = %21, %17
  %26 = load i64, i64* %9, align 8
  %27 = call i32 @LOCK(i64 %26)
  %28 = load i64, i64* %7, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load i32, i32* @KL_GPIO_SOUND_POWER, align 4
  %32 = load i32, i32* @KEYLARGO_GPIO_OUTPUT_ENABLE, align 4
  %33 = load i32, i32* @KEYLARGO_GPIO_OUTOUT_DATA, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @MACIO_OUT8(i32 %31, i32 %34)
  br label %40

36:                                               ; preds = %25
  %37 = load i32, i32* @KL_GPIO_SOUND_POWER, align 4
  %38 = load i32, i32* @KEYLARGO_GPIO_OUTPUT_ENABLE, align 4
  %39 = call i32 @MACIO_OUT8(i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %36, %30
  %41 = load i32, i32* @KL_GPIO_SOUND_POWER, align 4
  %42 = call i32 @MACIO_IN8(i32 %41)
  %43 = load i64, i64* %9, align 8
  %44 = call i32 @UNLOCK(i64 %43)
  br label %45

45:                                               ; preds = %40, %21
  store i64 0, i64* %4, align 8
  br label %46

46:                                               ; preds = %45, %14
  %47 = load i64, i64* %4, align 8
  ret i64 %47
}

declare dso_local %struct.macio_chip* @macio_find(%struct.device_node*, i32) #1

declare dso_local i32 @LOCK(i64) #1

declare dso_local i32 @MACIO_OUT8(i32, i32) #1

declare dso_local i32 @MACIO_IN8(i32) #1

declare dso_local i32 @UNLOCK(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
