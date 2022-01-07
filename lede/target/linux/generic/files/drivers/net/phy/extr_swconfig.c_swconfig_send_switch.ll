; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_swconfig.c_swconfig_send_switch.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_swconfig.c_swconfig_send_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.switch_dev = type { i32, i32, i32, i32, %struct.TYPE_2__*, i64, i64, i64 }
%struct.TYPE_2__ = type { i32, i64 }
%struct.nlattr = type { i32 }

@switch_fam = common dso_local global i32 0, align 4
@SWITCH_CMD_NEW_ATTR = common dso_local global i32 0, align 4
@SWITCH_ATTR_ID = common dso_local global i32 0, align 4
@SWITCH_ATTR_DEV_NAME = common dso_local global i32 0, align 4
@SWITCH_ATTR_ALIAS = common dso_local global i32 0, align 4
@SWITCH_ATTR_NAME = common dso_local global i32 0, align 4
@SWITCH_ATTR_VLANS = common dso_local global i32 0, align 4
@SWITCH_ATTR_PORTS = common dso_local global i32 0, align 4
@SWITCH_ATTR_CPU_PORT = common dso_local global i32 0, align 4
@SWITCH_ATTR_PORTMAP = common dso_local global i32 0, align 4
@SWITCH_PORTMAP_SEGMENT = common dso_local global i32 0, align 4
@SWITCH_PORTMAP_VIRT = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, i32, i32, %struct.switch_dev*)* @swconfig_send_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @swconfig_send_switch(%struct.sk_buff* %0, i32 %1, i32 %2, i32 %3, %struct.switch_dev* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.switch_dev*, align 8
  %12 = alloca %struct.nlattr*, align 8
  %13 = alloca %struct.nlattr*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.switch_dev* %4, %struct.switch_dev** %11, align 8
  store %struct.nlattr* null, %struct.nlattr** %12, align 8
  store %struct.nlattr* null, %struct.nlattr** %13, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* @SWITCH_CMD_NEW_ATTR, align 4
  %21 = call i8* @genlmsg_put(%struct.sk_buff* %16, i32 %17, i32 %18, i32* @switch_fam, i32 %19, i32 %20)
  store i8* %21, i8** %14, align 8
  %22 = load i8*, i8** %14, align 8
  %23 = call i64 @IS_ERR(i8* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %172

26:                                               ; preds = %5
  %27 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %28 = load i32, i32* @SWITCH_ATTR_ID, align 4
  %29 = load %struct.switch_dev*, %struct.switch_dev** %11, align 8
  %30 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @nla_put_u32(%struct.sk_buff* %27, i32 %28, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %166

35:                                               ; preds = %26
  %36 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %37 = load i32, i32* @SWITCH_ATTR_DEV_NAME, align 4
  %38 = load %struct.switch_dev*, %struct.switch_dev** %11, align 8
  %39 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %38, i32 0, i32 7
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @nla_put_string(%struct.sk_buff* %36, i32 %37, i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %166

44:                                               ; preds = %35
  %45 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %46 = load i32, i32* @SWITCH_ATTR_ALIAS, align 4
  %47 = load %struct.switch_dev*, %struct.switch_dev** %11, align 8
  %48 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %47, i32 0, i32 6
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @nla_put_string(%struct.sk_buff* %45, i32 %46, i64 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  br label %166

53:                                               ; preds = %44
  %54 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %55 = load i32, i32* @SWITCH_ATTR_NAME, align 4
  %56 = load %struct.switch_dev*, %struct.switch_dev** %11, align 8
  %57 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %56, i32 0, i32 5
  %58 = load i64, i64* %57, align 8
  %59 = call i64 @nla_put_string(%struct.sk_buff* %54, i32 %55, i64 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  br label %166

62:                                               ; preds = %53
  %63 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %64 = load i32, i32* @SWITCH_ATTR_VLANS, align 4
  %65 = load %struct.switch_dev*, %struct.switch_dev** %11, align 8
  %66 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @nla_put_u32(%struct.sk_buff* %63, i32 %64, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  br label %166

71:                                               ; preds = %62
  %72 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %73 = load i32, i32* @SWITCH_ATTR_PORTS, align 4
  %74 = load %struct.switch_dev*, %struct.switch_dev** %11, align 8
  %75 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @nla_put_u32(%struct.sk_buff* %72, i32 %73, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  br label %166

80:                                               ; preds = %71
  %81 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %82 = load i32, i32* @SWITCH_ATTR_CPU_PORT, align 4
  %83 = load %struct.switch_dev*, %struct.switch_dev** %11, align 8
  %84 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @nla_put_u32(%struct.sk_buff* %81, i32 %82, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  br label %166

89:                                               ; preds = %80
  %90 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %91 = load i32, i32* @SWITCH_ATTR_PORTMAP, align 4
  %92 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %90, i32 %91)
  store %struct.nlattr* %92, %struct.nlattr** %13, align 8
  %93 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %94 = icmp ne %struct.nlattr* %93, null
  br i1 %94, label %96, label %95

95:                                               ; preds = %89
  br label %166

96:                                               ; preds = %89
  store i32 0, i32* %15, align 4
  br label %97

97:                                               ; preds = %153, %96
  %98 = load i32, i32* %15, align 4
  %99 = load %struct.switch_dev*, %struct.switch_dev** %11, align 8
  %100 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = icmp slt i32 %98, %101
  br i1 %102, label %103, label %156

103:                                              ; preds = %97
  %104 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %105 = load i32, i32* @SWITCH_ATTR_PORTS, align 4
  %106 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %104, i32 %105)
  store %struct.nlattr* %106, %struct.nlattr** %12, align 8
  %107 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %108 = icmp ne %struct.nlattr* %107, null
  br i1 %108, label %110, label %109

109:                                              ; preds = %103
  br label %153

110:                                              ; preds = %103
  %111 = load %struct.switch_dev*, %struct.switch_dev** %11, align 8
  %112 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %111, i32 0, i32 4
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = load i32, i32* %15, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %149

120:                                              ; preds = %110
  %121 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %122 = load i32, i32* @SWITCH_PORTMAP_SEGMENT, align 4
  %123 = load %struct.switch_dev*, %struct.switch_dev** %11, align 8
  %124 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %123, i32 0, i32 4
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = load i32, i32* %15, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = call i64 @nla_put_string(%struct.sk_buff* %121, i32 %122, i64 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %120
  br label %166

134:                                              ; preds = %120
  %135 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %136 = load i32, i32* @SWITCH_PORTMAP_VIRT, align 4
  %137 = load %struct.switch_dev*, %struct.switch_dev** %11, align 8
  %138 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %137, i32 0, i32 4
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = load i32, i32* %15, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i64 @nla_put_u32(%struct.sk_buff* %135, i32 %136, i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %134
  br label %166

148:                                              ; preds = %134
  br label %149

149:                                              ; preds = %148, %110
  %150 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %151 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %152 = call i32 @nla_nest_end(%struct.sk_buff* %150, %struct.nlattr* %151)
  br label %153

153:                                              ; preds = %149, %109
  %154 = load i32, i32* %15, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %15, align 4
  br label %97

156:                                              ; preds = %97
  %157 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %158 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %159 = call i32 @nla_nest_end(%struct.sk_buff* %157, %struct.nlattr* %158)
  %160 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %161 = load i8*, i8** %14, align 8
  %162 = call i32 @genlmsg_end(%struct.sk_buff* %160, i8* %161)
  %163 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %164 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  store i32 %165, i32* %6, align 4
  br label %172

166:                                              ; preds = %147, %133, %95, %88, %79, %70, %61, %52, %43, %34
  %167 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %168 = load i8*, i8** %14, align 8
  %169 = call i32 @genlmsg_cancel(%struct.sk_buff* %167, i8* %168)
  %170 = load i32, i32* @EMSGSIZE, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %6, align 4
  br label %172

172:                                              ; preds = %166, %156, %25
  %173 = load i32, i32* %6, align 4
  ret i32 %173
}

declare dso_local i8* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i64) #1

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_cancel(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
