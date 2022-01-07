; ModuleID = '/home/carl/AnghaBench/lede/package/network/config/swconfig/src/extr_swlib.c_list_switch.c'
source_filename = "/home/carl/AnghaBench/lede/package/network/config/swconfig/src/extr_swlib.c_list_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nl_msg = type { i32 }
%struct.genlmsghdr = type { i32 }

@tb = common dso_local global i32* null, align 8
@SWITCH_ATTR_MAX = common dso_local global i32 0, align 4
@SWITCH_ATTR_DEV_NAME = common dso_local global i64 0, align 8
@SWITCH_ATTR_NAME = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"Found: %s - %s\0A\00", align 1
@SWITCH_ATTR_ALIAS = common dso_local global i64 0, align 8
@NL_SKIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nl_msg*, i8*)* @list_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @list_switch(%struct.nl_msg* %0, i8* %1) #0 {
  %3 = alloca %struct.nl_msg*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.genlmsghdr*, align 8
  store %struct.nl_msg* %0, %struct.nl_msg** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.nl_msg*, %struct.nl_msg** %3, align 8
  %7 = call i32 @nlmsg_hdr(%struct.nl_msg* %6)
  %8 = call %struct.genlmsghdr* @nlmsg_data(i32 %7)
  store %struct.genlmsghdr* %8, %struct.genlmsghdr** %5, align 8
  %9 = load i32*, i32** @tb, align 8
  %10 = load i32, i32* @SWITCH_ATTR_MAX, align 4
  %11 = load %struct.genlmsghdr*, %struct.genlmsghdr** %5, align 8
  %12 = call i32 @genlmsg_attrdata(%struct.genlmsghdr* %11, i32 0)
  %13 = load %struct.genlmsghdr*, %struct.genlmsghdr** %5, align 8
  %14 = call i32 @genlmsg_attrlen(%struct.genlmsghdr* %13, i32 0)
  %15 = call i64 @nla_parse(i32* %9, i32 %10, i32 %12, i32 %14, i32* null)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %43

18:                                               ; preds = %2
  %19 = load i32*, i32** @tb, align 8
  %20 = load i64, i64* @SWITCH_ATTR_DEV_NAME, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load i32*, i32** @tb, align 8
  %26 = load i64, i64* @SWITCH_ATTR_NAME, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %24, %18
  br label %43

31:                                               ; preds = %24
  %32 = load i32*, i32** @tb, align 8
  %33 = load i64, i64* @SWITCH_ATTR_DEV_NAME, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @nla_get_string(i32 %35)
  %37 = load i32*, i32** @tb, align 8
  %38 = load i64, i64* @SWITCH_ATTR_ALIAS, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @nla_get_string(i32 %40)
  %42 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %36, i8* %41)
  br label %43

43:                                               ; preds = %31, %30, %17
  %44 = load i32, i32* @NL_SKIP, align 4
  ret i32 %44
}

declare dso_local %struct.genlmsghdr* @nlmsg_data(i32) #1

declare dso_local i32 @nlmsg_hdr(%struct.nl_msg*) #1

declare dso_local i64 @nla_parse(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @genlmsg_attrdata(%struct.genlmsghdr*, i32) #1

declare dso_local i32 @genlmsg_attrlen(%struct.genlmsghdr*, i32) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

declare dso_local i8* @nla_get_string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
