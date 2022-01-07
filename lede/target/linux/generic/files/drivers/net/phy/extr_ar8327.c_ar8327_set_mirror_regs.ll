; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_ar8327.c_ar8327_set_mirror_regs.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_ar8327.c_ar8327_set_mirror_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar8xxx_priv = type { i32, i32, i64, i64 }

@AR8327_REG_FWD_CTRL0 = common dso_local global i32 0, align 4
@AR8327_FWD_CTRL0_MIRROR_PORT = common dso_local global i32 0, align 4
@AR8327_FWD_CTRL0_MIRROR_PORT_S = common dso_local global i32 0, align 4
@AR8327_NUM_PORTS = common dso_local global i32 0, align 4
@AR8327_PORT_LOOKUP_ING_MIRROR_EN = common dso_local global i32 0, align 4
@AR8327_PORT_HOL_CTRL1_EG_MIRROR_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar8xxx_priv*)* @ar8327_set_mirror_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar8327_set_mirror_regs(%struct.ar8xxx_priv* %0) #0 {
  %2 = alloca %struct.ar8xxx_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.ar8xxx_priv* %0, %struct.ar8xxx_priv** %2, align 8
  %4 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %2, align 8
  %5 = load i32, i32* @AR8327_REG_FWD_CTRL0, align 4
  %6 = load i32, i32* @AR8327_FWD_CTRL0_MIRROR_PORT, align 4
  %7 = load i32, i32* @AR8327_FWD_CTRL0_MIRROR_PORT_S, align 4
  %8 = shl i32 15, %7
  %9 = call i32 @ar8xxx_rmw(%struct.ar8xxx_priv* %4, i32 %5, i32 %6, i32 %8)
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %25, %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @AR8327_NUM_PORTS, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %10
  %15 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %2, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @AR8327_REG_PORT_LOOKUP(i32 %16)
  %18 = load i32, i32* @AR8327_PORT_LOOKUP_ING_MIRROR_EN, align 4
  %19 = call i32 @ar8xxx_reg_clear(%struct.ar8xxx_priv* %15, i32 %17, i32 %18)
  %20 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %2, align 8
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @AR8327_REG_PORT_HOL_CTRL1(i32 %21)
  %23 = load i32, i32* @AR8327_PORT_HOL_CTRL1_EG_MIRROR_EN, align 4
  %24 = call i32 @ar8xxx_reg_clear(%struct.ar8xxx_priv* %20, i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %14
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %10

28:                                               ; preds = %10
  %29 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %2, align 8
  %30 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @AR8327_NUM_PORTS, align 4
  %33 = icmp sge i32 %31, %32
  br i1 %33, label %48, label %34

34:                                               ; preds = %28
  %35 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %2, align 8
  %36 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @AR8327_NUM_PORTS, align 4
  %39 = icmp sge i32 %37, %38
  br i1 %39, label %48, label %40

40:                                               ; preds = %34
  %41 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %2, align 8
  %42 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %2, align 8
  %45 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %43, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %40, %34, %28
  br label %84

49:                                               ; preds = %40
  %50 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %2, align 8
  %51 = load i32, i32* @AR8327_REG_FWD_CTRL0, align 4
  %52 = load i32, i32* @AR8327_FWD_CTRL0_MIRROR_PORT, align 4
  %53 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %2, align 8
  %54 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @AR8327_FWD_CTRL0_MIRROR_PORT_S, align 4
  %57 = shl i32 %55, %56
  %58 = call i32 @ar8xxx_rmw(%struct.ar8xxx_priv* %50, i32 %51, i32 %52, i32 %57)
  %59 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %2, align 8
  %60 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %49
  %64 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %2, align 8
  %65 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %2, align 8
  %66 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @AR8327_REG_PORT_LOOKUP(i32 %67)
  %69 = load i32, i32* @AR8327_PORT_LOOKUP_ING_MIRROR_EN, align 4
  %70 = call i32 @ar8xxx_reg_set(%struct.ar8xxx_priv* %64, i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %63, %49
  %72 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %2, align 8
  %73 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %71
  %77 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %2, align 8
  %78 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %2, align 8
  %79 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @AR8327_REG_PORT_HOL_CTRL1(i32 %80)
  %82 = load i32, i32* @AR8327_PORT_HOL_CTRL1_EG_MIRROR_EN, align 4
  %83 = call i32 @ar8xxx_reg_set(%struct.ar8xxx_priv* %77, i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %48, %76, %71
  ret void
}

declare dso_local i32 @ar8xxx_rmw(%struct.ar8xxx_priv*, i32, i32, i32) #1

declare dso_local i32 @ar8xxx_reg_clear(%struct.ar8xxx_priv*, i32, i32) #1

declare dso_local i32 @AR8327_REG_PORT_LOOKUP(i32) #1

declare dso_local i32 @AR8327_REG_PORT_HOL_CTRL1(i32) #1

declare dso_local i32 @ar8xxx_reg_set(%struct.ar8xxx_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
