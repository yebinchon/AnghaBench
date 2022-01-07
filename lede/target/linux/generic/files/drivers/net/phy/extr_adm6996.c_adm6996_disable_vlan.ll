; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_adm6996.c_adm6996_disable_vlan.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_adm6996.c_adm6996_disable_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adm6996_priv = type { i32 }

@ADM_NUM_VLANS = common dso_local global i32 0, align 4
@ADM_VLAN_FILT_MEMBER_MASK = common dso_local global i32 0, align 4
@ADM_VLAN_FILT_VALID = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adm6996_priv*)* @adm6996_disable_vlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adm6996_disable_vlan(%struct.adm6996_priv* %0) #0 {
  %2 = alloca %struct.adm6996_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.adm6996_priv* %0, %struct.adm6996_priv** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %24, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @ADM_NUM_VLANS, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %27

9:                                                ; preds = %5
  %10 = load i32, i32* @ADM_VLAN_FILT_MEMBER_MASK, align 4
  store i32 %10, i32* %3, align 4
  %11 = load %struct.adm6996_priv*, %struct.adm6996_priv** %2, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @ADM_VLAN_FILT_L(i32 %12)
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @w16(%struct.adm6996_priv* %11, i32 %13, i32 %14)
  %16 = load i32, i32* @ADM_VLAN_FILT_VALID, align 4
  %17 = call i32 @ADM_VLAN_FILT_VID(i32 1)
  %18 = or i32 %16, %17
  store i32 %18, i32* %3, align 4
  %19 = load %struct.adm6996_priv*, %struct.adm6996_priv** %2, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @ADM_VLAN_FILT_H(i32 %20)
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @w16(%struct.adm6996_priv* %19, i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %9
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %5

27:                                               ; preds = %5
  %28 = load %struct.adm6996_priv*, %struct.adm6996_priv** %2, align 8
  %29 = load i32, i32* @ADM_OTBE_P2_PVID, align 4
  %30 = call i32 @r16(%struct.adm6996_priv* %28, i32 %29)
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* @ADM_OTBE_MASK, align 4
  %32 = load i32, i32* %3, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %3, align 4
  %34 = load %struct.adm6996_priv*, %struct.adm6996_priv** %2, align 8
  %35 = load i32, i32* @ADM_OTBE_P2_PVID, align 4
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @w16(%struct.adm6996_priv* %34, i32 %35, i32 %36)
  %38 = load %struct.adm6996_priv*, %struct.adm6996_priv** %2, align 8
  %39 = load i32, i32* @ADM_IFNTE, align 4
  %40 = call i32 @r16(%struct.adm6996_priv* %38, i32 %39)
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* @ADM_IFNTE_MASK, align 4
  %42 = load i32, i32* %3, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %3, align 4
  %44 = load %struct.adm6996_priv*, %struct.adm6996_priv** %2, align 8
  %45 = load i32, i32* @ADM_IFNTE, align 4
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @w16(%struct.adm6996_priv* %44, i32 %45, i32 %46)
  %48 = load %struct.adm6996_priv*, %struct.adm6996_priv** %2, align 8
  %49 = load i32, i32* @ADM_VID_CHECK, align 4
  %50 = call i32 @r16(%struct.adm6996_priv* %48, i32 %49)
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* @ADM_VID_CHECK_MASK, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %3, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %3, align 4
  %55 = load %struct.adm6996_priv*, %struct.adm6996_priv** %2, align 8
  %56 = load i32, i32* @ADM_VID_CHECK, align 4
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @w16(%struct.adm6996_priv* %55, i32 %56, i32 %57)
  %59 = load %struct.adm6996_priv*, %struct.adm6996_priv** %2, align 8
  %60 = load i32, i32* @ADM_SYSC0, align 4
  %61 = call i32 @r16(%struct.adm6996_priv* %59, i32 %60)
  store i32 %61, i32* %3, align 4
  %62 = load i32, i32* @ADM_NTTE, align 4
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %3, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %3, align 4
  %66 = load i32, i32* @ADM_RVID1, align 4
  %67 = load i32, i32* %3, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %3, align 4
  %69 = load %struct.adm6996_priv*, %struct.adm6996_priv** %2, align 8
  %70 = load i32, i32* @ADM_SYSC0, align 4
  %71 = load i32, i32* %3, align 4
  %72 = call i32 @w16(%struct.adm6996_priv* %69, i32 %70, i32 %71)
  %73 = load %struct.adm6996_priv*, %struct.adm6996_priv** %2, align 8
  %74 = load i32, i32* @ADM_SYSC3, align 4
  %75 = call i32 @r16(%struct.adm6996_priv* %73, i32 %74)
  store i32 %75, i32* %3, align 4
  %76 = load i32, i32* @ADM_TBV, align 4
  %77 = xor i32 %76, -1
  %78 = load i32, i32* %3, align 4
  %79 = and i32 %78, %77
  store i32 %79, i32* %3, align 4
  %80 = load %struct.adm6996_priv*, %struct.adm6996_priv** %2, align 8
  %81 = load i32, i32* @ADM_SYSC3, align 4
  %82 = load i32, i32* %3, align 4
  %83 = call i32 @w16(%struct.adm6996_priv* %80, i32 %81, i32 %82)
  ret void
}

declare dso_local i32 @w16(%struct.adm6996_priv*, i32, i32) #1

declare dso_local i32 @ADM_VLAN_FILT_L(i32) #1

declare dso_local i32 @ADM_VLAN_FILT_VID(i32) #1

declare dso_local i32 @ADM_VLAN_FILT_H(i32) #1

declare dso_local i32 @r16(%struct.adm6996_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
