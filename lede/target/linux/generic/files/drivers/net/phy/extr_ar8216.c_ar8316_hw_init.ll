; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8316_hw_init.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8316_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar8xxx_priv = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64 }

@AR8316_REG_POSTRIP = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_RGMII = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"ar8316: Using port 4 as PHY\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"ar8316: Using port 4 as switch port\0A\00", align 1
@PHY_INTERFACE_MODE_GMII = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"ar8316: unsupported mii mode: %d.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar8xxx_priv*)* @ar8316_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar8316_hw_init(%struct.ar8xxx_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ar8xxx_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ar8xxx_priv* %0, %struct.ar8xxx_priv** %3, align 8
  %6 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %7 = load i32, i32* @AR8316_REG_POSTRIP, align 4
  %8 = call i32 @ar8xxx_read(%struct.ar8xxx_priv* %6, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %10 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PHY_INTERFACE_MODE_RGMII, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %1
  %17 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %18 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  store i32 -2126111766, i32* %5, align 4
  %22 = call i32 @pr_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %25

23:                                               ; preds = %16
  store i32 19274722, i32* %5, align 4
  %24 = call i32 @pr_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %21
  br label %45

26:                                               ; preds = %1
  %27 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %28 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @PHY_INTERFACE_MODE_GMII, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  store i32 17718129, i32* %5, align 4
  br label %44

35:                                               ; preds = %26
  %36 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %37 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %40)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %81

44:                                               ; preds = %34
  br label %45

45:                                               ; preds = %44, %25
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %78

50:                                               ; preds = %45
  %51 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %52 = load i32, i32* @AR8316_REG_POSTRIP, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @ar8xxx_write(%struct.ar8xxx_priv* %51, i32 %52, i32 %53)
  %55 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %56 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %75

59:                                               ; preds = %50
  %60 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %61 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @PHY_INTERFACE_MODE_RGMII, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %59
  %68 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %69 = call i32 @ar8xxx_phy_dbg_write(%struct.ar8xxx_priv* %68, i32 4, i32 18, i32 18444)
  %70 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %71 = call i32 @ar8xxx_phy_dbg_write(%struct.ar8xxx_priv* %70, i32 4, i32 0, i32 33358)
  %72 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %73 = call i32 @ar8xxx_phy_dbg_write(%struct.ar8xxx_priv* %72, i32 4, i32 5, i32 15687)
  %74 = call i32 @msleep(i32 1000)
  br label %75

75:                                               ; preds = %67, %59, %50
  %76 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %77 = call i32 @ar8xxx_phy_init(%struct.ar8xxx_priv* %76)
  br label %78

78:                                               ; preds = %75, %49
  %79 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %80 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %79, i32 0, i32 0
  store i32 1, i32* %80, align 8
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %78, %35
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @ar8xxx_read(%struct.ar8xxx_priv*, i32) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @pr_err(i8*, i64) #1

declare dso_local i32 @ar8xxx_write(%struct.ar8xxx_priv*, i32, i32) #1

declare dso_local i32 @ar8xxx_phy_dbg_write(%struct.ar8xxx_priv*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @ar8xxx_phy_init(%struct.ar8xxx_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
