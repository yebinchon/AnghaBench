; ModuleID = '/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_msg.c_nlmsg_convert.c'
source_filename = "/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_msg.c_nlmsg_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nl_msg = type { i32 }
%struct.nlmsghdr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nl_msg* @nlmsg_convert(%struct.nlmsghdr* %0) #0 {
  %2 = alloca %struct.nl_msg*, align 8
  %3 = alloca %struct.nlmsghdr*, align 8
  %4 = alloca %struct.nl_msg*, align 8
  store %struct.nlmsghdr* %0, %struct.nlmsghdr** %3, align 8
  %5 = load %struct.nlmsghdr*, %struct.nlmsghdr** %3, align 8
  %6 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @NLMSG_ALIGN(i32 %7)
  %9 = call %struct.nl_msg* @__nlmsg_alloc(i32 %8)
  store %struct.nl_msg* %9, %struct.nl_msg** %4, align 8
  %10 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8
  %11 = icmp ne %struct.nl_msg* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %23

13:                                               ; preds = %1
  %14 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8
  %15 = getelementptr inbounds %struct.nl_msg, %struct.nl_msg* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.nlmsghdr*, %struct.nlmsghdr** %3, align 8
  %18 = load %struct.nlmsghdr*, %struct.nlmsghdr** %3, align 8
  %19 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @memcpy(i32 %16, %struct.nlmsghdr* %17, i32 %20)
  %22 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8
  store %struct.nl_msg* %22, %struct.nl_msg** %2, align 8
  br label %26

23:                                               ; preds = %12
  %24 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8
  %25 = call i32 @nlmsg_free(%struct.nl_msg* %24)
  store %struct.nl_msg* null, %struct.nl_msg** %2, align 8
  br label %26

26:                                               ; preds = %23, %13
  %27 = load %struct.nl_msg*, %struct.nl_msg** %2, align 8
  ret %struct.nl_msg* %27
}

declare dso_local %struct.nl_msg* @__nlmsg_alloc(i32) #1

declare dso_local i32 @NLMSG_ALIGN(i32) #1

declare dso_local i32 @memcpy(i32, %struct.nlmsghdr*, i32) #1

declare dso_local i32 @nlmsg_free(%struct.nl_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
