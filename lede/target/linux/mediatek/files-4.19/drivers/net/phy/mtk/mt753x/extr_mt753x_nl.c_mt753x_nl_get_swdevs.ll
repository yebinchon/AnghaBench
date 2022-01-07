; ModuleID = '/home/carl/AnghaBench/lede/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt753x_nl.c_mt753x_nl_get_swdevs.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt753x_nl.c_mt753x_nl_get_swdevs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genl_info = type { i32 }
%struct.gsw_mt753x = type { i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"No switch registered\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MT753X_CMD_REPLY = common dso_local global i32 0, align 4
@MT753X_ATTR_TYPE_MESG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.genl_info*, %struct.gsw_mt753x*)* @mt753x_nl_get_swdevs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt753x_nl_get_swdevs(%struct.genl_info* %0, %struct.gsw_mt753x* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.genl_info*, align 8
  %5 = alloca %struct.gsw_mt753x*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca [512 x i8], align 16
  %8 = alloca i32, align 4
  store %struct.genl_info* %0, %struct.genl_info** %4, align 8
  store %struct.gsw_mt753x* %1, %struct.gsw_mt753x** %5, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  %9 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %10 = call i32 @mt753x_nl_list_devs(i8* %9, i32 512)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = call i32 @pr_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %44

17:                                               ; preds = %2
  %18 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %19 = load i32, i32* @MT753X_CMD_REPLY, align 4
  %20 = call i32 @mt753x_nl_prepare_reply(%struct.genl_info* %18, i32 %19, %struct.sk_buff** %6)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %36

24:                                               ; preds = %17
  %25 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %26 = load i32, i32* @MT753X_ATTR_TYPE_MESG, align 4
  %27 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %28 = call i32 @nla_put_string(%struct.sk_buff* %25, i32 %26, i8* %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %36

32:                                               ; preds = %24
  %33 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %34 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %35 = call i32 @mt753x_nl_send_reply(%struct.sk_buff* %33, %struct.genl_info* %34)
  store i32 %35, i32* %3, align 4
  br label %44

36:                                               ; preds = %31, %23
  %37 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %38 = icmp ne %struct.sk_buff* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %41 = call i32 @nlmsg_free(%struct.sk_buff* %40)
  br label %42

42:                                               ; preds = %39, %36
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %42, %32, %13
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @mt753x_nl_list_devs(i8*, i32) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @mt753x_nl_prepare_reply(%struct.genl_info*, i32, %struct.sk_buff**) #1

declare dso_local i32 @nla_put_string(%struct.sk_buff*, i32, i8*) #1

declare dso_local i32 @mt753x_nl_send_reply(%struct.sk_buff*, %struct.genl_info*) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
