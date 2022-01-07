; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mdio.c_fe_connect_phy_node.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mdio.c_fe_connect_phy_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fe_priv = type { i64*, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { %struct.phy_device**, i32** }
%struct.phy_device = type { i32, %struct.TYPE_5__*, i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"%s: invalid port id\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"incorrect phy-mode %d\0A\00", align 1
@fe_phy_link_adjust = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"could not connect to PHY\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@PHY_GBIT_FEATURES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [54 x i8] c"connected port %d to PHY at %s [uid=%08x, driver=%s]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fe_connect_phy_node(%struct.fe_priv* %0, %struct.device_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fe_priv*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.phy_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.fe_priv* %0, %struct.fe_priv** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  store i32* null, i32** %6, align 8
  %10 = load %struct.device_node*, %struct.device_node** %5, align 8
  %11 = call i32* @of_get_property(%struct.device_node* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32* %11, i32** %6, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @be32_to_cpu(i32 %16)
  %18 = icmp sge i32 %17, 32
  br i1 %18, label %19, label %26

19:                                               ; preds = %14, %2
  %20 = load %struct.device_node*, %struct.device_node** %5, align 8
  %21 = getelementptr inbounds %struct.device_node, %struct.device_node* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %120

26:                                               ; preds = %14
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @be32_to_cpu(i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load %struct.device_node*, %struct.device_node** %5, align 8
  %31 = call i32 @of_get_phy_mode(%struct.device_node* %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %26
  %35 = load %struct.fe_priv*, %struct.fe_priv** %4, align 8
  %36 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 (i32, i8*, ...) @dev_err(i32 %37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  %40 = load %struct.fe_priv*, %struct.fe_priv** %4, align 8
  %41 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %40, i32 0, i32 1
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i32**, i32*** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32*, i32** %44, i64 %46
  store i32* null, i32** %47, align 8
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %120

50:                                               ; preds = %26
  %51 = load %struct.fe_priv*, %struct.fe_priv** %4, align 8
  %52 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.device_node*, %struct.device_node** %5, align 8
  %55 = load i32, i32* @fe_phy_link_adjust, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call %struct.phy_device* @of_phy_connect(i32 %53, %struct.device_node* %54, i32 %55, i32 0, i32 %56)
  store %struct.phy_device* %57, %struct.phy_device** %7, align 8
  %58 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %59 = icmp ne %struct.phy_device* %58, null
  br i1 %59, label %75, label %60

60:                                               ; preds = %50
  %61 = load %struct.fe_priv*, %struct.fe_priv** %4, align 8
  %62 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 (i32, i8*, ...) @dev_err(i32 %63, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %65 = load %struct.fe_priv*, %struct.fe_priv** %4, align 8
  %66 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %65, i32 0, i32 1
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i32**, i32*** %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32*, i32** %69, i64 %71
  store i32* null, i32** %72, align 8
  %73 = load i32, i32* @ENODEV, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %120

75:                                               ; preds = %50
  %76 = load i32, i32* @PHY_GBIT_FEATURES, align 4
  %77 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %78 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = and i32 %79, %76
  store i32 %80, i32* %78, align 8
  %81 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %82 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %85 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %84, i32 0, i32 5
  store i32 %83, i32* %85, align 4
  %86 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %87 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %86, i32 0, i32 0
  store i32 1, i32* %87, align 8
  %88 = load %struct.fe_priv*, %struct.fe_priv** %4, align 8
  %89 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %93 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = call i32 @dev_name(i32* %94)
  %96 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %97 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %100 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %99, i32 0, i32 1
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @dev_info(i32 %90, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 %91, i32 %95, i32 %98, i32 %103)
  %105 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %106 = load %struct.fe_priv*, %struct.fe_priv** %4, align 8
  %107 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %106, i32 0, i32 1
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load %struct.phy_device**, %struct.phy_device*** %109, align 8
  %111 = load i32, i32* %9, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.phy_device*, %struct.phy_device** %110, i64 %112
  store %struct.phy_device* %105, %struct.phy_device** %113, align 8
  %114 = load %struct.fe_priv*, %struct.fe_priv** %4, align 8
  %115 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %114, i32 0, i32 0
  %116 = load i64*, i64** %115, align 8
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i64, i64* %116, i64 %118
  store i64 0, i64* %119, align 8
  store i32 0, i32* %3, align 4
  br label %120

120:                                              ; preds = %75, %60, %34, %19
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @of_get_phy_mode(%struct.device_node*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local %struct.phy_device* @of_phy_connect(i32, %struct.device_node*, i32, i32, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
