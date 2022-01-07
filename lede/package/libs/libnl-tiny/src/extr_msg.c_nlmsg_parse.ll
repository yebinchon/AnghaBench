; ModuleID = '/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_msg.c_nlmsg_parse.c'
source_filename = "/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_msg.c_nlmsg_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlmsghdr = type { i32 }
%struct.nlattr = type { i32 }
%struct.nla_policy = type { i32 }

@NLE_MSG_TOOSHORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nlmsg_parse(%struct.nlmsghdr* %0, i32 %1, %struct.nlattr** %2, i32 %3, %struct.nla_policy* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nlmsghdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nlattr**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.nla_policy*, align 8
  store %struct.nlmsghdr* %0, %struct.nlmsghdr** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.nlattr** %2, %struct.nlattr*** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.nla_policy* %4, %struct.nla_policy** %11, align 8
  %12 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @nlmsg_valid_hdr(%struct.nlmsghdr* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %5
  %17 = load i32, i32* @NLE_MSG_TOOSHORT, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %6, align 4
  br label %30

19:                                               ; preds = %5
  %20 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %21 = load i32, i32* %10, align 4
  %22 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @nlmsg_attrdata(%struct.nlmsghdr* %22, i32 %23)
  %25 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @nlmsg_attrlen(%struct.nlmsghdr* %25, i32 %26)
  %28 = load %struct.nla_policy*, %struct.nla_policy** %11, align 8
  %29 = call i32 @nla_parse(%struct.nlattr** %20, i32 %21, i32 %24, i32 %27, %struct.nla_policy* %28)
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %19, %16
  %31 = load i32, i32* %6, align 4
  ret i32 %31
}

declare dso_local i32 @nlmsg_valid_hdr(%struct.nlmsghdr*, i32) #1

declare dso_local i32 @nla_parse(%struct.nlattr**, i32, i32, i32, %struct.nla_policy*) #1

declare dso_local i32 @nlmsg_attrdata(%struct.nlmsghdr*, i32) #1

declare dso_local i32 @nlmsg_attrlen(%struct.nlmsghdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
