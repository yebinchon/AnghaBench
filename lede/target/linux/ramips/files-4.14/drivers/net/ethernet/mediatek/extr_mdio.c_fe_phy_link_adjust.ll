; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mdio.c_fe_phy_link_adjust.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mdio.c_fe_phy_link_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fe_priv = type { i64*, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64*, i32*, i32, %struct.phy_device**, i64* }
%struct.phy_device = type { i64, i64, i32 }
%struct.TYPE_3__ = type { i32 (%struct.fe_priv*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @fe_phy_link_adjust to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fe_phy_link_adjust(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.fe_priv*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.phy_device*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.fe_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.fe_priv* %9, %struct.fe_priv** %3, align 8
  %10 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %11 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %144, %1
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 8
  br i1 %18, label %19, label %147

19:                                               ; preds = %16
  %20 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %21 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 4
  %24 = load i64*, i64** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %143

30:                                               ; preds = %19
  %31 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %32 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 3
  %35 = load %struct.phy_device**, %struct.phy_device*** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.phy_device*, %struct.phy_device** %35, i64 %37
  %39 = load %struct.phy_device*, %struct.phy_device** %38, align 8
  store %struct.phy_device* %39, %struct.phy_device** %6, align 8
  store i32 0, i32* %7, align 4
  %40 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %41 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %74

44:                                               ; preds = %30
  %45 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %46 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %55 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %53, %56
  br i1 %57, label %72, label %58

58:                                               ; preds = %44
  %59 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %60 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %69 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %67, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %58, %44
  store i32 1, i32* %7, align 4
  br label %73

73:                                               ; preds = %72, %58
  br label %74

74:                                               ; preds = %73, %30
  %75 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %76 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %79 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %78, i32 0, i32 0
  %80 = load i64*, i64** %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %80, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %77, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %74
  store i32 1, i32* %7, align 4
  br label %87

87:                                               ; preds = %86, %74
  %88 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %89 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  switch i32 %90, label %142 [
    i32 128, label %91
    i32 129, label %91
    i32 130, label %91
  ]

91:                                               ; preds = %87, %87, %87
  %92 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %93 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %96 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %95, i32 0, i32 0
  %97 = load i64*, i64** %96, align 8
  %98 = load i32, i32* %5, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i64, i64* %97, i64 %99
  store i64 %94, i64* %100, align 8
  %101 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %102 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %105 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %104, i32 0, i32 1
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i64*, i64** %107, align 8
  %109 = load i32, i32* %5, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i64, i64* %108, i64 %110
  store i64 %103, i64* %111, align 8
  %112 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %113 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %116 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %115, i32 0, i32 1
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %5, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  store i32 %114, i32* %122, align 4
  %123 = load i32, i32* %7, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %141

125:                                              ; preds = %91
  %126 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %127 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %126, i32 0, i32 2
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  %130 = load i32 (%struct.fe_priv*, i32)*, i32 (%struct.fe_priv*, i32)** %129, align 8
  %131 = icmp ne i32 (%struct.fe_priv*, i32)* %130, null
  br i1 %131, label %132, label %141

132:                                              ; preds = %125
  %133 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %134 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %133, i32 0, i32 2
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  %137 = load i32 (%struct.fe_priv*, i32)*, i32 (%struct.fe_priv*, i32)** %136, align 8
  %138 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %139 = load i32, i32* %5, align 4
  %140 = call i32 %137(%struct.fe_priv* %138, i32 %139)
  br label %141

141:                                              ; preds = %132, %125, %91
  br label %142

142:                                              ; preds = %87, %141
  br label %143

143:                                              ; preds = %142, %19
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %5, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %5, align 4
  br label %16

147:                                              ; preds = %16
  %148 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %149 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %148, i32 0, i32 1
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 2
  %152 = load i64, i64* %4, align 8
  %153 = call i32 @spin_unlock_irqrestore(i32* %151, i64 %152)
  ret void
}

declare dso_local %struct.fe_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
