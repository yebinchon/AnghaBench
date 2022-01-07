; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/b53/extr_b53_common.c_b53_set_vlan_entry.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/b53/extr_b53_common.c_b53_set_vlan_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b53_device = type { i32, i32* }

@VA_UNTAG_MASK_25 = common dso_local global i32 0, align 4
@VA_UNTAG_S_25 = common dso_local global i32 0, align 4
@VA_VALID_25_R4 = common dso_local global i32 0, align 4
@VA_VID_HIGH_S = common dso_local global i32 0, align 4
@VA_VALID_25 = common dso_local global i32 0, align 4
@B53_VLAN_PAGE = common dso_local global i32 0, align 4
@B53_VLAN_WRITE_25 = common dso_local global i32 0, align 4
@B53_VLAN_TABLE_ACCESS_25 = common dso_local global i32 0, align 4
@VTA_RW_STATE_WR = common dso_local global i32 0, align 4
@VTA_RW_OP_EN = common dso_local global i32 0, align 4
@VA_UNTAG_MASK_65 = common dso_local global i32 0, align 4
@VA_UNTAG_S_65 = common dso_local global i32 0, align 4
@VA_VALID_65 = common dso_local global i32 0, align 4
@B53_VLAN_WRITE_65 = common dso_local global i32 0, align 4
@B53_VLAN_TABLE_ACCESS_65 = common dso_local global i32 0, align 4
@B53_ARLIO_PAGE = common dso_local global i32 0, align 4
@VTE_UNTAG_S = common dso_local global i32 0, align 4
@VTA_CMD_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b53_device*, i32, i32, i32)* @b53_set_vlan_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b53_set_vlan_entry(%struct.b53_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.b53_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.b53_device* %0, %struct.b53_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.b53_device*, %struct.b53_device** %5, align 8
  %12 = call i64 @is5325(%struct.b53_device* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %57

14:                                               ; preds = %4
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %42

17:                                               ; preds = %14
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @VA_UNTAG_MASK_25, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @VA_UNTAG_S_25, align 4
  %22 = shl i32 %20, %21
  %23 = load i32, i32* %7, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %9, align 4
  %25 = load %struct.b53_device*, %struct.b53_device** %5, align 8
  %26 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp sge i32 %27, 3
  br i1 %28, label %29, label %37

29:                                               ; preds = %17
  %30 = load i32, i32* @VA_VALID_25_R4, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @VA_VID_HIGH_S, align 4
  %33 = shl i32 %31, %32
  %34 = or i32 %30, %33
  %35 = load i32, i32* %9, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %9, align 4
  br label %41

37:                                               ; preds = %17
  %38 = load i32, i32* @VA_VALID_25, align 4
  %39 = load i32, i32* %9, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %37, %29
  br label %42

42:                                               ; preds = %41, %14
  %43 = load %struct.b53_device*, %struct.b53_device** %5, align 8
  %44 = load i32, i32* @B53_VLAN_PAGE, align 4
  %45 = load i32, i32* @B53_VLAN_WRITE_25, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @b53_write32(%struct.b53_device* %43, i32 %44, i32 %45, i32 %46)
  %48 = load %struct.b53_device*, %struct.b53_device** %5, align 8
  %49 = load i32, i32* @B53_VLAN_PAGE, align 4
  %50 = load i32, i32* @B53_VLAN_TABLE_ACCESS_25, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @VTA_RW_STATE_WR, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @VTA_RW_OP_EN, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @b53_write16(%struct.b53_device* %48, i32 %49, i32 %50, i32 %55)
  br label %116

57:                                               ; preds = %4
  %58 = load %struct.b53_device*, %struct.b53_device** %5, align 8
  %59 = call i64 @is5365(%struct.b53_device* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %89

61:                                               ; preds = %57
  store i32 0, i32* %10, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %61
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @VA_UNTAG_MASK_65, align 4
  %67 = and i32 %65, %66
  %68 = load i32, i32* @VA_UNTAG_S_65, align 4
  %69 = shl i32 %67, %68
  %70 = load i32, i32* %7, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @VA_VALID_65, align 4
  %73 = or i32 %71, %72
  store i32 %73, i32* %10, align 4
  br label %74

74:                                               ; preds = %64, %61
  %75 = load %struct.b53_device*, %struct.b53_device** %5, align 8
  %76 = load i32, i32* @B53_VLAN_PAGE, align 4
  %77 = load i32, i32* @B53_VLAN_WRITE_65, align 4
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @b53_write16(%struct.b53_device* %75, i32 %76, i32 %77, i32 %78)
  %80 = load %struct.b53_device*, %struct.b53_device** %5, align 8
  %81 = load i32, i32* @B53_VLAN_PAGE, align 4
  %82 = load i32, i32* @B53_VLAN_TABLE_ACCESS_65, align 4
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @VTA_RW_STATE_WR, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @VTA_RW_OP_EN, align 4
  %87 = or i32 %85, %86
  %88 = call i32 @b53_write16(%struct.b53_device* %80, i32 %81, i32 %82, i32 %87)
  br label %115

89:                                               ; preds = %57
  %90 = load %struct.b53_device*, %struct.b53_device** %5, align 8
  %91 = load i32, i32* @B53_ARLIO_PAGE, align 4
  %92 = load %struct.b53_device*, %struct.b53_device** %5, align 8
  %93 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @b53_write16(%struct.b53_device* %90, i32 %91, i32 %96, i32 %97)
  %99 = load %struct.b53_device*, %struct.b53_device** %5, align 8
  %100 = load i32, i32* @B53_ARLIO_PAGE, align 4
  %101 = load %struct.b53_device*, %struct.b53_device** %5, align 8
  %102 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 2
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* @VTE_UNTAG_S, align 4
  %108 = shl i32 %106, %107
  %109 = load i32, i32* %7, align 4
  %110 = or i32 %108, %109
  %111 = call i32 @b53_write32(%struct.b53_device* %99, i32 %100, i32 %105, i32 %110)
  %112 = load %struct.b53_device*, %struct.b53_device** %5, align 8
  %113 = load i32, i32* @VTA_CMD_WRITE, align 4
  %114 = call i32 @b53_do_vlan_op(%struct.b53_device* %112, i32 %113)
  br label %115

115:                                              ; preds = %89, %74
  br label %116

116:                                              ; preds = %115, %42
  ret void
}

declare dso_local i64 @is5325(%struct.b53_device*) #1

declare dso_local i32 @b53_write32(%struct.b53_device*, i32, i32, i32) #1

declare dso_local i32 @b53_write16(%struct.b53_device*, i32, i32, i32) #1

declare dso_local i64 @is5365(%struct.b53_device*) #1

declare dso_local i32 @b53_do_vlan_op(%struct.b53_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
