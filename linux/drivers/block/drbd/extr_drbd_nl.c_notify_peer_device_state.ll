; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_nl.c_notify_peer_device_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_nl.c_notify_peer_device_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.drbd_peer_device = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.drbd_resource* }
%struct.drbd_resource = type { i32 }
%struct.peer_device_info = type { i32 }
%struct.peer_device_statistics = type { i32 }
%struct.drbd_genlmsghdr = type { i32, i32 }

@notify_genl_seq = common dso_local global i32 0, align 4
@NLMSG_GOODSIZE = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@drbd_genl_family = common dso_local global i32 0, align 4
@DRBD_PEER_DEVICE_STATE = common dso_local global i32 0, align 4
@NO_ERROR = common dso_local global i32 0, align 4
@NOTIFY_FLAGS = common dso_local global i32 0, align 4
@NOTIFY_DESTROY = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@GFP_NOWAIT = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Error %d while broadcasting event. Event seq:%u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @notify_peer_device_state(%struct.sk_buff* %0, i32 %1, %struct.drbd_peer_device* %2, %struct.peer_device_info* %3, i32 %4) #0 {
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.drbd_peer_device*, align 8
  %9 = alloca %struct.peer_device_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.peer_device_statistics, align 4
  %12 = alloca %struct.drbd_resource*, align 8
  %13 = alloca %struct.drbd_genlmsghdr*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.drbd_peer_device* %2, %struct.drbd_peer_device** %8, align 8
  store %struct.peer_device_info* %3, %struct.peer_device_info** %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %8, align 8
  %17 = getelementptr inbounds %struct.drbd_peer_device, %struct.drbd_peer_device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.drbd_resource*, %struct.drbd_resource** %19, align 8
  store %struct.drbd_resource* %20, %struct.drbd_resource** %12, align 8
  store i32 0, i32* %14, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = icmp ne %struct.sk_buff* %21, null
  br i1 %22, label %34, label %23

23:                                               ; preds = %5
  %24 = call i32 @atomic_inc_return(i32* @notify_genl_seq)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* @NLMSG_GOODSIZE, align 4
  %26 = load i32, i32* @GFP_NOIO, align 4
  %27 = call %struct.sk_buff* @genlmsg_new(i32 %25, i32 %26)
  store %struct.sk_buff* %27, %struct.sk_buff** %6, align 8
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %15, align 4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = icmp ne %struct.sk_buff* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %23
  br label %110

33:                                               ; preds = %23
  store i32 1, i32* %14, align 4
  br label %34

34:                                               ; preds = %33, %5
  %35 = load i32, i32* @EMSGSIZE, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %15, align 4
  %37 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @DRBD_PEER_DEVICE_STATE, align 4
  %40 = call %struct.drbd_genlmsghdr* @genlmsg_put(%struct.sk_buff* %37, i32 0, i32 %38, i32* @drbd_genl_family, i32 0, i32 %39)
  store %struct.drbd_genlmsghdr* %40, %struct.drbd_genlmsghdr** %13, align 8
  %41 = load %struct.drbd_genlmsghdr*, %struct.drbd_genlmsghdr** %13, align 8
  %42 = icmp ne %struct.drbd_genlmsghdr* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %34
  br label %107

