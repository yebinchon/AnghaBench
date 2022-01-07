; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_kcs_bmc_aspeed.c_aspeed_kcs_enable_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_kcs_bmc_aspeed.c_aspeed_kcs_enable_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kcs_bmc = type { i32 }
%struct.aspeed_kcs_bmc = type { i32 }

@LPC_HICR2 = common dso_local global i32 0, align 4
@LPC_HICR2_IBFIF1 = common dso_local global i32 0, align 4
@LPC_HICR0 = common dso_local global i32 0, align 4
@LPC_HICR0_LPC1E = common dso_local global i32 0, align 4
@LPC_HICR2_IBFIF2 = common dso_local global i32 0, align 4
@LPC_HICR0_LPC2E = common dso_local global i32 0, align 4
@LPC_HICR2_IBFIF3 = common dso_local global i32 0, align 4
@LPC_HICR0_LPC3E = common dso_local global i32 0, align 4
@LPC_HICR4 = common dso_local global i32 0, align 4
@LPC_HICR4_KCSENBL = common dso_local global i32 0, align 4
@LPC_HICRB = common dso_local global i32 0, align 4
@LPC_HICRB_IBFIF4 = common dso_local global i32 0, align 4
@LPC_HICRB_LPC4E = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kcs_bmc*, i32)* @aspeed_kcs_enable_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aspeed_kcs_enable_channel(%struct.kcs_bmc* %0, i32 %1) #0 {
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
  switch i32 %10, label %145 [
    i32 1, label %11
    i32 2, label %43
    i32 3, label %75
    i32 4, label %120
  ]

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %11
  %15 = load %struct.aspeed_kcs_bmc*, %struct.aspeed_kcs_bmc** %5, align 8
  %16 = getelementptr inbounds %struct.aspeed_kcs_bmc, %struct.aspeed_kcs_bmc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @LPC_HICR2, align 4
  %19 = load i32, i32* @LPC_HICR2_IBFIF1, align 4
  %20 = load i32, i32* @LPC_HICR2_IBFIF1, align 4
  %21 = call i32 @regmap_update_bits(i32 %17, i32 %18, i32 %19, i32 %20)
  %22 = load %struct.aspeed_kcs_bmc*, %struct.aspeed_kcs_bmc** %5, align 8
  %23 = getelementptr inbounds %struct.aspeed_kcs_bmc, %struct.aspeed_kcs_bmc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @LPC_HICR0, align 4
  %26 = load i32, i32* @LPC_HICR0_LPC1E, align 4
  %27 = load i32, i32* @LPC_HICR0_LPC1E, align 4
  %28 = call i32 @regmap_update_bits(i32 %24, i32 %25, i32 %26, i32 %27)
  br label %42

29:                                               ; preds = %11
  %30 = load %struct.aspeed_kcs_bmc*, %struct.aspeed_kcs_bmc** %5, align 8
  %31 = getelementptr inbounds %struct.aspeed_kcs_bmc, %struct.aspeed_kcs_bmc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @LPC_HICR0, align 4
  %34 = load i32, i32* @LPC_HICR0_LPC1E, align 4
  %35 = call i32 @regmap_update_bits(i32 %32, i32 %33, i32 %34, i32 0)
  %36 = load %struct.aspeed_kcs_bmc*, %struct.aspeed_kcs_bmc** %5, align 8
  %37 = getelementptr inbounds %struct.aspeed_kcs_bmc, %struct.aspeed_kcs_bmc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @LPC_HICR2, align 4
  %40 = load i32, i32* @LPC_HICR2_IBFIF1, align 4
  %41 = call i32 @regmap_update_bits(i32 %38, i32 %39, i32 %40, i32 0)
  br label %42

42:                                               ; preds = %29, %14
  br label %146

43:                                               ; preds = %2
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %43
  %47 = load %struct.aspeed_kcs_bmc*, %struct.aspeed_kcs_bmc** %5, align 8
  %48 = getelementptr inbounds %struct.aspeed_kcs_bmc, %struct.aspeed_kcs_bmc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @LPC_HICR2, align 4
  %51 = load i32, i32* @LPC_HICR2_IBFIF2, align 4
  %52 = load i32, i32* @LPC_HICR2_IBFIF2, align 4
  %53 = call i32 @regmap_update_bits(i32 %49, i32 %50, i32 %51, i32 %52)
  %54 = load %struct.aspeed_kcs_bmc*, %struct.aspeed_kcs_bmc** %5, align 8
  %55 = getelementptr inbounds %struct.aspeed_kcs_bmc, %struct.aspeed_kcs_bmc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @LPC_HICR0, align 4
  %58 = load i32, i32* @LPC_HICR0_LPC2E, align 4
  %59 = load i32, i32* @LPC_HICR0_LPC2E, align 4
  %60 = call i32 @regmap_update_bits(i32 %56, i32 %57, i32 %58, i32 %59)
  br label %74

61:                                               ; preds = %43
  %62 = load %struct.aspeed_kcs_bmc*, %struct.aspeed_kcs_bmc** %5, align 8
  %63 = getelementptr inbounds %struct.aspeed_kcs_bmc, %struct.aspeed_kcs_bmc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @LPC_HICR0, align 4
  %66 = load i32, i32* @LPC_HICR0_LPC2E, align 4
  %67 = call i32 @regmap_update_bits(i32 %64, i32 %65, i32 %66, i32 0)
  %68 = load %struct.aspeed_kcs_bmc*, %struct.aspeed_kcs_bmc** %5, align 8
  %69 = getelementptr inbounds %struct.aspeed_kcs_bmc, %struct.aspeed_kcs_bmc* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @LPC_HICR2, align 4
  %72 = load i32, i32* @LPC_HICR2_IBFIF2, align 4
  %73 = call i32 @regmap_update_bits(i32 %70, i32 %71, i32 %72, i32 0)
  br label %74

