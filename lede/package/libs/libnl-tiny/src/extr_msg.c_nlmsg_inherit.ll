; ModuleID = '/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_msg.c_nlmsg_inherit.c'
source_filename = "/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_msg.c_nlmsg_inherit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nl_msg = type { %struct.nlmsghdr* }
%struct.nlmsghdr = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nl_msg* @nlmsg_inherit(%struct.nlmsghdr* %0) #0 {
  %2 = alloca %struct.nlmsghdr*, align 8
  %3 = alloca %struct.nl_msg*, align 8
  %4 = alloca %struct.nlmsghdr*, align 8
  store %struct.nlmsghdr* %0, %struct.nlmsghdr** %2, align 8
  %5 = call %struct.nl_msg* (...) @nlmsg_alloc()
  store %struct.nl_msg* %5, %struct.nl_msg** %3, align 8
  %6 = load %struct.nl_msg*, %struct.nl_msg** %3, align 8
  %7 = icmp ne %struct.nl_msg* %6, null
  br i1 %7, label %8, label %35

8:                                                ; preds = %1
  %9 = load %struct.nlmsghdr*, %struct.nlmsghdr** %2, align 8
  %10 = icmp ne %struct.nlmsghdr* %9, null
  br i1 %10, label %11, label %35

11:                                               ; preds = %8
  %12 = load %struct.nl_msg*, %struct.nl_msg** %3, align 8
  %13 = getelementptr inbounds %struct.nl_msg, %struct.nl_msg* %12, i32 0, i32 0
  %14 = load %struct.nlmsghdr*, %struct.nlmsghdr** %13, align 8
  store %struct.nlmsghdr* %14, %struct.nlmsghdr** %4, align 8
  %15 = load %struct.nlmsghdr*, %struct.nlmsghdr** %2, align 8
  %16 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.nlmsghdr*, %struct.nlmsghdr** %4, align 8
  %19 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 4
  %20 = load %struct.nlmsghdr*, %struct.nlmsghdr** %2, align 8
  %21 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.nlmsghdr*, %struct.nlmsghdr** %4, align 8
  %24 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load %struct.nlmsghdr*, %struct.nlmsghdr** %2, align 8
  %26 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.nlmsghdr*, %struct.nlmsghdr** %4, align 8
  %29 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.nlmsghdr*, %struct.nlmsghdr** %2, align 8
  %31 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.nlmsghdr*, %struct.nlmsghdr** %4, align 8
  %34 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  br label %35

35:                                               ; preds = %11, %8, %1
  %36 = load %struct.nl_msg*, %struct.nl_msg** %3, align 8
  ret %struct.nl_msg* %36
}

declare dso_local %struct.nl_msg* @nlmsg_alloc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
