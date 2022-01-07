; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_soc_rt2880.c_rt2880_fwd_config.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_soc_rt2880.c_rt2880_fwd_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fe_priv = type { i32 }

@FE_PSE_FQFC_CFG_INIT = common dso_local global i32 0, align 4
@FE_PSE_FQ_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fe_priv*)* @rt2880_fwd_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2880_fwd_config(%struct.fe_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fe_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.fe_priv* %0, %struct.fe_priv** %3, align 8
  %5 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %6 = call i32 @fe_set_clock_cycle(%struct.fe_priv* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %20

11:                                               ; preds = %1
  %12 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %13 = call i32 @fe_fwd_config(%struct.fe_priv* %12)
  %14 = load i32, i32* @FE_PSE_FQFC_CFG_INIT, align 4
  %15 = load i32, i32* @FE_PSE_FQ_CFG, align 4
  %16 = call i32 @fe_w32(i32 %14, i32 %15)
  %17 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %18 = call i32 @fe_csum_config(%struct.fe_priv* %17)
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %11, %9
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i32 @fe_set_clock_cycle(%struct.fe_priv*) #1

declare dso_local i32 @fe_fwd_config(%struct.fe_priv*) #1

declare dso_local i32 @fe_w32(i32, i32) #1

declare dso_local i32 @fe_csum_config(%struct.fe_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
