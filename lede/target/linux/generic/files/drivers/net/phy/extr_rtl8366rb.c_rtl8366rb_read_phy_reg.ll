; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8366rb.c_rtl8366rb_read_phy_reg.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8366rb.c_rtl8366rb_read_phy_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8366_smi = type { i32 }

@RTL8366RB_PHY_NO_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RTL8366RB_PHY_PAGE_MAX = common dso_local global i32 0, align 4
@RTL8366RB_PHY_ADDR_MAX = common dso_local global i32 0, align 4
@RTL8366RB_PHY_ACCESS_CTRL_REG = common dso_local global i32 0, align 4
@RTL8366RB_PHY_CTRL_READ = common dso_local global i32 0, align 4
@RTL8366RB_PHY_NO_OFFSET = common dso_local global i32 0, align 4
@RTL8366RB_PHY_PAGE_OFFSET = common dso_local global i32 0, align 4
@RTL8366RB_PHY_PAGE_MASK = common dso_local global i32 0, align 4
@RTL8366RB_PHY_REG_MASK = common dso_local global i32 0, align 4
@RTL8366RB_PHY_ACCESS_DATA_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8366_smi*, i32, i32, i32, i32*)* @rtl8366rb_read_phy_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8366rb_read_phy_reg(%struct.rtl8366_smi* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtl8366_smi*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.rtl8366_smi* %0, %struct.rtl8366_smi** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @RTL8366RB_PHY_NO_MAX, align 4
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %6, align 4
  br label %76

20:                                               ; preds = %5
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @RTL8366RB_PHY_PAGE_MAX, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %76

27:                                               ; preds = %20
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @RTL8366RB_PHY_ADDR_MAX, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %76

34:                                               ; preds = %27
  %35 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %7, align 8
  %36 = load i32, i32* @RTL8366RB_PHY_ACCESS_CTRL_REG, align 4
  %37 = load i32, i32* @RTL8366RB_PHY_CTRL_READ, align 4
  %38 = call i32 @rtl8366_smi_write_reg(%struct.rtl8366_smi* %35, i32 %36, i32 %37)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* %13, align 4
  store i32 %42, i32* %6, align 4
  br label %76

43:                                               ; preds = %34
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @RTL8366RB_PHY_NO_OFFSET, align 4
  %46 = add nsw i32 %44, %45
  %47 = shl i32 1, %46
  %48 = or i32 32768, %47
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @RTL8366RB_PHY_PAGE_OFFSET, align 4
  %51 = shl i32 %49, %50
  %52 = load i32, i32* @RTL8366RB_PHY_PAGE_MASK, align 4
  %53 = and i32 %51, %52
  %54 = or i32 %48, %53
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @RTL8366RB_PHY_REG_MASK, align 4
  %57 = and i32 %55, %56
  %58 = or i32 %54, %57
  store i32 %58, i32* %12, align 4
  %59 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %7, align 8
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @rtl8366_smi_write_reg(%struct.rtl8366_smi* %59, i32 %60, i32 0)
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %43
  %65 = load i32, i32* %13, align 4
  store i32 %65, i32* %6, align 4
  br label %76

66:                                               ; preds = %43
  %67 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %7, align 8
  %68 = load i32, i32* @RTL8366RB_PHY_ACCESS_DATA_REG, align 4
  %69 = load i32*, i32** %11, align 8
  %70 = call i32 @rtl8366_smi_read_reg(%struct.rtl8366_smi* %67, i32 %68, i32* %69)
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = load i32, i32* %13, align 4
  store i32 %74, i32* %6, align 4
  br label %76

75:                                               ; preds = %66
  store i32 0, i32* %6, align 4
  br label %76

76:                                               ; preds = %75, %73, %64, %41, %31, %24, %17
  %77 = load i32, i32* %6, align 4
  ret i32 %77
}

declare dso_local i32 @rtl8366_smi_write_reg(%struct.rtl8366_smi*, i32, i32) #1

declare dso_local i32 @rtl8366_smi_read_reg(%struct.rtl8366_smi*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
