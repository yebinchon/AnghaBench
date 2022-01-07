; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_sh_tmu.c_sh_tmu_channel_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_sh_tmu.c_sh_tmu_channel_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_tmu_channel = type { i32, i64, i32, i64, i64, %struct.sh_tmu_device* }
%struct.sh_tmu_device = type { i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@SH_TMU_SH3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_tmu_channel*, i32, i32, i32, %struct.sh_tmu_device*)* @sh_tmu_channel_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_tmu_channel_setup(%struct.sh_tmu_channel* %0, i32 %1, i32 %2, i32 %3, %struct.sh_tmu_device* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sh_tmu_channel*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sh_tmu_device*, align 8
  store %struct.sh_tmu_channel* %0, %struct.sh_tmu_channel** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.sh_tmu_device* %4, %struct.sh_tmu_device** %11, align 8
  %12 = load i32, i32* %9, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %5
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  store i32 0, i32* %6, align 4
  br label %87

18:                                               ; preds = %14, %5
  %19 = load %struct.sh_tmu_device*, %struct.sh_tmu_device** %11, align 8
  %20 = load %struct.sh_tmu_channel*, %struct.sh_tmu_channel** %7, align 8
  %21 = getelementptr inbounds %struct.sh_tmu_channel, %struct.sh_tmu_channel* %20, i32 0, i32 5
  store %struct.sh_tmu_device* %19, %struct.sh_tmu_device** %21, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.sh_tmu_channel*, %struct.sh_tmu_channel** %7, align 8
  %24 = getelementptr inbounds %struct.sh_tmu_channel, %struct.sh_tmu_channel* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.sh_tmu_device*, %struct.sh_tmu_device** %11, align 8
  %26 = getelementptr inbounds %struct.sh_tmu_device, %struct.sh_tmu_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SH_TMU_SH3, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %18
  %31 = load %struct.sh_tmu_device*, %struct.sh_tmu_device** %11, align 8
  %32 = getelementptr inbounds %struct.sh_tmu_device, %struct.sh_tmu_device* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, 4
  %35 = load %struct.sh_tmu_channel*, %struct.sh_tmu_channel** %7, align 8
  %36 = getelementptr inbounds %struct.sh_tmu_channel, %struct.sh_tmu_channel* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = mul i32 %37, 12
  %39 = zext i32 %38 to i64
  %40 = add nsw i64 %34, %39
  %41 = load %struct.sh_tmu_channel*, %struct.sh_tmu_channel** %7, align 8
  %42 = getelementptr inbounds %struct.sh_tmu_channel, %struct.sh_tmu_channel* %41, i32 0, i32 4
  store i64 %40, i64* %42, align 8
  br label %56

43:                                               ; preds = %18
  %44 = load %struct.sh_tmu_device*, %struct.sh_tmu_device** %11, align 8
  %45 = getelementptr inbounds %struct.sh_tmu_device, %struct.sh_tmu_device* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, 8
  %48 = load %struct.sh_tmu_channel*, %struct.sh_tmu_channel** %7, align 8
  %49 = getelementptr inbounds %struct.sh_tmu_channel, %struct.sh_tmu_channel* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = mul i32 %50, 12
  %52 = zext i32 %51 to i64
  %53 = add nsw i64 %47, %52
  %54 = load %struct.sh_tmu_channel*, %struct.sh_tmu_channel** %7, align 8
  %55 = getelementptr inbounds %struct.sh_tmu_channel, %struct.sh_tmu_channel* %54, i32 0, i32 4
  store i64 %53, i64* %55, align 8
  br label %56

56:                                               ; preds = %43, %30
  %57 = load %struct.sh_tmu_device*, %struct.sh_tmu_device** %11, align 8
  %58 = getelementptr inbounds %struct.sh_tmu_device, %struct.sh_tmu_device* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i64 @platform_get_irq(%struct.TYPE_2__* %59, i32 %60)
  %62 = load %struct.sh_tmu_channel*, %struct.sh_tmu_channel** %7, align 8
  %63 = getelementptr inbounds %struct.sh_tmu_channel, %struct.sh_tmu_channel* %62, i32 0, i32 1
  store i64 %61, i64* %63, align 8
  %64 = load %struct.sh_tmu_channel*, %struct.sh_tmu_channel** %7, align 8
  %65 = getelementptr inbounds %struct.sh_tmu_channel, %struct.sh_tmu_channel* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %56
  %69 = load %struct.sh_tmu_channel*, %struct.sh_tmu_channel** %7, align 8
  %70 = getelementptr inbounds %struct.sh_tmu_channel, %struct.sh_tmu_channel* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %6, align 4
  br label %87

73:                                               ; preds = %56
  %74 = load %struct.sh_tmu_channel*, %struct.sh_tmu_channel** %7, align 8
  %75 = getelementptr inbounds %struct.sh_tmu_channel, %struct.sh_tmu_channel* %74, i32 0, i32 2
  store i32 0, i32* %75, align 8
  %76 = load %struct.sh_tmu_channel*, %struct.sh_tmu_channel** %7, align 8
  %77 = getelementptr inbounds %struct.sh_tmu_channel, %struct.sh_tmu_channel* %76, i32 0, i32 3
  store i64 0, i64* %77, align 8
  %78 = load %struct.sh_tmu_channel*, %struct.sh_tmu_channel** %7, align 8
  %79 = load %struct.sh_tmu_device*, %struct.sh_tmu_device** %11, align 8
  %80 = getelementptr inbounds %struct.sh_tmu_device, %struct.sh_tmu_device* %79, i32 0, i32 1
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = call i32 @dev_name(i32* %82)
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @sh_tmu_register(%struct.sh_tmu_channel* %78, i32 %83, i32 %84, i32 %85)
  store i32 %86, i32* %6, align 4
  br label %87

87:                                               ; preds = %73, %68, %17
  %88 = load i32, i32* %6, align 4
  ret i32 %88
}

declare dso_local i64 @platform_get_irq(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @sh_tmu_register(%struct.sh_tmu_channel*, i32, i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
