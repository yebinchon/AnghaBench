; ModuleID = '/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_fast-classifier.c_fast_classifier_recv.c'
source_filename = "/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_fast-classifier.c_fast_classifier_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64, %struct.net_device*, i64 }
%struct.net_device = type { i32, i32, i64, i64, i64 }
%struct.in_device = type { i32 }
%struct.inet6_dev = type { i32 }

@skip_to_bridge_ingress = common dso_local global i64 0, align 8
@IFF_BRIDGE_PORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"master dev is NULL %s\0A\00", align 1
@ETH_P_IP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"no IP processing for device: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"no IP address for device: %s\0A\00", align 1
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"no IPv6 processing for device: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"no IPv6 address for device: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"not IP packet\0A\00", align 1
@TC_NCLS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @fast_classifier_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fast_classifier_recv(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.in_device*, align 8
  %7 = alloca %struct.inet6_dev*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  store %struct.net_device* null, %struct.net_device** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %10, 32
  %12 = call i32 @prefetch(i64 %11)
  %13 = call i32 (...) @barrier()
  %14 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 2
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  store %struct.net_device* %16, %struct.net_device** %3, align 8
  %17 = load i64, i64* @skip_to_bridge_ingress, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %1
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @IFF_BRIDGE_PORT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %19
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = call %struct.net_device* @sfe_dev_get_master(%struct.net_device* %27)
  store %struct.net_device* %28, %struct.net_device** %4, align 8
  %29 = load %struct.net_device*, %struct.net_device** %4, align 8
  %30 = icmp ne %struct.net_device* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  %32 = call i32 @DEBUG_WARN(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %124

33:                                               ; preds = %26
  %34 = load %struct.net_device*, %struct.net_device** %4, align 8
  store %struct.net_device* %34, %struct.net_device** %3, align 8
  br label %35

35:                                               ; preds = %33, %19, %1
  %36 = load i32, i32* @ETH_P_IP, align 4
  %37 = call i64 @htons(i32 %36)
  %38 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %37, %40
  %42 = zext i1 %41 to i32
  %43 = call i64 @likely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %79

45:                                               ; preds = %35
  %46 = load %struct.net_device*, %struct.net_device** %3, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to %struct.in_device*
  store %struct.in_device* %49, %struct.in_device** %6, align 8
  %50 = load %struct.in_device*, %struct.in_device** %6, align 8
  %51 = icmp ne %struct.in_device* %50, null
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i64 @unlikely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %45
  %57 = load %struct.net_device*, %struct.net_device** %3, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (i8*, ...) @DEBUG_TRACE(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  br label %124

61:                                               ; preds = %45
  %62 = load %struct.in_device*, %struct.in_device** %6, align 8
  %63 = getelementptr inbounds %struct.in_device, %struct.in_device* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %61
  %71 = load %struct.net_device*, %struct.net_device** %3, align 8
  %72 = getelementptr inbounds %struct.net_device, %struct.net_device* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (i8*, ...) @DEBUG_TRACE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  br label %124

75:                                               ; preds = %61
  %76 = load %struct.net_device*, %struct.net_device** %3, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %78 = call i32 @sfe_ipv4_recv(%struct.net_device* %76, %struct.sk_buff* %77)
  store i32 %78, i32* %5, align 4
  br label %123

79:                                               ; preds = %35
  %80 = load i32, i32* @ETH_P_IPV6, align 4
  %81 = call i64 @htons(i32 %80)
  %82 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %83 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %81, %84
  %86 = zext i1 %85 to i32
  %87 = call i64 @likely(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %120

89:                                               ; preds = %79
  %90 = load %struct.net_device*, %struct.net_device** %3, align 8
  %91 = getelementptr inbounds %struct.net_device, %struct.net_device* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = inttoptr i64 %92 to %struct.inet6_dev*
  store %struct.inet6_dev* %93, %struct.inet6_dev** %7, align 8
  %94 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %95 = icmp ne %struct.inet6_dev* %94, null
  %96 = xor i1 %95, true
  %97 = zext i1 %96 to i32
  %98 = call i64 @unlikely(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %89
  %101 = load %struct.net_device*, %struct.net_device** %3, align 8
  %102 = getelementptr inbounds %struct.net_device, %struct.net_device* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (i8*, ...) @DEBUG_TRACE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %103)
  br label %124

105:                                              ; preds = %89
  %106 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %107 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %106, i32 0, i32 0
  %108 = call i32 @list_empty(i32* %107)
  %109 = call i64 @unlikely(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %105
  %112 = load %struct.net_device*, %struct.net_device** %3, align 8
  %113 = getelementptr inbounds %struct.net_device, %struct.net_device* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 (i8*, ...) @DEBUG_TRACE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %114)
  br label %124

116:                                              ; preds = %105
  %117 = load %struct.net_device*, %struct.net_device** %3, align 8
  %118 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %119 = call i32 @sfe_ipv6_recv(%struct.net_device* %117, %struct.sk_buff* %118)
  store i32 %119, i32* %5, align 4
  br label %122

120:                                              ; preds = %79
  %121 = call i32 (i8*, ...) @DEBUG_TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  br label %122

122:                                              ; preds = %120, %116
  br label %123

123:                                              ; preds = %122, %75
  br label %124

124:                                              ; preds = %123, %111, %100, %70, %56, %31
  %125 = load %struct.net_device*, %struct.net_device** %4, align 8
  %126 = icmp ne %struct.net_device* %125, null
  br i1 %126, label %127, label %130

127:                                              ; preds = %124
  %128 = load %struct.net_device*, %struct.net_device** %4, align 8
  %129 = call i32 @dev_put(%struct.net_device* %128)
  br label %130

130:                                              ; preds = %127, %124
  %131 = load i32, i32* %5, align 4
  ret i32 %131
}

declare dso_local i32 @prefetch(i64) #1

declare dso_local i32 @barrier(...) #1

declare dso_local %struct.net_device* @sfe_dev_get_master(%struct.net_device*) #1

declare dso_local i32 @DEBUG_WARN(i8*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @DEBUG_TRACE(i8*, ...) #1

declare dso_local i32 @sfe_ipv4_recv(%struct.net_device*, %struct.sk_buff*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @sfe_ipv6_recv(%struct.net_device*, %struct.sk_buff*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
