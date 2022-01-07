; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_sata_gemini.c_gemini_sata_setup_bridge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_sata_gemini.c_gemini_sata_setup_bridge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sata_gemini = type { i64, i32, i64 }

@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@GEMINI_SATA_CTRL_HOTPLUG_DETECT_EN = common dso_local global i32 0, align 4
@GEMINI_SATA_CTRL_EN = common dso_local global i32 0, align 4
@GEMINI_MUXMODE_2 = common dso_local global i64 0, align 8
@GEMINI_SATA_CTRL_SLAVE_EN = common dso_local global i32 0, align 4
@GEMINI_SATA0_CTRL = common dso_local global i64 0, align 8
@GEMINI_MUXMODE_3 = common dso_local global i64 0, align 8
@GEMINI_SATA1_CTRL = common dso_local global i64 0, align 8
@GEMINI_SATA0_STATUS = common dso_local global i64 0, align 8
@GEMINI_SATA1_STATUS = common dso_local global i64 0, align 8
@GEMINI_SATA_STATUS_PHY_READY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"SATA%d PHY %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"ready\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"not ready\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sata_gemini*, i32)* @gemini_sata_setup_bridge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gemini_sata_setup_bridge(%struct.sata_gemini* %0, i32 %1) #0 {
  %3 = alloca %struct.sata_gemini*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sata_gemini* %0, %struct.sata_gemini** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @jiffies, align 4
  %9 = load i32, i32* @HZ, align 4
  %10 = mul nsw i32 %9, 1
  %11 = add nsw i32 %8, %10
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %36

15:                                               ; preds = %2
  %16 = load i32, i32* @GEMINI_SATA_CTRL_HOTPLUG_DETECT_EN, align 4
  %17 = load i32, i32* @GEMINI_SATA_CTRL_EN, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %7, align 4
  %19 = load %struct.sata_gemini*, %struct.sata_gemini** %3, align 8
  %20 = getelementptr inbounds %struct.sata_gemini, %struct.sata_gemini* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @GEMINI_MUXMODE_2, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %15
  %25 = load i32, i32* @GEMINI_SATA_CTRL_SLAVE_EN, align 4
  %26 = load i32, i32* %7, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %24, %15
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.sata_gemini*, %struct.sata_gemini** %3, align 8
  %31 = getelementptr inbounds %struct.sata_gemini, %struct.sata_gemini* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @GEMINI_SATA0_CTRL, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @writel(i32 %29, i64 %34)
  br label %57

36:                                               ; preds = %2
  %37 = load i32, i32* @GEMINI_SATA_CTRL_HOTPLUG_DETECT_EN, align 4
  %38 = load i32, i32* @GEMINI_SATA_CTRL_EN, align 4
  %39 = or i32 %37, %38
  store i32 %39, i32* %7, align 4
  %40 = load %struct.sata_gemini*, %struct.sata_gemini** %3, align 8
  %41 = getelementptr inbounds %struct.sata_gemini, %struct.sata_gemini* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @GEMINI_MUXMODE_3, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %36
  %46 = load i32, i32* @GEMINI_SATA_CTRL_SLAVE_EN, align 4
  %47 = load i32, i32* %7, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %45, %36
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.sata_gemini*, %struct.sata_gemini** %3, align 8
  %52 = getelementptr inbounds %struct.sata_gemini, %struct.sata_gemini* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @GEMINI_SATA1_CTRL, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @writel(i32 %50, i64 %55)
  br label %57

57:                                               ; preds = %49, %28
  %58 = call i32 @msleep(i32 10)
  br label %59

59:                                               ; preds = %84, %57
  %60 = call i32 @msleep(i32 100)
  %61 = load i32, i32* %4, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %59
  %64 = load %struct.sata_gemini*, %struct.sata_gemini** %3, align 8
  %65 = getelementptr inbounds %struct.sata_gemini, %struct.sata_gemini* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @GEMINI_SATA0_STATUS, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @readl(i64 %68)
  store i32 %69, i32* %7, align 4
  br label %77

70:                                               ; preds = %59
  %71 = load %struct.sata_gemini*, %struct.sata_gemini** %3, align 8
  %72 = getelementptr inbounds %struct.sata_gemini, %struct.sata_gemini* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @GEMINI_SATA1_STATUS, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @readl(i64 %75)
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %70, %63
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @GEMINI_SATA_STATUS_PHY_READY, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  br label %89

83:                                               ; preds = %77
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* @jiffies, align 4
  %86 = load i64, i64* %5, align 8
  %87 = call i64 @time_before(i32 %85, i64 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %59, label %89

89:                                               ; preds = %84, %82
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* @GEMINI_SATA_STATUS_PHY_READY, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  %94 = xor i1 %93, true
  %95 = xor i1 %94, true
  %96 = zext i1 %95 to i32
  store i32 %96, i32* %6, align 4
  %97 = load %struct.sata_gemini*, %struct.sata_gemini** %3, align 8
  %98 = getelementptr inbounds %struct.sata_gemini, %struct.sata_gemini* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)
  %105 = call i32 @dev_info(i32 %99, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %100, i8* %104)
  %106 = load i32, i32* %6, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %89
  br label %112

109:                                              ; preds = %89
  %110 = load i32, i32* @ENODEV, align 4
  %111 = sub nsw i32 0, %110
  br label %112

112:                                              ; preds = %109, %108
  %113 = phi i32 [ 0, %108 ], [ %111, %109 ]
  ret i32 %113
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @time_before(i32, i64) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
