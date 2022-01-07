; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8306.c_rtl_set_page.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8306.c_rtl_set_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl_priv = type { i32, i64, %struct.mii_bus* }
%struct.mii_bus = type { i32 (%struct.mii_bus*, i32, i32)*, i32 (%struct.mii_bus*, i32, i32, i32)* }

@RTL8306_NUM_PAGES = common dso_local global i32 0, align 4
@RTL8306_REG_PAGE = common dso_local global i32 0, align 4
@RTL8306_REG_PAGE_LO = common dso_local global i32 0, align 4
@RTL8306_REG_PAGE_HI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl_priv*, i32)* @rtl_set_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl_set_page(%struct.rtl_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mii_bus*, align 8
  %6 = alloca i32, align 4
  store %struct.rtl_priv* %0, %struct.rtl_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %8 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %7, i32 0, i32 2
  %9 = load %struct.mii_bus*, %struct.mii_bus** %8, align 8
  store %struct.mii_bus* %9, %struct.mii_bus** %5, align 8
  %10 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %11 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %63

15:                                               ; preds = %2
  %16 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %17 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %63

22:                                               ; preds = %15
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @RTL8306_NUM_PAGES, align 4
  %25 = icmp ugt i32 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %29 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %28, i32 0, i32 0
  %30 = load i32 (%struct.mii_bus*, i32, i32)*, i32 (%struct.mii_bus*, i32, i32)** %29, align 8
  %31 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %32 = load i32, i32* @RTL8306_REG_PAGE, align 4
  %33 = call i32 %30(%struct.mii_bus* %31, i32 0, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* @RTL8306_REG_PAGE_LO, align 4
  %35 = load i32, i32* @RTL8306_REG_PAGE_HI, align 4
  %36 = or i32 %34, %35
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %6, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %4, align 4
  %41 = and i32 %40, 1
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %22
  %44 = load i32, i32* @RTL8306_REG_PAGE_LO, align 4
  %45 = load i32, i32* %6, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %43, %22
  %48 = load i32, i32* %4, align 4
  %49 = and i32 %48, 2
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* @RTL8306_REG_PAGE_HI, align 4
  %53 = load i32, i32* %6, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %51, %47
  %56 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %57 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %56, i32 0, i32 1
  %58 = load i32 (%struct.mii_bus*, i32, i32, i32)*, i32 (%struct.mii_bus*, i32, i32, i32)** %57, align 8
  %59 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %60 = load i32, i32* @RTL8306_REG_PAGE, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 %58(%struct.mii_bus* %59, i32 0, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %55, %21, %14
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
