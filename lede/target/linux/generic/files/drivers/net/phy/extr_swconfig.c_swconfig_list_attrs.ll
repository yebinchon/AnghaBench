; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_swconfig.c_swconfig_list_attrs.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_swconfig.c_swconfig_list_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_attr = type { i32 }
%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32 }
%struct.genlmsghdr = type { i32 }
%struct.switch_attrlist = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.switch_dev = type { i64, i64, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.switch_attrlist, %struct.switch_attrlist, %struct.switch_attrlist }
%struct.swconfig_callback = type { i32*, i64, i32, %struct.genl_info* }

@EINVAL = common dso_local global i32 0, align 4
@default_global = common dso_local global %struct.switch_attr* null, align 8
@default_vlan = common dso_local global %struct.switch_attr* null, align 8
@default_port = common dso_local global %struct.switch_attr* null, align 8
@swconfig_dump_attr = common dso_local global i32 0, align 4
@SWITCH_ATTR_DEFAULTS_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @swconfig_list_attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @swconfig_list_attrs(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.genlmsghdr*, align 8
  %7 = alloca %struct.switch_attrlist*, align 8
  %8 = alloca %struct.switch_dev*, align 8
  %9 = alloca %struct.swconfig_callback, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.switch_attr*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %15 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %16 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.genlmsghdr* @nlmsg_data(i32 %17)
  store %struct.genlmsghdr* %18, %struct.genlmsghdr** %6, align 8
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %10, align 4
  %21 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %22 = call %struct.switch_dev* @swconfig_get_dev(%struct.genl_info* %21)
  store %struct.switch_dev* %22, %struct.switch_dev** %8, align 8
  %23 = load %struct.switch_dev*, %struct.switch_dev** %8, align 8
  %24 = icmp ne %struct.switch_dev* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %163

28:                                               ; preds = %2
  %29 = load %struct.genlmsghdr*, %struct.genlmsghdr** %6, align 8
  %30 = getelementptr inbounds %struct.genlmsghdr, %struct.genlmsghdr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %62 [
    i32 130, label %32
    i32 128, label %42
    i32 129, label %52
  ]

32:                                               ; preds = %28
  %33 = load %struct.switch_dev*, %struct.switch_dev** %8, align 8
  %34 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %33, i32 0, i32 3
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  store %struct.switch_attrlist* %36, %struct.switch_attrlist** %7, align 8
  %37 = load %struct.switch_attr*, %struct.switch_attr** @default_global, align 8
  store %struct.switch_attr* %37, %struct.switch_attr** %12, align 8
  %38 = load %struct.switch_dev*, %struct.switch_dev** %8, align 8
  %39 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %38, i32 0, i32 0
  store i64* %39, i64** %13, align 8
  %40 = load %struct.switch_attr*, %struct.switch_attr** @default_global, align 8
  %41 = call i32 @ARRAY_SIZE(%struct.switch_attr* %40)
  store i32 %41, i32* %14, align 4
  br label %64

42:                                               ; preds = %28
  %43 = load %struct.switch_dev*, %struct.switch_dev** %8, align 8
  %44 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %43, i32 0, i32 3
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  store %struct.switch_attrlist* %46, %struct.switch_attrlist** %7, align 8
  %47 = load %struct.switch_attr*, %struct.switch_attr** @default_vlan, align 8
  store %struct.switch_attr* %47, %struct.switch_attr** %12, align 8
  %48 = load %struct.switch_dev*, %struct.switch_dev** %8, align 8
  %49 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %48, i32 0, i32 1
  store i64* %49, i64** %13, align 8
  %50 = load %struct.switch_attr*, %struct.switch_attr** @default_vlan, align 8
  %51 = call i32 @ARRAY_SIZE(%struct.switch_attr* %50)
  store i32 %51, i32* %14, align 4
  br label %64

52:                                               ; preds = %28
  %53 = load %struct.switch_dev*, %struct.switch_dev** %8, align 8
  %54 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %53, i32 0, i32 3
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  store %struct.switch_attrlist* %56, %struct.switch_attrlist** %7, align 8
  %57 = load %struct.switch_attr*, %struct.switch_attr** @default_port, align 8
  store %struct.switch_attr* %57, %struct.switch_attr** %12, align 8
  %58 = load %struct.switch_dev*, %struct.switch_dev** %8, align 8
  %59 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %58, i32 0, i32 2
  store i64* %59, i64** %13, align 8
  %60 = load %struct.switch_attr*, %struct.switch_attr** @default_port, align 8
  %61 = call i32 @ARRAY_SIZE(%struct.switch_attr* %60)
  store i32 %61, i32* %14, align 4
  br label %64

62:                                               ; preds = %28
  %63 = call i32 @WARN_ON(i32 1)
  br label %159

64:                                               ; preds = %52, %42, %32
  %65 = call i32 @memset(%struct.swconfig_callback* %9, i32 0, i32 32)
  %66 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %67 = getelementptr inbounds %struct.swconfig_callback, %struct.swconfig_callback* %9, i32 0, i32 3
  store %struct.genl_info* %66, %struct.genl_info** %67, align 8
  %68 = load i32, i32* @swconfig_dump_attr, align 4
  %69 = getelementptr inbounds %struct.swconfig_callback, %struct.swconfig_callback* %9, i32 0, i32 2
  store i32 %68, i32* %69, align 8
  store i32 0, i32* %11, align 4
  br label %70

70:                                               ; preds = %104, %64
  %71 = load i32, i32* %11, align 4
  %72 = load %struct.switch_attrlist*, %struct.switch_attrlist** %7, align 8
  %73 = getelementptr inbounds %struct.switch_attrlist, %struct.switch_attrlist* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %107

76:                                               ; preds = %70
  %77 = load %struct.switch_attrlist*, %struct.switch_attrlist** %7, align 8
  %78 = getelementptr inbounds %struct.switch_attrlist, %struct.switch_attrlist* %77, i32 0, i32 1
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %76
  br label %104

87:                                               ; preds = %76
  %88 = load i32, i32* %11, align 4
  %89 = getelementptr inbounds %struct.swconfig_callback, %struct.swconfig_callback* %9, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  store i32 %88, i32* %91, align 4
  %92 = load %struct.switch_attrlist*, %struct.switch_attrlist** %7, align 8
  %93 = getelementptr inbounds %struct.switch_attrlist, %struct.switch_attrlist* %92, i32 0, i32 1
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i64 %96
  %98 = bitcast %struct.TYPE_4__* %97 to i8*
  %99 = call i32 @swconfig_send_multipart(%struct.swconfig_callback* %9, i8* %98)
  store i32 %99, i32* %10, align 4
  %100 = load i32, i32* %10, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %87
  br label %150

103:                                              ; preds = %87
  br label %104

104:                                              ; preds = %103, %86
  %105 = load i32, i32* %11, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %11, align 4
  br label %70

107:                                              ; preds = %70
  store i32 0, i32* %11, align 4
  br label %108

108:                                              ; preds = %135, %107
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* %14, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %138

112:                                              ; preds = %108
  %113 = load i32, i32* %11, align 4
  %114 = load i64*, i64** %13, align 8
  %115 = call i32 @test_bit(i32 %113, i64* %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %112
  br label %135

118:                                              ; preds = %112
  %119 = load i32, i32* @SWITCH_ATTR_DEFAULTS_OFFSET, align 4
  %120 = load i32, i32* %11, align 4
  %121 = add nsw i32 %119, %120
  %122 = getelementptr inbounds %struct.swconfig_callback, %struct.swconfig_callback* %9, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 0
  store i32 %121, i32* %124, align 4
  %125 = load %struct.switch_attr*, %struct.switch_attr** %12, align 8
  %126 = load i32, i32* %11, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.switch_attr, %struct.switch_attr* %125, i64 %127
  %129 = bitcast %struct.switch_attr* %128 to i8*
  %130 = call i32 @swconfig_send_multipart(%struct.swconfig_callback* %9, i8* %129)
  store i32 %130, i32* %10, align 4
  %131 = load i32, i32* %10, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %118
  br label %150

134:                                              ; preds = %118
  br label %135

135:                                              ; preds = %134, %117
  %136 = load i32, i32* %11, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %11, align 4
  br label %108

138:                                              ; preds = %108
  %139 = load %struct.switch_dev*, %struct.switch_dev** %8, align 8
  %140 = call i32 @swconfig_put_dev(%struct.switch_dev* %139)
  %141 = getelementptr inbounds %struct.swconfig_callback, %struct.swconfig_callback* %9, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %138
  store i32 0, i32* %3, align 4
  br label %163

145:                                              ; preds = %138
  %146 = getelementptr inbounds %struct.swconfig_callback, %struct.swconfig_callback* %9, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %149 = call i32 @genlmsg_reply(i64 %147, %struct.genl_info* %148)
  store i32 %149, i32* %3, align 4
  br label %163

150:                                              ; preds = %133, %102
  %151 = getelementptr inbounds %struct.swconfig_callback, %struct.swconfig_callback* %9, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %150
  %155 = getelementptr inbounds %struct.swconfig_callback, %struct.swconfig_callback* %9, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = call i32 @nlmsg_free(i64 %156)
  br label %158

158:                                              ; preds = %154, %150
  br label %159

159:                                              ; preds = %158, %62
  %160 = load %struct.switch_dev*, %struct.switch_dev** %8, align 8
  %161 = call i32 @swconfig_put_dev(%struct.switch_dev* %160)
  %162 = load i32, i32* %10, align 4
  store i32 %162, i32* %3, align 4
  br label %163

163:                                              ; preds = %159, %145, %144, %25
  %164 = load i32, i32* %3, align 4
  ret i32 %164
}

declare dso_local %struct.genlmsghdr* @nlmsg_data(i32) #1

declare dso_local %struct.switch_dev* @swconfig_get_dev(%struct.genl_info*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.switch_attr*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @memset(%struct.swconfig_callback*, i32, i32) #1

declare dso_local i32 @swconfig_send_multipart(%struct.swconfig_callback*, i8*) #1

declare dso_local i32 @test_bit(i32, i64*) #1

declare dso_local i32 @swconfig_put_dev(%struct.switch_dev*) #1

declare dso_local i32 @genlmsg_reply(i64, %struct.genl_info*) #1

declare dso_local i32 @nlmsg_free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
