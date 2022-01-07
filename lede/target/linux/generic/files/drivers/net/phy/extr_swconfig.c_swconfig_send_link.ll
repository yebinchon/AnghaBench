; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_swconfig.c_swconfig_send_link.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_swconfig.c_swconfig_send_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32 }
%struct.switch_port_link = type { i32, i32, i64, i64, i64, i64, i64 }
%struct.nlattr = type { i32 }

@SWITCH_LINK_FLAG_LINK = common dso_local global i32 0, align 4
@SWITCH_LINK_FLAG_DUPLEX = common dso_local global i32 0, align 4
@SWITCH_LINK_FLAG_ANEG = common dso_local global i32 0, align 4
@SWITCH_LINK_FLAG_TX_FLOW = common dso_local global i32 0, align 4
@SWITCH_LINK_FLAG_RX_FLOW = common dso_local global i32 0, align 4
@SWITCH_LINK_SPEED = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Full = common dso_local global i32 0, align 4
@SWITCH_LINK_FLAG_EEE_100BASET = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Full = common dso_local global i32 0, align 4
@SWITCH_LINK_FLAG_EEE_1000BASET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*, i32, %struct.switch_port_link*)* @swconfig_send_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @swconfig_send_link(%struct.sk_buff* %0, %struct.genl_info* %1, i32 %2, %struct.switch_port_link* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.genl_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.switch_port_link*, align 8
  %10 = alloca %struct.nlattr*, align 8
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.genl_info* %1, %struct.genl_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.switch_port_link* %3, %struct.switch_port_link** %9, align 8
  store %struct.nlattr* null, %struct.nlattr** %10, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %12, i32 %13)
  store %struct.nlattr* %14, %struct.nlattr** %10, align 8
  %15 = load %struct.switch_port_link*, %struct.switch_port_link** %9, align 8
  %16 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %15, i32 0, i32 6
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = load i32, i32* @SWITCH_LINK_FLAG_LINK, align 4
  %22 = call i64 @nla_put_flag(%struct.sk_buff* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %116

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %25, %4
  %27 = load %struct.switch_port_link*, %struct.switch_port_link** %9, align 8
  %28 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %27, i32 0, i32 5
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %33 = load i32, i32* @SWITCH_LINK_FLAG_DUPLEX, align 4
  %34 = call i64 @nla_put_flag(%struct.sk_buff* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %116

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %37, %26
  %39 = load %struct.switch_port_link*, %struct.switch_port_link** %9, align 8
  %40 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %45 = load i32, i32* @SWITCH_LINK_FLAG_ANEG, align 4
  %46 = call i64 @nla_put_flag(%struct.sk_buff* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %116

49:                                               ; preds = %43
  br label %50

50:                                               ; preds = %49, %38
  %51 = load %struct.switch_port_link*, %struct.switch_port_link** %9, align 8
  %52 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %57 = load i32, i32* @SWITCH_LINK_FLAG_TX_FLOW, align 4
  %58 = call i64 @nla_put_flag(%struct.sk_buff* %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %116

61:                                               ; preds = %55
  br label %62

62:                                               ; preds = %61, %50
  %63 = load %struct.switch_port_link*, %struct.switch_port_link** %9, align 8
  %64 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %69 = load i32, i32* @SWITCH_LINK_FLAG_RX_FLOW, align 4
  %70 = call i64 @nla_put_flag(%struct.sk_buff* %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %116

73:                                               ; preds = %67
  br label %74

74:                                               ; preds = %73, %62
  %75 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %76 = load i32, i32* @SWITCH_LINK_SPEED, align 4
  %77 = load %struct.switch_port_link*, %struct.switch_port_link** %9, align 8
  %78 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @nla_put_u32(%struct.sk_buff* %75, i32 %76, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  br label %116

83:                                               ; preds = %74
  %84 = load %struct.switch_port_link*, %struct.switch_port_link** %9, align 8
  %85 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %83
  %91 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %92 = load i32, i32* @SWITCH_LINK_FLAG_EEE_100BASET, align 4
  %93 = call i64 @nla_put_flag(%struct.sk_buff* %91, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  br label %116

96:                                               ; preds = %90
  br label %97

97:                                               ; preds = %96, %83
  %98 = load %struct.switch_port_link*, %struct.switch_port_link** %9, align 8
  %99 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @ADVERTISED_1000baseT_Full, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %97
  %105 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %106 = load i32, i32* @SWITCH_LINK_FLAG_EEE_1000BASET, align 4
  %107 = call i64 @nla_put_flag(%struct.sk_buff* %105, i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  br label %116

110:                                              ; preds = %104
  br label %111

111:                                              ; preds = %110, %97
  %112 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %113 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %114 = call i32 @nla_nest_end(%struct.sk_buff* %112, %struct.nlattr* %113)
  %115 = load i32, i32* %11, align 4
  store i32 %115, i32* %5, align 4
  br label %120

116:                                              ; preds = %109, %95, %82, %72, %60, %48, %36, %24
  %117 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %118 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %119 = call i32 @nla_nest_cancel(%struct.sk_buff* %117, %struct.nlattr* %118)
  store i32 -1, i32* %5, align 4
  br label %120

120:                                              ; preds = %116, %111
  %121 = load i32, i32* %5, align 4
  ret i32 %121
}

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_flag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
