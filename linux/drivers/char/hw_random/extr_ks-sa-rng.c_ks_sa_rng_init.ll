; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_ks-sa-rng.c_ks_sa_rng_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_ks-sa-rng.c_ks_sa_rng_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwrng = type { i64 }
%struct.device = type { i32 }
%struct.ks_sa_rng = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@SA_CMD_STATUS_OFS = common dso_local global i32 0, align 4
@SA_CMD_STATUS_REG_TRNG_ENABLE = common dso_local global i32 0, align 4
@TRNG_DEF_STARTUP_CYCLES = common dso_local global i32 0, align 4
@TRNG_CNTL_REG_STARTUP_CYCLES_SHIFT = common dso_local global i32 0, align 4
@TRNG_DEF_MIN_REFILL_CYCLES = common dso_local global i32 0, align 4
@TRNG_CFG_REG_MIN_REFILL_CYCLES_SHIFT = common dso_local global i32 0, align 4
@TRNG_DEF_MAX_REFILL_CYCLES = common dso_local global i32 0, align 4
@TRNG_CFG_REG_MAX_REFILL_CYCLES_SHIFT = common dso_local global i32 0, align 4
@TRNG_DEF_CLK_DIV_CYCLES = common dso_local global i32 0, align 4
@TRNG_CFG_REG_SAMPLE_DIV_SHIFT = common dso_local global i32 0, align 4
@TRNG_CNTL_REG_TRNG_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hwrng*)* @ks_sa_rng_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ks_sa_rng_init(%struct.hwrng* %0) #0 {
  %2 = alloca %struct.hwrng*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.ks_sa_rng*, align 8
  store %struct.hwrng* %0, %struct.hwrng** %2, align 8
  %6 = load %struct.hwrng*, %struct.hwrng** %2, align 8
  %7 = getelementptr inbounds %struct.hwrng, %struct.hwrng* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.device*
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.ks_sa_rng* @dev_get_drvdata(%struct.device* %10)
  store %struct.ks_sa_rng* %11, %struct.ks_sa_rng** %5, align 8
  %12 = load %struct.ks_sa_rng*, %struct.ks_sa_rng** %5, align 8
  %13 = getelementptr inbounds %struct.ks_sa_rng, %struct.ks_sa_rng* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @SA_CMD_STATUS_OFS, align 4
  %16 = load i32, i32* @SA_CMD_STATUS_REG_TRNG_ENABLE, align 4
  %17 = load i32, i32* @SA_CMD_STATUS_REG_TRNG_ENABLE, align 4
  %18 = call i32 @regmap_write_bits(i32 %14, i32 %15, i32 %16, i32 %17)
  %19 = load %struct.ks_sa_rng*, %struct.ks_sa_rng** %5, align 8
  %20 = getelementptr inbounds %struct.ks_sa_rng, %struct.ks_sa_rng* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i32 @writel(i32 0, i32* %22)
  %24 = load i32, i32* @TRNG_DEF_STARTUP_CYCLES, align 4
  %25 = load i32, i32* @TRNG_CNTL_REG_STARTUP_CYCLES_SHIFT, align 4
  %26 = shl i32 %24, %25
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.ks_sa_rng*, %struct.ks_sa_rng** %5, align 8
  %29 = getelementptr inbounds %struct.ks_sa_rng, %struct.ks_sa_rng* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i32 @writel(i32 %27, i32* %31)
  %33 = load i32, i32* @TRNG_DEF_MIN_REFILL_CYCLES, align 4
  %34 = load i32, i32* @TRNG_CFG_REG_MIN_REFILL_CYCLES_SHIFT, align 4
  %35 = shl i32 %33, %34
  %36 = load i32, i32* @TRNG_DEF_MAX_REFILL_CYCLES, align 4
  %37 = load i32, i32* @TRNG_CFG_REG_MAX_REFILL_CYCLES_SHIFT, align 4
  %38 = shl i32 %36, %37
  %39 = or i32 %35, %38
  %40 = load i32, i32* @TRNG_DEF_CLK_DIV_CYCLES, align 4
  %41 = load i32, i32* @TRNG_CFG_REG_SAMPLE_DIV_SHIFT, align 4
  %42 = shl i32 %40, %41
  %43 = or i32 %39, %42
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* %3, align 4
  %45 = load %struct.ks_sa_rng*, %struct.ks_sa_rng** %5, align 8
  %46 = getelementptr inbounds %struct.ks_sa_rng, %struct.ks_sa_rng* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  %49 = call i32 @writel(i32 %44, i32* %48)
  %50 = load %struct.ks_sa_rng*, %struct.ks_sa_rng** %5, align 8
  %51 = getelementptr inbounds %struct.ks_sa_rng, %struct.ks_sa_rng* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = call i32 @writel(i32 0, i32* %53)
  %55 = load %struct.ks_sa_rng*, %struct.ks_sa_rng** %5, align 8
  %56 = getelementptr inbounds %struct.ks_sa_rng, %struct.ks_sa_rng* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = call i32 @readl(i32* %58)
  store i32 %59, i32* %3, align 4
  %60 = load i32, i32* @TRNG_CNTL_REG_TRNG_ENABLE, align 4
  %61 = load i32, i32* %3, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %3, align 4
  %63 = load i32, i32* %3, align 4
  %64 = load %struct.ks_sa_rng*, %struct.ks_sa_rng** %5, align 8
  %65 = getelementptr inbounds %struct.ks_sa_rng, %struct.ks_sa_rng* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = call i32 @writel(i32 %63, i32* %67)
  ret i32 0
}

declare dso_local %struct.ks_sa_rng* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @regmap_write_bits(i32, i32, i32, i32) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @readl(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
