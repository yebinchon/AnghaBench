; ModuleID = '/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_unl.c_unl_nl80211_wdev_to_phy.c'
source_filename = "/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_unl.c_unl_nl80211_wdev_to_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unl = type { i32 }
%struct.nl_msg = type { i32 }
%struct.nlattr = type { i32 }

@NL80211_CMD_GET_INTERFACE = common dso_local global i32 0, align 4
@NL80211_ATTR_IFINDEX = common dso_local global i32 0, align 4
@NL80211_ATTR_WIPHY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unl_nl80211_wdev_to_phy(%struct.unl* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.unl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nl_msg*, align 8
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca i32, align 4
  store %struct.unl* %0, %struct.unl** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 -1, i32* %8, align 4
  %9 = load %struct.unl*, %struct.unl** %4, align 8
  %10 = load i32, i32* @NL80211_CMD_GET_INTERFACE, align 4
  %11 = call %struct.nl_msg* @unl_genl_msg(%struct.unl* %9, i32 %10, i32 0)
  store %struct.nl_msg* %11, %struct.nl_msg** %6, align 8
  %12 = load %struct.nl_msg*, %struct.nl_msg** %6, align 8
  %13 = icmp ne %struct.nl_msg* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %41

15:                                               ; preds = %2
  %16 = load %struct.nl_msg*, %struct.nl_msg** %6, align 8
  %17 = load i32, i32* @NL80211_ATTR_IFINDEX, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @NLA_PUT_U32(%struct.nl_msg* %16, i32 %17, i32 %18)
  %20 = load %struct.unl*, %struct.unl** %4, align 8
  %21 = load %struct.nl_msg*, %struct.nl_msg** %6, align 8
  %22 = call i64 @unl_genl_request_single(%struct.unl* %20, %struct.nl_msg* %21, %struct.nl_msg** %6)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  store i32 -1, i32* %3, align 4
  br label %41

25:                                               ; preds = %15
  %26 = load %struct.unl*, %struct.unl** %4, align 8
  %27 = load %struct.nl_msg*, %struct.nl_msg** %6, align 8
  %28 = load i32, i32* @NL80211_ATTR_WIPHY, align 4
  %29 = call %struct.nlattr* @unl_find_attr(%struct.unl* %26, %struct.nl_msg* %27, i32 %28)
  store %struct.nlattr* %29, %struct.nlattr** %7, align 8
  %30 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %31 = icmp ne %struct.nlattr* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %25
  br label %36

33:                                               ; preds = %25
  %34 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %35 = call i32 @nla_get_u32(%struct.nlattr* %34)
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %33, %32
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.nl_msg*, %struct.nl_msg** %6, align 8
  %39 = call i32 @nlmsg_free(%struct.nl_msg* %38)
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %37, %24, %14
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.nl_msg* @unl_genl_msg(%struct.unl*, i32, i32) #1

declare dso_local i32 @NLA_PUT_U32(%struct.nl_msg*, i32, i32) #1

declare dso_local i64 @unl_genl_request_single(%struct.unl*, %struct.nl_msg*, %struct.nl_msg**) #1

declare dso_local %struct.nlattr* @unl_find_attr(%struct.unl*, %struct.nl_msg*, i32) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local i32 @nlmsg_free(%struct.nl_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
