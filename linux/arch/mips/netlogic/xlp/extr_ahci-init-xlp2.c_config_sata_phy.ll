; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/netlogic/xlp/extr_ahci-init-xlp2.c_config_sata_phy.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/netlogic/xlp/extr_ahci-init-xlp2.c_config_sata_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RXCDRCALFOSC0 = common dso_local global i32 0, align 4
@CALDUTY = common dso_local global i32 0, align 4
@sata_phy_config1 = common dso_local global i32* null, align 8
@RXDPIF = common dso_local global i32 0, align 4
@PPMDRIFTMAX_HI = common dso_local global i32 0, align 4
@sata_phy_config2 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @config_sata_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @config_sata_phy(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %80, %1
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 2
  br i1 %9, label %10, label %83

10:                                               ; preds = %7
  store i32 0, i32* %4, align 4
  %11 = load i32, i32* @RXCDRCALFOSC0, align 4
  store i32 %11, i32* %5, align 4
  br label %12

12:                                               ; preds = %26, %10
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @CALDUTY, align 4
  %15 = icmp sle i32 %13, %14
  br i1 %15, label %16, label %31

16:                                               ; preds = %12
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32*, i32** @sata_phy_config1, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @write_phy_reg(i32 %17, i32 %18, i32 %19, i32 %24)
  br label %26

26:                                               ; preds = %16
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  br label %12

31:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  %32 = load i32, i32* @RXDPIF, align 4
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %47, %31
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @PPMDRIFTMAX_HI, align 4
  %36 = icmp sle i32 %34, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %33
  %38 = load i32, i32* %2, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %3, align 4
  %41 = load i32*, i32** @sata_phy_config2, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @write_phy_reg(i32 %38, i32 %39, i32 %40, i32 %45)
  br label %47

47:                                               ; preds = %37
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %33

52:                                               ; preds = %33
  %53 = load i32, i32* %2, align 4
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @write_phy_reg(i32 %53, i32 32783, i32 %54, i32 31)
  %56 = load i32, i32* %2, align 4
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @read_phy_reg(i32 %56, i32 41, i32 %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %2, align 4
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* %6, align 4
  %62 = or i32 %61, 14
  %63 = call i32 @write_phy_reg(i32 %59, i32 41, i32 %60, i32 %62)
  %64 = load i32, i32* %2, align 4
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @read_phy_reg(i32 %64, i32 86, i32 %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %2, align 4
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* %6, align 4
  %70 = and i32 %69, -9
  %71 = call i32 @write_phy_reg(i32 %67, i32 86, i32 %68, i32 %70)
  %72 = load i32, i32* %2, align 4
  %73 = load i32, i32* %3, align 4
  %74 = call i32 @read_phy_reg(i32 %72, i32 24, i32 %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %2, align 4
  %76 = load i32, i32* %3, align 4
  %77 = load i32, i32* %6, align 4
  %78 = and i32 %77, -8
  %79 = call i32 @write_phy_reg(i32 %75, i32 24, i32 %76, i32 %78)
  br label %80

80:                                               ; preds = %52
  %81 = load i32, i32* %3, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %3, align 4
  br label %7

83:                                               ; preds = %7
  ret void
}

declare dso_local i32 @write_phy_reg(i32, i32, i32, i32) #1

declare dso_local i32 @read_phy_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
