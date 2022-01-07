; ModuleID = '/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_msg.c_nlmsg_validate.c'
source_filename = "/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_msg.c_nlmsg_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlmsghdr = type { i32 }
%struct.nla_policy = type { i32 }

@NLE_MSG_TOOSHORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nlmsg_validate(%struct.nlmsghdr* %0, i32 %1, i32 %2, %struct.nla_policy* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nla_policy*, align 8
  store %struct.nlmsghdr* %0, %struct.nlmsghdr** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.nla_policy* %3, %struct.nla_policy** %9, align 8
  %10 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @nlmsg_valid_hdr(%struct.nlmsghdr* %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* @NLE_MSG_TOOSHORT, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %5, align 4
  br label %27

17:                                               ; preds = %4
  %18 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @nlmsg_attrdata(%struct.nlmsghdr* %18, i32 %19)
  %21 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @nlmsg_attrlen(%struct.nlmsghdr* %21, i32 %22)
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.nla_policy*, %struct.nla_policy** %9, align 8
  %26 = call i32 @nla_validate(i32 %20, i32 %23, i32 %24, %struct.nla_policy* %25)
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %17, %14
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

declare dso_local i32 @nlmsg_valid_hdr(%struct.nlmsghdr*, i32) #1

declare dso_local i32 @nla_validate(i32, i32, i32, %struct.nla_policy*) #1

declare dso_local i32 @nlmsg_attrdata(%struct.nlmsghdr*, i32) #1

declare dso_local i32 @nlmsg_attrlen(%struct.nlmsghdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
