; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_ar8327.c_ar8327_vtu_load_vlan.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_ar8327.c_ar8327_vtu_load_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar8xxx_priv = type { i64, i64, i64*, i64* }

@AR8327_VTU_FUNC1_OP_LOAD = common dso_local global i64 0, align 8
@AR8327_VTU_FUNC1_VID_S = common dso_local global i64 0, align 8
@AR8327_VTU_FUNC0_VALID = common dso_local global i64 0, align 8
@AR8327_VTU_FUNC0_IVL = common dso_local global i64 0, align 8
@AR8327_NUM_PORTS = common dso_local global i32 0, align 4
@AR8327_VTU_FUNC0_EG_MODE_NOT = common dso_local global i64 0, align 8
@AR8327_VTU_FUNC0_EG_MODE_KEEP = common dso_local global i64 0, align 8
@AR8327_VTU_FUNC0_EG_MODE_TAG = common dso_local global i64 0, align 8
@AR8327_VTU_FUNC0_EG_MODE_UNTAG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar8xxx_priv*, i64, i64)* @ar8327_vtu_load_vlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar8327_vtu_load_vlan(%struct.ar8xxx_priv* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.ar8xxx_priv*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.ar8xxx_priv* %0, %struct.ar8xxx_priv** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i64, i64* @AR8327_VTU_FUNC1_OP_LOAD, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @AR8327_VTU_FUNC1_VID_S, align 8
  %14 = shl i64 %12, %13
  %15 = or i64 %11, %14
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* @AR8327_VTU_FUNC0_VALID, align 8
  %17 = load i64, i64* @AR8327_VTU_FUNC0_IVL, align 8
  %18 = or i64 %16, %17
  store i64 %18, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %74, %3
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @AR8327_NUM_PORTS, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %77

23:                                               ; preds = %19
  %24 = load i64, i64* %6, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i64 @BIT(i32 %25)
  %27 = and i64 %24, %26
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i64, i64* @AR8327_VTU_FUNC0_EG_MODE_NOT, align 8
  store i64 %30, i64* %10, align 8
  br label %67

31:                                               ; preds = %23
  %32 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %33 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i64, i64* @AR8327_VTU_FUNC0_EG_MODE_KEEP, align 8
  store i64 %37, i64* %10, align 8
  br label %66

38:                                               ; preds = %31
  %39 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %40 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i64 @BIT(i32 %42)
  %44 = and i64 %41, %43
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %61, label %46

46:                                               ; preds = %38
  %47 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %48 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %47, i32 0, i32 2
  %49 = load i64*, i64** %48, align 8
  %50 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %51 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %50, i32 0, i32 3
  %52 = load i64*, i64** %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds i64, i64* %49, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %5, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %46, %38
  %62 = load i64, i64* @AR8327_VTU_FUNC0_EG_MODE_TAG, align 8
  store i64 %62, i64* %10, align 8
  br label %65

63:                                               ; preds = %46
  %64 = load i64, i64* @AR8327_VTU_FUNC0_EG_MODE_UNTAG, align 8
  store i64 %64, i64* %10, align 8
  br label %65

65:                                               ; preds = %63, %61
  br label %66

66:                                               ; preds = %65, %36
  br label %67

67:                                               ; preds = %66, %29
  %68 = load i64, i64* %10, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call i64 @AR8327_VTU_FUNC0_EG_MODE_S(i32 %69)
  %71 = shl i64 %68, %70
  %72 = load i64, i64* %8, align 8
  %73 = or i64 %72, %71
  store i64 %73, i64* %8, align 8
  br label %74

74:                                               ; preds = %67
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %9, align 4
  br label %19

77:                                               ; preds = %19
  %78 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %79 = load i64, i64* %7, align 8
  %80 = load i64, i64* %8, align 8
  %81 = call i32 @ar8327_vtu_op(%struct.ar8xxx_priv* %78, i64 %79, i64 %80)
  ret void
}

declare dso_local i64 @BIT(i32) #1

declare dso_local i64 @AR8327_VTU_FUNC0_EG_MODE_S(i32) #1

declare dso_local i32 @ar8327_vtu_op(%struct.ar8xxx_priv*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
