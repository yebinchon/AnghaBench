; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_nl.c_drbd_bcast_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_nl.c_drbd_bcast_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_device = type { i32 }
%struct.sib_info = type { i32 }
%struct.sk_buff = type { i32 }
%struct.drbd_genlmsghdr = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@drbd_genl_seq = common dso_local global i32 0, align 4
@NLMSG_GOODSIZE = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@drbd_genl_family = common dso_local global i32 0, align 4
@DRBD_EVENT = common dso_local global i32 0, align 4
@NO_ERROR = common dso_local global i32 0, align 4
@GFP_NOWAIT = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"Error %d while broadcasting event. Event seq:%u sib_reason:%u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drbd_bcast_event(%struct.drbd_device* %0, %struct.sib_info* %1) #0 {
  %3 = alloca %struct.drbd_device*, align 8
  %4 = alloca %struct.sib_info*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.drbd_genlmsghdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drbd_device* %0, %struct.drbd_device** %3, align 8
  store %struct.sib_info* %1, %struct.sib_info** %4, align 8
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  %11 = call i32 @atomic_inc_return(i32* @drbd_genl_seq)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* @NLMSG_GOODSIZE, align 4
  %13 = load i32, i32* @GFP_NOIO, align 4
  %14 = call %struct.sk_buff* @genlmsg_new(i32 %12, i32 %13)
  store %struct.sk_buff* %14, %struct.sk_buff** %5, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = icmp ne %struct.sk_buff* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %61

18:                                               ; preds = %2
  %19 = load i32, i32* @EMSGSIZE, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %8, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @DRBD_EVENT, align 4
  %24 = call %struct.drbd_genlmsghdr* @genlmsg_put(%struct.sk_buff* %21, i32 0, i32 %22, i32* @drbd_genl_family, i32 0, i32 %23)
  store %struct.drbd_genlmsghdr* %24, %struct.drbd_genlmsghdr** %6, align 8
  %25 = load %struct.drbd_genlmsghdr*, %struct.drbd_genlmsghdr** %6, align 8
  %26 = icmp ne %struct.drbd_genlmsghdr* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %18
  br label %58

28:                                               ; preds = %18
  %29 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %30 = call i32 @device_to_minor(%struct.drbd_device* %29)
  %31 = load %struct.drbd_genlmsghdr*, %struct.drbd_genlmsghdr** %6, align 8
  %32 = getelementptr inbounds %struct.drbd_genlmsghdr, %struct.drbd_genlmsghdr* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @NO_ERROR, align 4
  %34 = load %struct.drbd_genlmsghdr*, %struct.drbd_genlmsghdr** %6, align 8
  %35 = getelementptr inbounds %struct.drbd_genlmsghdr, %struct.drbd_genlmsghdr* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %38 = load %struct.sib_info*, %struct.sib_info** %4, align 8
  %39 = call i64 @nla_put_status_info(%struct.sk_buff* %36, %struct.drbd_device* %37, %struct.sib_info* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %28
  br label %58

42:                                               ; preds = %28
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = load %struct.drbd_genlmsghdr*, %struct.drbd_genlmsghdr** %6, align 8
  %45 = call i32 @genlmsg_end(%struct.sk_buff* %43, %struct.drbd_genlmsghdr* %44)
  %46 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %47 = load i32, i32* @GFP_NOWAIT, align 4
  %48 = call i32 @drbd_genl_multicast_events(%struct.sk_buff* %46, i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %42
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @ESRCH, align 4
  %54 = sub nsw i32 0, %53
  %55 = icmp ne i32 %52, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %61

57:                                               ; preds = %51, %42
  br label %69

58:                                               ; preds = %41, %27
  %59 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %60 = call i32 @nlmsg_free(%struct.sk_buff* %59)
  br label %61

61:                                               ; preds = %58, %56, %17
  %62 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.sib_info*, %struct.sib_info** %4, align 8
  %66 = getelementptr inbounds %struct.sib_info, %struct.sib_info* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @drbd_err(%struct.drbd_device* %62, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %64, i32 %67)
  br label %69

69:                                               ; preds = %61, %57
  ret void
}

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local %struct.sk_buff* @genlmsg_new(i32, i32) #1

declare dso_local %struct.drbd_genlmsghdr* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @device_to_minor(%struct.drbd_device*) #1

declare dso_local i64 @nla_put_status_info(%struct.sk_buff*, %struct.drbd_device*, %struct.sib_info*) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, %struct.drbd_genlmsghdr*) #1

declare dso_local i32 @drbd_genl_multicast_events(%struct.sk_buff*, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i32 @drbd_err(%struct.drbd_device*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
