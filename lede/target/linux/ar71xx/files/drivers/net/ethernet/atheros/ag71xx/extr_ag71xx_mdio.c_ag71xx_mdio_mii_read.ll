; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_mdio.c_ag71xx_mdio_mii_read.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_mdio.c_ag71xx_mdio_mii_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ag71xx_mdio = type { i32 }

@AG71XX_REG_MII_CMD = common dso_local global i32 0, align 4
@MII_CMD_WRITE = common dso_local global i32 0, align 4
@AG71XX_REG_MII_ADDR = common dso_local global i32 0, align 4
@MII_ADDR_SHIFT = common dso_local global i32 0, align 4
@MII_CMD_READ = common dso_local global i32 0, align 4
@AG71XX_REG_MII_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"mii_read: addr=%04x, reg=%04x, value=%04x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ag71xx_mdio_mii_read(%struct.ag71xx_mdio* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ag71xx_mdio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ag71xx_mdio* %0, %struct.ag71xx_mdio** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.ag71xx_mdio*, %struct.ag71xx_mdio** %5, align 8
  %11 = call i32 @ag71xx_mdio_wait_busy(%struct.ag71xx_mdio* %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 65535, i32* %4, align 4
  br label %53

15:                                               ; preds = %3
  %16 = load %struct.ag71xx_mdio*, %struct.ag71xx_mdio** %5, align 8
  %17 = load i32, i32* @AG71XX_REG_MII_CMD, align 4
  %18 = load i32, i32* @MII_CMD_WRITE, align 4
  %19 = call i32 @ag71xx_mdio_wr(%struct.ag71xx_mdio* %16, i32 %17, i32 %18)
  %20 = load %struct.ag71xx_mdio*, %struct.ag71xx_mdio** %5, align 8
  %21 = load i32, i32* @AG71XX_REG_MII_ADDR, align 4
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, 255
  %24 = load i32, i32* @MII_ADDR_SHIFT, align 4
  %25 = shl i32 %23, %24
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %26, 255
  %28 = or i32 %25, %27
  %29 = call i32 @ag71xx_mdio_wr(%struct.ag71xx_mdio* %20, i32 %21, i32 %28)
  %30 = load %struct.ag71xx_mdio*, %struct.ag71xx_mdio** %5, align 8
  %31 = load i32, i32* @AG71XX_REG_MII_CMD, align 4
  %32 = load i32, i32* @MII_CMD_READ, align 4
  %33 = call i32 @ag71xx_mdio_wr(%struct.ag71xx_mdio* %30, i32 %31, i32 %32)
  %34 = load %struct.ag71xx_mdio*, %struct.ag71xx_mdio** %5, align 8
  %35 = call i32 @ag71xx_mdio_wait_busy(%struct.ag71xx_mdio* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %15
  store i32 65535, i32* %4, align 4
  br label %53

39:                                               ; preds = %15
  %40 = load %struct.ag71xx_mdio*, %struct.ag71xx_mdio** %5, align 8
  %41 = load i32, i32* @AG71XX_REG_MII_STATUS, align 4
  %42 = call i32 @ag71xx_mdio_rr(%struct.ag71xx_mdio* %40, i32 %41)
  %43 = and i32 %42, 65535
  store i32 %43, i32* %9, align 4
  %44 = load %struct.ag71xx_mdio*, %struct.ag71xx_mdio** %5, align 8
  %45 = load i32, i32* @AG71XX_REG_MII_CMD, align 4
  %46 = load i32, i32* @MII_CMD_WRITE, align 4
  %47 = call i32 @ag71xx_mdio_wr(%struct.ag71xx_mdio* %44, i32 %45, i32 %46)
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @DBG(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %49, i32 %50)
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %39, %38, %14
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @ag71xx_mdio_wait_busy(%struct.ag71xx_mdio*) #1

declare dso_local i32 @ag71xx_mdio_wr(%struct.ag71xx_mdio*, i32, i32) #1

declare dso_local i32 @ag71xx_mdio_rr(%struct.ag71xx_mdio*, i32) #1

declare dso_local i32 @DBG(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
