; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_adm6996.c_adm6996_apply_vlan_filters.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_adm6996.c_adm6996_apply_vlan_filters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adm6996_priv = type { i32*, i64*, i64* }

@ADM_NUM_VLANS = common dso_local global i32 0, align 4
@ADM_VLAN_FILT_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adm6996_priv*)* @adm6996_apply_vlan_filters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adm6996_apply_vlan_filters(%struct.adm6996_priv* %0) #0 {
  %2 = alloca %struct.adm6996_priv*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.adm6996_priv* %0, %struct.adm6996_priv** %2, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %66, %1
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @ADM_NUM_VLANS, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %69

12:                                               ; preds = %8
  %13 = load %struct.adm6996_priv*, %struct.adm6996_priv** %2, align 8
  %14 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %5, align 4
  %20 = load %struct.adm6996_priv*, %struct.adm6996_priv** %2, align 8
  %21 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %20, i32 0, i32 1
  %22 = load i64*, i64** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %3, align 8
  %27 = load %struct.adm6996_priv*, %struct.adm6996_priv** %2, align 8
  %28 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %27, i32 0, i32 2
  %29 = load i64*, i64** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %4, align 8
  %34 = load i64, i64* %3, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %12
  %37 = load %struct.adm6996_priv*, %struct.adm6996_priv** %2, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @ADM_VLAN_FILT_H(i32 %38)
  %40 = call i32 @w16(%struct.adm6996_priv* %37, i32 %39, i32 0)
  %41 = load %struct.adm6996_priv*, %struct.adm6996_priv** %2, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @ADM_VLAN_FILT_L(i32 %42)
  %44 = call i32 @w16(%struct.adm6996_priv* %41, i32 %43, i32 0)
  br label %66

45:                                               ; preds = %12
  %46 = load i64, i64* %3, align 8
  %47 = call i32 @ADM_VLAN_FILT_MEMBER(i64 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i64, i64* %4, align 8
  %49 = call i32 @ADM_VLAN_FILT_TAGGED(i64 %48)
  %50 = load i32, i32* %6, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %6, align 4
  %52 = load %struct.adm6996_priv*, %struct.adm6996_priv** %2, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @ADM_VLAN_FILT_L(i32 %53)
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @w16(%struct.adm6996_priv* %52, i32 %54, i32 %55)
  %57 = load i32, i32* @ADM_VLAN_FILT_VALID, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @ADM_VLAN_FILT_VID(i32 %58)
  %60 = or i32 %57, %59
  store i32 %60, i32* %6, align 4
  %61 = load %struct.adm6996_priv*, %struct.adm6996_priv** %2, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @ADM_VLAN_FILT_H(i32 %62)
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @w16(%struct.adm6996_priv* %61, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %45, %36
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %8

69:                                               ; preds = %8
  ret void
}

declare dso_local i32 @w16(%struct.adm6996_priv*, i32, i32) #1

declare dso_local i32 @ADM_VLAN_FILT_H(i32) #1

declare dso_local i32 @ADM_VLAN_FILT_L(i32) #1

declare dso_local i32 @ADM_VLAN_FILT_MEMBER(i64) #1

declare dso_local i32 @ADM_VLAN_FILT_TAGGED(i64) #1

declare dso_local i32 @ADM_VLAN_FILT_VID(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
