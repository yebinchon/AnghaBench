; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_kcs_bmc_aspeed.c_aspeed_kcs_set_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_kcs_bmc_aspeed.c_aspeed_kcs_set_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kcs_bmc = type { i32 }
%struct.aspeed_kcs_bmc = type { i32 }

@LPC_HICR4 = common dso_local global i32 0, align 4
@LPC_HICR4_LADR12AS = common dso_local global i32 0, align 4
@LPC_LADR12H = common dso_local global i32 0, align 4
@LPC_LADR12L = common dso_local global i32 0, align 4
@LPC_LADR3H = common dso_local global i32 0, align 4
@LPC_LADR3L = common dso_local global i32 0, align 4
@LPC_LADR4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kcs_bmc*, i32)* @aspeed_kcs_set_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aspeed_kcs_set_address(%struct.kcs_bmc* %0, i32 %1) #0 {
  %3 = alloca %struct.kcs_bmc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.aspeed_kcs_bmc*, align 8
  store %struct.kcs_bmc* %0, %struct.kcs_bmc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.kcs_bmc*, %struct.kcs_bmc** %3, align 8
  %7 = call %struct.aspeed_kcs_bmc* @kcs_bmc_priv(%struct.kcs_bmc* %6)
  store %struct.aspeed_kcs_bmc* %7, %struct.aspeed_kcs_bmc** %5, align 8
  %8 = load %struct.kcs_bmc*, %struct.kcs_bmc** %3, align 8
  %9 = getelementptr inbounds %struct.kcs_bmc, %struct.kcs_bmc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %80 [
    i32 1, label %11
    i32 2, label %32
    i32 3, label %54
    i32 4, label %69
  ]

11:                                               ; preds = %2
  %12 = load %struct.aspeed_kcs_bmc*, %struct.aspeed_kcs_bmc** %5, align 8
  %13 = getelementptr inbounds %struct.aspeed_kcs_bmc, %struct.aspeed_kcs_bmc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @LPC_HICR4, align 4
  %16 = load i32, i32* @LPC_HICR4_LADR12AS, align 4
  %17 = call i32 @regmap_update_bits(i32 %14, i32 %15, i32 %16, i32 0)
  %18 = load %struct.aspeed_kcs_bmc*, %struct.aspeed_kcs_bmc** %5, align 8
  %19 = getelementptr inbounds %struct.aspeed_kcs_bmc, %struct.aspeed_kcs_bmc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @LPC_LADR12H, align 4
  %22 = load i32, i32* %4, align 4
  %23 = ashr i32 %22, 8
  %24 = call i32 @regmap_write(i32 %20, i32 %21, i32 %23)
  %25 = load %struct.aspeed_kcs_bmc*, %struct.aspeed_kcs_bmc** %5, align 8
  %26 = getelementptr inbounds %struct.aspeed_kcs_bmc, %struct.aspeed_kcs_bmc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @LPC_LADR12L, align 4
  %29 = load i32, i32* %4, align 4
  %30 = and i32 %29, 255
  %31 = call i32 @regmap_write(i32 %27, i32 %28, i32 %30)
  br label %81

32:                                               ; preds = %2
  %33 = load %struct.aspeed_kcs_bmc*, %struct.aspeed_kcs_bmc** %5, align 8
  %34 = getelementptr inbounds %struct.aspeed_kcs_bmc, %struct.aspeed_kcs_bmc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @LPC_HICR4, align 4
  %37 = load i32, i32* @LPC_HICR4_LADR12AS, align 4
  %38 = load i32, i32* @LPC_HICR4_LADR12AS, align 4
  %39 = call i32 @regmap_update_bits(i32 %35, i32 %36, i32 %37, i32 %38)
  %40 = load %struct.aspeed_kcs_bmc*, %struct.aspeed_kcs_bmc** %5, align 8
  %41 = getelementptr inbounds %struct.aspeed_kcs_bmc, %struct.aspeed_kcs_bmc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @LPC_LADR12H, align 4
  %44 = load i32, i32* %4, align 4
  %45 = ashr i32 %44, 8
  %46 = call i32 @regmap_write(i32 %42, i32 %43, i32 %45)
  %47 = load %struct.aspeed_kcs_bmc*, %struct.aspeed_kcs_bmc** %5, align 8
  %48 = getelementptr inbounds %struct.aspeed_kcs_bmc, %struct.aspeed_kcs_bmc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @LPC_LADR12L, align 4
  %51 = load i32, i32* %4, align 4
  %52 = and i32 %51, 255
  %53 = call i32 @regmap_write(i32 %49, i32 %50, i32 %52)
  br label %81

54:                                               ; preds = %2
  %55 = load %struct.aspeed_kcs_bmc*, %struct.aspeed_kcs_bmc** %5, align 8
  %56 = getelementptr inbounds %struct.aspeed_kcs_bmc, %struct.aspeed_kcs_bmc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @LPC_LADR3H, align 4
  %59 = load i32, i32* %4, align 4
  %60 = ashr i32 %59, 8
  %61 = call i32 @regmap_write(i32 %57, i32 %58, i32 %60)
  %62 = load %struct.aspeed_kcs_bmc*, %struct.aspeed_kcs_bmc** %5, align 8
  %63 = getelementptr inbounds %struct.aspeed_kcs_bmc, %struct.aspeed_kcs_bmc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @LPC_LADR3L, align 4
  %66 = load i32, i32* %4, align 4
  %67 = and i32 %66, 255
  %68 = call i32 @regmap_write(i32 %64, i32 %65, i32 %67)
  br label %81

69:                                               ; preds = %2
  %70 = load %struct.aspeed_kcs_bmc*, %struct.aspeed_kcs_bmc** %5, align 8
  %71 = getelementptr inbounds %struct.aspeed_kcs_bmc, %struct.aspeed_kcs_bmc* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @LPC_LADR4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = add nsw i32 %74, 1
  %76 = shl i32 %75, 16
  %77 = load i32, i32* %4, align 4
  %78 = or i32 %76, %77
  %79 = call i32 @regmap_write(i32 %72, i32 %73, i32 %78)
  br label %81

80:                                               ; preds = %2
  br label %81

81:                                               ; preds = %80, %69, %54, %32, %11
  ret void
}

declare dso_local %struct.aspeed_kcs_bmc* @kcs_bmc_priv(%struct.kcs_bmc*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
