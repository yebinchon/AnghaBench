; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mdio.c_fe_phy_connect.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mdio.c_fe_phy_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fe_priv = type { i32, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64*, i64* }

@FE_PHY_FLAG_PORT = common dso_local global i32 0, align 4
@FE_PHY_FLAG_ATTACH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fe_priv*)* @fe_phy_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fe_phy_connect(%struct.fe_priv* %0) #0 {
  %2 = alloca %struct.fe_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.fe_priv* %0, %struct.fe_priv** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %77, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 8
  br i1 %6, label %7, label %80

7:                                                ; preds = %4
  %8 = load %struct.fe_priv*, %struct.fe_priv** %2, align 8
  %9 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %8, i32 0, i32 3
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i64*, i64** %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i64, i64* %12, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %39

18:                                               ; preds = %7
  %19 = load %struct.fe_priv*, %struct.fe_priv** %2, align 8
  %20 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %38, label %23

23:                                               ; preds = %18
  %24 = load %struct.fe_priv*, %struct.fe_priv** %2, align 8
  %25 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %24, i32 0, i32 3
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.fe_priv*, %struct.fe_priv** %2, align 8
  %34 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %33, i32 0, i32 2
  store i64 %32, i64* %34, align 8
  %35 = load i32, i32* @FE_PHY_FLAG_PORT, align 4
  %36 = load %struct.fe_priv*, %struct.fe_priv** %2, align 8
  %37 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  br label %38

38:                                               ; preds = %23, %18
  br label %76

39:                                               ; preds = %7
  %40 = load %struct.fe_priv*, %struct.fe_priv** %2, align 8
  %41 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %75

44:                                               ; preds = %39
  %45 = load %struct.fe_priv*, %struct.fe_priv** %2, align 8
  %46 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* %3, align 4
  %49 = call i64 @mdiobus_get_phy(i64 %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %75

51:                                               ; preds = %44
  %52 = load %struct.fe_priv*, %struct.fe_priv** %2, align 8
  %53 = load %struct.fe_priv*, %struct.fe_priv** %2, align 8
  %54 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* %3, align 4
  %57 = call i64 @mdiobus_get_phy(i64 %55, i32 %56)
  %58 = call i32 @phy_init(%struct.fe_priv* %52, i64 %57)
  %59 = load %struct.fe_priv*, %struct.fe_priv** %2, align 8
  %60 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %74, label %63

63:                                               ; preds = %51
  %64 = load %struct.fe_priv*, %struct.fe_priv** %2, align 8
  %65 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* %3, align 4
  %68 = call i64 @mdiobus_get_phy(i64 %66, i32 %67)
  %69 = load %struct.fe_priv*, %struct.fe_priv** %2, align 8
  %70 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %69, i32 0, i32 2
  store i64 %68, i64* %70, align 8
  %71 = load i32, i32* @FE_PHY_FLAG_ATTACH, align 4
  %72 = load %struct.fe_priv*, %struct.fe_priv** %2, align 8
  %73 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  br label %74

74:                                               ; preds = %63, %51
  br label %75

75:                                               ; preds = %74, %44, %39
  br label %76

76:                                               ; preds = %75, %38
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %3, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %3, align 4
  br label %4

80:                                               ; preds = %4
  ret i32 0
}

declare dso_local i64 @mdiobus_get_phy(i64, i32) #1

declare dso_local i32 @phy_init(%struct.fe_priv*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