44:                                               ; preds = %34
  %45 = load %struct.drbd_genlmsghdr*, %struct.drbd_genlmsghdr** %13, align 8
  %46 = getelementptr inbounds %struct.drbd_genlmsghdr, %struct.drbd_genlmsghdr* %45, i32 0, i32 0
  store i32 -1, i32* %46, align 4
  %47 = load i32, i32* @NO_ERROR, align 4
  %48 = load %struct.drbd_genlmsghdr*, %struct.drbd_genlmsghdr** %13, align 8
  %49 = getelementptr inbounds %struct.drbd_genlmsghdr, %struct.drbd_genlmsghdr* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %51 = load %struct.drbd_resource*, %struct.drbd_resource** %12, align 8
  %52 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %8, align 8
  %53 = getelementptr inbounds %struct.drbd_peer_device, %struct.drbd_peer_device* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %8, align 8
  %56 = getelementptr inbounds %struct.drbd_peer_device, %struct.drbd_peer_device* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = call i64 @nla_put_drbd_cfg_context(%struct.sk_buff* %50, %struct.drbd_resource* %51, i32 %54, %struct.TYPE_2__* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %77, label %60

60:                                               ; preds = %44
  %61 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %62 = load i32, i32* %10, align 4
  %63 = call i64 @nla_put_notification_header(%struct.sk_buff* %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %77, label %65

65:                                               ; preds = %60
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @NOTIFY_FLAGS, align 4
  %68 = xor i32 %67, -1
  %69 = and i32 %66, %68
  %70 = load i32, i32* @NOTIFY_DESTROY, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %65
  %73 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %74 = load %struct.peer_device_info*, %struct.peer_device_info** %9, align 8
  %75 = call i64 @peer_device_info_to_skb(%struct.sk_buff* %73, %struct.peer_device_info* %74, i32 1)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72, %60, %44
  br label %107

78:                                               ; preds = %72, %65
  %79 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %8, align 8
  %80 = call i32 @peer_device_to_statistics(%struct.peer_device_statistics* %11, %struct.drbd_peer_device* %79)
  %81 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %82 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %83 = call i32 @capable(i32 %82)
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i32
  %87 = call i32 @peer_device_statistics_to_skb(%struct.sk_buff* %81, %struct.peer_device_statistics* %11, i32 %86)
  %88 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %89 = load %struct.drbd_genlmsghdr*, %struct.drbd_genlmsghdr** %13, align 8
  %90 = call i32 @genlmsg_end(%struct.sk_buff* %88, %struct.drbd_genlmsghdr* %89)
  %91 = load i32, i32* %14, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %106

93:                                               ; preds = %78
  %94 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %95 = load i32, i32* @GFP_NOWAIT, align 4
  %96 = call i32 @drbd_genl_multicast_events(%struct.sk_buff* %94, i32 %95)
  store i32 %96, i32* %15, align 4
  %97 = load i32, i32* %15, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %93
  %100 = load i32, i32* %15, align 4
  %101 = load i32, i32* @ESRCH, align 4
  %102 = sub nsw i32 0, %101
  %103 = icmp ne i32 %100, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  br label %110

105:                                              ; preds = %99, %93
  br label %106

106:                                              ; preds = %105, %78
  br label %115

107:                                              ; preds = %77, %43
  %108 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %109 = call i32 @nlmsg_free(%struct.sk_buff* %108)
  br label %110

110:                                              ; preds = %107, %104, %32
  %111 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %8, align 8
  %112 = load i32, i32* %15, align 4
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @drbd_err(%struct.drbd_peer_device* %111, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %110, %106
  ret void
}

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local %struct.sk_buff* @genlmsg_new(i32, i32) #1

declare dso_local %struct.drbd_genlmsghdr* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local i64 @nla_put_drbd_cfg_context(%struct.sk_buff*, %struct.drbd_resource*, i32, %struct.TYPE_2__*) #1

declare dso_local i64 @nla_put_notification_header(%struct.sk_buff*, i32) #1

declare dso_local i64 @peer_device_info_to_skb(%struct.sk_buff*, %struct.peer_device_info*, i32) #1

declare dso_local i32 @peer_device_to_statistics(%struct.peer_device_statistics*, %struct.drbd_peer_device*) #1

declare dso_local i32 @peer_device_statistics_to_skb(%struct.sk_buff*, %struct.peer_device_statistics*, i32) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, %struct.drbd_genlmsghdr*) #1

declare dso_local i32 @drbd_genl_multicast_events(%struct.sk_buff*, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i32 @drbd_err(%struct.drbd_peer_device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
