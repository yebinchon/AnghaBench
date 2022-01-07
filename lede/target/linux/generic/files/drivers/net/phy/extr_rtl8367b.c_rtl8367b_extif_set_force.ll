; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8367b.c_rtl8367b_extif_set_force.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8367b.c_rtl8367b_extif_set_force.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8366_smi = type { i32 }
%struct.rtl8367_port_ability = type { i32, i64, i64, i64, i64, i64, i64 }

@RTL8367B_DI_FORCE_MODE = common dso_local global i32 0, align 4
@RTL8367B_DI_FORCE_NWAY = common dso_local global i32 0, align 4
@RTL8367B_DI_FORCE_TXPAUSE = common dso_local global i32 0, align 4
@RTL8367B_DI_FORCE_RXPAUSE = common dso_local global i32 0, align 4
@RTL8367B_DI_FORCE_LINK = common dso_local global i32 0, align 4
@RTL8367B_DI_FORCE_DUPLEX = common dso_local global i32 0, align 4
@RTL8367B_DI_FORCE_SPEED_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8366_smi*, i32, %struct.rtl8367_port_ability*)* @rtl8367b_extif_set_force to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8367b_extif_set_force(%struct.rtl8366_smi* %0, i32 %1, %struct.rtl8367_port_ability* %2) #0 {
  %4 = alloca %struct.rtl8366_smi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtl8367_port_ability*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rtl8366_smi* %0, %struct.rtl8366_smi** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.rtl8367_port_ability* %2, %struct.rtl8367_port_ability** %6, align 8
  %10 = load i32, i32* @RTL8367B_DI_FORCE_MODE, align 4
  %11 = load i32, i32* @RTL8367B_DI_FORCE_NWAY, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @RTL8367B_DI_FORCE_TXPAUSE, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @RTL8367B_DI_FORCE_RXPAUSE, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @RTL8367B_DI_FORCE_LINK, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @RTL8367B_DI_FORCE_DUPLEX, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @RTL8367B_DI_FORCE_SPEED_MASK, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %7, align 4
  %23 = load %struct.rtl8367_port_ability*, %struct.rtl8367_port_ability** %6, align 8
  %24 = getelementptr inbounds %struct.rtl8367_port_ability, %struct.rtl8367_port_ability* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %8, align 4
  %26 = load %struct.rtl8367_port_ability*, %struct.rtl8367_port_ability** %6, align 8
  %27 = getelementptr inbounds %struct.rtl8367_port_ability, %struct.rtl8367_port_ability* %26, i32 0, i32 6
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load i32, i32* @RTL8367B_DI_FORCE_MODE, align 4
  br label %33

32:                                               ; preds = %3
  br label %33

33:                                               ; preds = %32, %30
  %34 = phi i32 [ %31, %30 ], [ 0, %32 ]
  %35 = load i32, i32* %8, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %8, align 4
  %37 = load %struct.rtl8367_port_ability*, %struct.rtl8367_port_ability** %6, align 8
  %38 = getelementptr inbounds %struct.rtl8367_port_ability, %struct.rtl8367_port_ability* %37, i32 0, i32 5
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* @RTL8367B_DI_FORCE_NWAY, align 4
  br label %44

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43, %41
  %45 = phi i32 [ %42, %41 ], [ 0, %43 ]
  %46 = load i32, i32* %8, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %8, align 4
  %48 = load %struct.rtl8367_port_ability*, %struct.rtl8367_port_ability** %6, align 8
  %49 = getelementptr inbounds %struct.rtl8367_port_ability, %struct.rtl8367_port_ability* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = load i32, i32* @RTL8367B_DI_FORCE_TXPAUSE, align 4
  br label %55

54:                                               ; preds = %44
  br label %55

55:                                               ; preds = %54, %52
  %56 = phi i32 [ %53, %52 ], [ 0, %54 ]
  %57 = load i32, i32* %8, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %8, align 4
  %59 = load %struct.rtl8367_port_ability*, %struct.rtl8367_port_ability** %6, align 8
  %60 = getelementptr inbounds %struct.rtl8367_port_ability, %struct.rtl8367_port_ability* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %55
  %64 = load i32, i32* @RTL8367B_DI_FORCE_RXPAUSE, align 4
  br label %66

65:                                               ; preds = %55
  br label %66

66:                                               ; preds = %65, %63
  %67 = phi i32 [ %64, %63 ], [ 0, %65 ]
  %68 = load i32, i32* %8, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %8, align 4
  %70 = load %struct.rtl8367_port_ability*, %struct.rtl8367_port_ability** %6, align 8
  %71 = getelementptr inbounds %struct.rtl8367_port_ability, %struct.rtl8367_port_ability* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %66
  %75 = load i32, i32* @RTL8367B_DI_FORCE_LINK, align 4
  br label %77

76:                                               ; preds = %66
  br label %77

77:                                               ; preds = %76, %74
  %78 = phi i32 [ %75, %74 ], [ 0, %76 ]
  %79 = load i32, i32* %8, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %8, align 4
  %81 = load %struct.rtl8367_port_ability*, %struct.rtl8367_port_ability** %6, align 8
  %82 = getelementptr inbounds %struct.rtl8367_port_ability, %struct.rtl8367_port_ability* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %77
  %86 = load i32, i32* @RTL8367B_DI_FORCE_DUPLEX, align 4
  br label %88

87:                                               ; preds = %77
  br label %88

88:                                               ; preds = %87, %85
  %89 = phi i32 [ %86, %85 ], [ 0, %87 ]
  %90 = load i32, i32* %8, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %8, align 4
  %92 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %4, align 8
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @RTL8367B_DI_FORCE_REG(i32 %93)
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @REG_RMW(%struct.rtl8366_smi* %92, i32 %94, i32 %95, i32 %96)
  ret i32 0
}

declare dso_local i32 @REG_RMW(%struct.rtl8366_smi*, i32, i32, i32) #1

declare dso_local i32 @RTL8367B_DI_FORCE_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
