; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_nl.c_notify_helper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_nl.c_notify_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_device = type { i32, %struct.drbd_resource* }
%struct.drbd_resource = type { i32 }
%struct.drbd_connection = type { %struct.drbd_resource* }
%struct.drbd_helper_info = type { i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.drbd_genlmsghdr = type { i32, i32 }

@notify_genl_seq = common dso_local global i32 0, align 4
@NLMSG_GOODSIZE = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@drbd_genl_family = common dso_local global i32 0, align 4
@DRBD_HELPER = common dso_local global i32 0, align 4
@NO_ERROR = common dso_local global i32 0, align 4
@notification_mutex = common dso_local global i32 0, align 4
@GFP_NOWAIT = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Error %d while broadcasting event. Event seq:%u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @notify_helper(i32 %0, %struct.drbd_device* %1, %struct.drbd_connection* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.drbd_device*, align 8
  %8 = alloca %struct.drbd_connection*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.drbd_resource*, align 8
  %12 = alloca %struct.drbd_helper_info, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca %struct.drbd_genlmsghdr*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.drbd_device* %1, %struct.drbd_device** %7, align 8
  store %struct.drbd_connection* %2, %struct.drbd_connection** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %17 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %18 = icmp ne %struct.drbd_device* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %5
  %20 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %21 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %20, i32 0, i32 1
  %22 = load %struct.drbd_resource*, %struct.drbd_resource** %21, align 8
  br label %27

23:                                               ; preds = %5
  %24 = load %struct.drbd_connection*, %struct.drbd_connection** %8, align 8
  %25 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %24, i32 0, i32 0
  %26 = load %struct.drbd_resource*, %struct.drbd_resource** %25, align 8
  br label %27

27:                                               ; preds = %23, %19
  %28 = phi %struct.drbd_resource* [ %22, %19 ], [ %26, %23 ]
  store %struct.drbd_resource* %28, %struct.drbd_resource** %11, align 8
  %29 = call i32 @atomic_inc_return(i32* @notify_genl_seq)
  store i32 %29, i32* %13, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %14, align 8
  %30 = getelementptr inbounds %struct.drbd_helper_info, %struct.drbd_helper_info* %12, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i8*, i8** %9, align 8
  %33 = call i32 @strlcpy(i32 %31, i8* %32, i32 4)
  %34 = load i8*, i8** %9, align 8
  %35 = call i32 @strlen(i8* %34)
  %36 = call i32 @min(i32 %35, i32 4)
  %37 = getelementptr inbounds %struct.drbd_helper_info, %struct.drbd_helper_info* %12, i32 0, i32 1
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* %10, align 4
  %39 = getelementptr inbounds %struct.drbd_helper_info, %struct.drbd_helper_info* %12, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* @NLMSG_GOODSIZE, align 4
  %41 = load i32, i32* @GFP_NOIO, align 4
  %42 = call %struct.sk_buff* @genlmsg_new(i32 %40, i32 %41)
  store %struct.sk_buff* %42, %struct.sk_buff** %14, align 8
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %16, align 4
  %45 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %46 = icmp ne %struct.sk_buff* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %27
  br label %109

48:                                               ; preds = %27
  %49 = load i32, i32* @EMSGSIZE, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %16, align 4
  %51 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* @DRBD_HELPER, align 4
  %54 = call %struct.drbd_genlmsghdr* @genlmsg_put(%struct.sk_buff* %51, i32 0, i32 %52, i32* @drbd_genl_family, i32 0, i32 %53)
  store %struct.drbd_genlmsghdr* %54, %struct.drbd_genlmsghdr** %15, align 8
  %55 = load %struct.drbd_genlmsghdr*, %struct.drbd_genlmsghdr** %15, align 8
  %56 = icmp ne %struct.drbd_genlmsghdr* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %48
  br label %109

58:                                               ; preds = %48
  %59 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %60 = icmp ne %struct.drbd_device* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %63 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  br label %66

65:                                               ; preds = %58
  br label %66

66:                                               ; preds = %65, %61
  %67 = phi i32 [ %64, %61 ], [ -1, %65 ]
  %68 = load %struct.drbd_genlmsghdr*, %struct.drbd_genlmsghdr** %15, align 8
  %69 = getelementptr inbounds %struct.drbd_genlmsghdr, %struct.drbd_genlmsghdr* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @NO_ERROR, align 4
  %71 = load %struct.drbd_genlmsghdr*, %struct.drbd_genlmsghdr** %15, align 8
  %72 = getelementptr inbounds %struct.drbd_genlmsghdr, %struct.drbd_genlmsghdr* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = call i32 @mutex_lock(i32* @notification_mutex)
  %74 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %75 = load %struct.drbd_resource*, %struct.drbd_resource** %11, align 8
  %76 = load %struct.drbd_connection*, %struct.drbd_connection** %8, align 8
  %77 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %78 = call i64 @nla_put_drbd_cfg_context(%struct.sk_buff* %74, %struct.drbd_resource* %75, %struct.drbd_connection* %76, %struct.drbd_device* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %89, label %80

80:                                               ; preds = %66
  %81 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %82 = load i32, i32* %6, align 4
  %83 = call i64 @nla_put_notification_header(%struct.sk_buff* %81, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %80
  %86 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %87 = call i64 @drbd_helper_info_to_skb(%struct.sk_buff* %86, %struct.drbd_helper_info* %12, i32 1)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %85, %80, %66
  br label %107

90:                                               ; preds = %85
  %91 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %92 = load %struct.drbd_genlmsghdr*, %struct.drbd_genlmsghdr** %15, align 8
  %93 = call i32 @genlmsg_end(%struct.sk_buff* %91, %struct.drbd_genlmsghdr* %92)
  %94 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %95 = load i32, i32* @GFP_NOWAIT, align 4
  %96 = call i32 @drbd_genl_multicast_events(%struct.sk_buff* %94, i32 %95)
  store i32 %96, i32* %16, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %14, align 8
  %97 = load i32, i32* %16, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %90
  %100 = load i32, i32* %16, align 4
  %101 = load i32, i32* @ESRCH, align 4
  %102 = sub nsw i32 0, %101
  %103 = icmp ne i32 %100, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  br label %107

105:                                              ; preds = %99, %90
  %106 = call i32 @mutex_unlock(i32* @notification_mutex)
  br label %116

107:                                              ; preds = %104, %89
  %108 = call i32 @mutex_unlock(i32* @notification_mutex)
  br label %109

109:                                              ; preds = %107, %57, %47
  %110 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %111 = call i32 @nlmsg_free(%struct.sk_buff* %110)
  %112 = load %struct.drbd_resource*, %struct.drbd_resource** %11, align 8
  %113 = load i32, i32* %16, align 4
  %114 = load i32, i32* %13, align 4
  %115 = call i32 @drbd_err(%struct.drbd_resource* %112, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %113, i32 %114)
  br label %116

116:                                              ; preds = %109, %105
  ret void
}

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.sk_buff* @genlmsg_new(i32, i32) #1

declare dso_local %struct.drbd_genlmsghdr* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @nla_put_drbd_cfg_context(%struct.sk_buff*, %struct.drbd_resource*, %struct.drbd_connection*, %struct.drbd_device*) #1

declare dso_local i64 @nla_put_notification_header(%struct.sk_buff*, i32) #1

declare dso_local i64 @drbd_helper_info_to_skb(%struct.sk_buff*, %struct.drbd_helper_info*, i32) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, %struct.drbd_genlmsghdr*) #1

declare dso_local i32 @drbd_genl_multicast_events(%struct.sk_buff*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i32 @drbd_err(%struct.drbd_resource*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
