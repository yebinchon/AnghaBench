; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_nl.c_notify_device_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_nl.c_notify_device_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.drbd_device = type { i32, i32 }
%struct.device_info = type { i32 }
%struct.device_statistics = type { i32 }
%struct.drbd_genlmsghdr = type { i32, i32 }

@notify_genl_seq = common dso_local global i32 0, align 4
@NLMSG_GOODSIZE = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@drbd_genl_family = common dso_local global i32 0, align 4
@DRBD_DEVICE_STATE = common dso_local global i32 0, align 4
@NO_ERROR = common dso_local global i32 0, align 4
@NOTIFY_FLAGS = common dso_local global i32 0, align 4
@NOTIFY_DESTROY = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@GFP_NOWAIT = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Error %d while broadcasting event. Event seq:%u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @notify_device_state(%struct.sk_buff* %0, i32 %1, %struct.drbd_device* %2, %struct.device_info* %3, i32 %4) #0 {
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.drbd_device*, align 8
  %9 = alloca %struct.device_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.device_statistics, align 4
  %12 = alloca %struct.drbd_genlmsghdr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.drbd_device* %2, %struct.drbd_device** %8, align 8
  store %struct.device_info* %3, %struct.device_info** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %13, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = icmp ne %struct.sk_buff* %15, null
  br i1 %16, label %28, label %17

17:                                               ; preds = %5
  %18 = call i32 @atomic_inc_return(i32* @notify_genl_seq)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* @NLMSG_GOODSIZE, align 4
  %20 = load i32, i32* @GFP_NOIO, align 4
  %21 = call %struct.sk_buff* @genlmsg_new(i32 %19, i32 %20)
  store %struct.sk_buff* %21, %struct.sk_buff** %6, align 8
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %14, align 4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %25 = icmp ne %struct.sk_buff* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %17
  br label %104

27:                                               ; preds = %17
  store i32 1, i32* %13, align 4
  br label %28

28:                                               ; preds = %27, %5
  %29 = load i32, i32* @EMSGSIZE, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %14, align 4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @DRBD_DEVICE_STATE, align 4
  %34 = call %struct.drbd_genlmsghdr* @genlmsg_put(%struct.sk_buff* %31, i32 0, i32 %32, i32* @drbd_genl_family, i32 0, i32 %33)
  store %struct.drbd_genlmsghdr* %34, %struct.drbd_genlmsghdr** %12, align 8
  %35 = load %struct.drbd_genlmsghdr*, %struct.drbd_genlmsghdr** %12, align 8
  %36 = icmp ne %struct.drbd_genlmsghdr* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %28
  br label %101

38:                                               ; preds = %28
  %39 = load %struct.drbd_device*, %struct.drbd_device** %8, align 8
  %40 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.drbd_genlmsghdr*, %struct.drbd_genlmsghdr** %12, align 8
  %43 = getelementptr inbounds %struct.drbd_genlmsghdr, %struct.drbd_genlmsghdr* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @NO_ERROR, align 4
  %45 = load %struct.drbd_genlmsghdr*, %struct.drbd_genlmsghdr** %12, align 8
  %46 = getelementptr inbounds %struct.drbd_genlmsghdr, %struct.drbd_genlmsghdr* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %48 = load %struct.drbd_device*, %struct.drbd_device** %8, align 8
  %49 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.drbd_device*, %struct.drbd_device** %8, align 8
  %52 = call i64 @nla_put_drbd_cfg_context(%struct.sk_buff* %47, i32 %50, i32* null, %struct.drbd_device* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %71, label %54

54:                                               ; preds = %38
  %55 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %56 = load i32, i32* %10, align 4
  %57 = call i64 @nla_put_notification_header(%struct.sk_buff* %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %71, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @NOTIFY_FLAGS, align 4
  %62 = xor i32 %61, -1
  %63 = and i32 %60, %62
  %64 = load i32, i32* @NOTIFY_DESTROY, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %59
  %67 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %68 = load %struct.device_info*, %struct.device_info** %9, align 8
  %69 = call i64 @device_info_to_skb(%struct.sk_buff* %67, %struct.device_info* %68, i32 1)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66, %54, %38
  br label %101

72:                                               ; preds = %66, %59
  %73 = load %struct.drbd_device*, %struct.drbd_device** %8, align 8
  %74 = call i32 @device_to_statistics(%struct.device_statistics* %11, %struct.drbd_device* %73)
  %75 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %76 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %77 = call i32 @capable(i32 %76)
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = call i32 @device_statistics_to_skb(%struct.sk_buff* %75, %struct.device_statistics* %11, i32 %80)
  %82 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %83 = load %struct.drbd_genlmsghdr*, %struct.drbd_genlmsghdr** %12, align 8
  %84 = call i32 @genlmsg_end(%struct.sk_buff* %82, %struct.drbd_genlmsghdr* %83)
  %85 = load i32, i32* %13, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %100

87:                                               ; preds = %72
  %88 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %89 = load i32, i32* @GFP_NOWAIT, align 4
  %90 = call i32 @drbd_genl_multicast_events(%struct.sk_buff* %88, i32 %89)
  store i32 %90, i32* %14, align 4
  %91 = load i32, i32* %14, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %87
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* @ESRCH, align 4
  %96 = sub nsw i32 0, %95
  %97 = icmp ne i32 %94, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  br label %104

99:                                               ; preds = %93, %87
  br label %100

100:                                              ; preds = %99, %72
  br label %109

101:                                              ; preds = %71, %37
  %102 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %103 = call i32 @nlmsg_free(%struct.sk_buff* %102)
  br label %104

104:                                              ; preds = %101, %98, %26
  %105 = load %struct.drbd_device*, %struct.drbd_device** %8, align 8
  %106 = load i32, i32* %14, align 4
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @drbd_err(%struct.drbd_device* %105, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %104, %100
  ret void
}

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local %struct.sk_buff* @genlmsg_new(i32, i32) #1

declare dso_local %struct.drbd_genlmsghdr* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local i64 @nla_put_drbd_cfg_context(%struct.sk_buff*, i32, i32*, %struct.drbd_device*) #1

declare dso_local i64 @nla_put_notification_header(%struct.sk_buff*, i32) #1

declare dso_local i64 @device_info_to_skb(%struct.sk_buff*, %struct.device_info*, i32) #1

declare dso_local i32 @device_to_statistics(%struct.device_statistics*, %struct.drbd_device*) #1

declare dso_local i32 @device_statistics_to_skb(%struct.sk_buff*, %struct.device_statistics*, i32) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, %struct.drbd_genlmsghdr*) #1

declare dso_local i32 @drbd_genl_multicast_events(%struct.sk_buff*, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i32 @drbd_err(%struct.drbd_device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
