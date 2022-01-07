; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8xxx_phy_remove.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8xxx_phy_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { %struct.ar8xxx_priv* }
%struct.ar8xxx_priv = type { i64, i32, i32 }

@ar8xxx_dev_list_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.phy_device*)* @ar8xxx_phy_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar8xxx_phy_remove(%struct.phy_device* %0) #0 {
  %2 = alloca %struct.phy_device*, align 8
  %3 = alloca %struct.ar8xxx_priv*, align 8
  store %struct.phy_device* %0, %struct.phy_device** %2, align 8
  %4 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %5 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %4, i32 0, i32 0
  %6 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %5, align 8
  store %struct.ar8xxx_priv* %6, %struct.ar8xxx_priv** %3, align 8
  %7 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %8 = icmp ne %struct.ar8xxx_priv* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @WARN_ON(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %37

14:                                               ; preds = %1
  %15 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %16 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %15, i32 0, i32 0
  store %struct.ar8xxx_priv* null, %struct.ar8xxx_priv** %16, align 8
  %17 = call i32 @mutex_lock(i32* @ar8xxx_dev_list_lock)
  %18 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %19 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, -1
  store i64 %21, i64* %19, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = call i32 @mutex_unlock(i32* @ar8xxx_dev_list_lock)
  br label %37

25:                                               ; preds = %14
  %26 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %27 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %26, i32 0, i32 2
  %28 = call i32 @list_del(i32* %27)
  %29 = call i32 @mutex_unlock(i32* @ar8xxx_dev_list_lock)
  %30 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %31 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %30, i32 0, i32 1
  %32 = call i32 @unregister_switch(i32* %31)
  %33 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %34 = call i32 @ar8xxx_mib_stop(%struct.ar8xxx_priv* %33)
  %35 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %36 = call i32 @ar8xxx_free(%struct.ar8xxx_priv* %35)
  br label %37

37:                                               ; preds = %25, %23, %13
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @unregister_switch(i32*) #1

declare dso_local i32 @ar8xxx_mib_stop(%struct.ar8xxx_priv*) #1

declare dso_local i32 @ar8xxx_free(%struct.ar8xxx_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