74:                                               ; preds = %61, %46
  br label %146

75:                                               ; preds = %2
  %76 = load i32, i32* %4, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %100

78:                                               ; preds = %75
  %79 = load %struct.aspeed_kcs_bmc*, %struct.aspeed_kcs_bmc** %5, align 8
  %80 = getelementptr inbounds %struct.aspeed_kcs_bmc, %struct.aspeed_kcs_bmc* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @LPC_HICR2, align 4
  %83 = load i32, i32* @LPC_HICR2_IBFIF3, align 4
  %84 = load i32, i32* @LPC_HICR2_IBFIF3, align 4
  %85 = call i32 @regmap_update_bits(i32 %81, i32 %82, i32 %83, i32 %84)
  %86 = load %struct.aspeed_kcs_bmc*, %struct.aspeed_kcs_bmc** %5, align 8
  %87 = getelementptr inbounds %struct.aspeed_kcs_bmc, %struct.aspeed_kcs_bmc* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @LPC_HICR0, align 4
  %90 = load i32, i32* @LPC_HICR0_LPC3E, align 4
  %91 = load i32, i32* @LPC_HICR0_LPC3E, align 4
  %92 = call i32 @regmap_update_bits(i32 %88, i32 %89, i32 %90, i32 %91)
  %93 = load %struct.aspeed_kcs_bmc*, %struct.aspeed_kcs_bmc** %5, align 8
  %94 = getelementptr inbounds %struct.aspeed_kcs_bmc, %struct.aspeed_kcs_bmc* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @LPC_HICR4, align 4
  %97 = load i32, i32* @LPC_HICR4_KCSENBL, align 4
  %98 = load i32, i32* @LPC_HICR4_KCSENBL, align 4
  %99 = call i32 @regmap_update_bits(i32 %95, i32 %96, i32 %97, i32 %98)
  br label %119

100:                                              ; preds = %75
  %101 = load %struct.aspeed_kcs_bmc*, %struct.aspeed_kcs_bmc** %5, align 8
  %102 = getelementptr inbounds %struct.aspeed_kcs_bmc, %struct.aspeed_kcs_bmc* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @LPC_HICR0, align 4
  %105 = load i32, i32* @LPC_HICR0_LPC3E, align 4
  %106 = call i32 @regmap_update_bits(i32 %103, i32 %104, i32 %105, i32 0)
  %107 = load %struct.aspeed_kcs_bmc*, %struct.aspeed_kcs_bmc** %5, align 8
  %108 = getelementptr inbounds %struct.aspeed_kcs_bmc, %struct.aspeed_kcs_bmc* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @LPC_HICR4, align 4
  %111 = load i32, i32* @LPC_HICR4_KCSENBL, align 4
  %112 = call i32 @regmap_update_bits(i32 %109, i32 %110, i32 %111, i32 0)
  %113 = load %struct.aspeed_kcs_bmc*, %struct.aspeed_kcs_bmc** %5, align 8
  %114 = getelementptr inbounds %struct.aspeed_kcs_bmc, %struct.aspeed_kcs_bmc* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @LPC_HICR2, align 4
  %117 = load i32, i32* @LPC_HICR2_IBFIF3, align 4
  %118 = call i32 @regmap_update_bits(i32 %115, i32 %116, i32 %117, i32 0)
  br label %119

119:                                              ; preds = %100, %78
  br label %146

120:                                              ; preds = %2
  %121 = load i32, i32* %4, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %135

123:                                              ; preds = %120
  %124 = load %struct.aspeed_kcs_bmc*, %struct.aspeed_kcs_bmc** %5, align 8
  %125 = getelementptr inbounds %struct.aspeed_kcs_bmc, %struct.aspeed_kcs_bmc* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @LPC_HICRB, align 4
  %128 = load i32, i32* @LPC_HICRB_IBFIF4, align 4
  %129 = load i32, i32* @LPC_HICRB_LPC4E, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* @LPC_HICRB_IBFIF4, align 4
  %132 = load i32, i32* @LPC_HICRB_LPC4E, align 4
  %133 = or i32 %131, %132
  %134 = call i32 @regmap_update_bits(i32 %126, i32 %127, i32 %130, i32 %133)
  br label %144

135:                                              ; preds = %120
  %136 = load %struct.aspeed_kcs_bmc*, %struct.aspeed_kcs_bmc** %5, align 8
  %137 = getelementptr inbounds %struct.aspeed_kcs_bmc, %struct.aspeed_kcs_bmc* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @LPC_HICRB, align 4
  %140 = load i32, i32* @LPC_HICRB_IBFIF4, align 4
  %141 = load i32, i32* @LPC_HICRB_LPC4E, align 4
  %142 = or i32 %140, %141
  %143 = call i32 @regmap_update_bits(i32 %138, i32 %139, i32 %142, i32 0)
  br label %144

144:                                              ; preds = %135, %123
  br label %146

145:                                              ; preds = %2
  br label %146

146:                                              ; preds = %145, %144, %119, %74, %42
  ret void
}

declare dso_local %struct.aspeed_kcs_bmc* @kcs_bmc_priv(%struct.kcs_bmc*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
