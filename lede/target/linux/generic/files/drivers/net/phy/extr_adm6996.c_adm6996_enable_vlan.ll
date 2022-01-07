; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_adm6996.c_adm6996_enable_vlan.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_adm6996.c_adm6996_enable_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adm6996_priv = type { i32 }

@ADM_OTBE_P2_PVID = common dso_local global i32 0, align 4
@ADM_OTBE_MASK = common dso_local global i32 0, align 4
@ADM_IFNTE = common dso_local global i32 0, align 4
@ADM_IFNTE_MASK = common dso_local global i32 0, align 4
@ADM_VID_CHECK = common dso_local global i32 0, align 4
@ADM_VID_CHECK_MASK = common dso_local global i32 0, align 4
@ADM_SYSC0 = common dso_local global i32 0, align 4
@ADM_NTTE = common dso_local global i32 0, align 4
@ADM_RVID1 = common dso_local global i32 0, align 4
@ADM_SYSC3 = common dso_local global i32 0, align 4
@ADM_TBV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adm6996_priv*)* @adm6996_enable_vlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adm6996_enable_vlan(%struct.adm6996_priv* %0) #0 {
  %2 = alloca %struct.adm6996_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.adm6996_priv* %0, %struct.adm6996_priv** %2, align 8
  %4 = load %struct.adm6996_priv*, %struct.adm6996_priv** %2, align 8
  %5 = load i32, i32* @ADM_OTBE_P2_PVID, align 4
  %6 = call i32 @r16(%struct.adm6996_priv* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @ADM_OTBE_MASK, align 4
  %8 = xor i32 %7, -1
  %9 = load i32, i32* %3, align 4
  %10 = and i32 %9, %8
  store i32 %10, i32* %3, align 4
  %11 = load %struct.adm6996_priv*, %struct.adm6996_priv** %2, align 8
  %12 = load i32, i32* @ADM_OTBE_P2_PVID, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @w16(%struct.adm6996_priv* %11, i32 %12, i32 %13)
  %15 = load %struct.adm6996_priv*, %struct.adm6996_priv** %2, align 8
  %16 = load i32, i32* @ADM_IFNTE, align 4
  %17 = call i32 @r16(%struct.adm6996_priv* %15, i32 %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* @ADM_IFNTE_MASK, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %3, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %3, align 4
  %22 = load %struct.adm6996_priv*, %struct.adm6996_priv** %2, align 8
  %23 = load i32, i32* @ADM_IFNTE, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @w16(%struct.adm6996_priv* %22, i32 %23, i32 %24)
  %26 = load %struct.adm6996_priv*, %struct.adm6996_priv** %2, align 8
  %27 = load i32, i32* @ADM_VID_CHECK, align 4
  %28 = call i32 @r16(%struct.adm6996_priv* %26, i32 %27)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* @ADM_VID_CHECK_MASK, align 4
  %30 = load i32, i32* %3, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %3, align 4
  %32 = load %struct.adm6996_priv*, %struct.adm6996_priv** %2, align 8
  %33 = load i32, i32* @ADM_VID_CHECK, align 4
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @w16(%struct.adm6996_priv* %32, i32 %33, i32 %34)
  %36 = load %struct.adm6996_priv*, %struct.adm6996_priv** %2, align 8
  %37 = load i32, i32* @ADM_SYSC0, align 4
  %38 = call i32 @r16(%struct.adm6996_priv* %36, i32 %37)
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* @ADM_NTTE, align 4
  %40 = load i32, i32* %3, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* @ADM_RVID1, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %3, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %3, align 4
  %46 = load %struct.adm6996_priv*, %struct.adm6996_priv** %2, align 8
  %47 = load i32, i32* @ADM_SYSC0, align 4
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @w16(%struct.adm6996_priv* %46, i32 %47, i32 %48)
  %50 = load %struct.adm6996_priv*, %struct.adm6996_priv** %2, align 8
  %51 = load i32, i32* @ADM_SYSC3, align 4
  %52 = call i32 @r16(%struct.adm6996_priv* %50, i32 %51)
  store i32 %52, i32* %3, align 4
  %53 = load i32, i32* @ADM_TBV, align 4
  %54 = load i32, i32* %3, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %3, align 4
  %56 = load %struct.adm6996_priv*, %struct.adm6996_priv** %2, align 8
  %57 = load i32, i32* @ADM_SYSC3, align 4
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @w16(%struct.adm6996_priv* %56, i32 %57, i32 %58)
  ret void
}

declare dso_local i32 @r16(%struct.adm6996_priv*, i32) #1

declare dso_local i32 @w16(%struct.adm6996_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
