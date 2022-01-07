; ModuleID = '/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_genl.c_genlmsg_valid_hdr.c'
source_filename = "/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_genl.c_genlmsg_valid_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlmsghdr = type { i32 }
%struct.genlmsghdr = type { i32 }

@GENL_HDRLEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @genlmsg_valid_hdr(%struct.nlmsghdr* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nlmsghdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.genlmsghdr*, align 8
  store %struct.nlmsghdr* %0, %struct.nlmsghdr** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.nlmsghdr*, %struct.nlmsghdr** %4, align 8
  %8 = load i32, i32* @GENL_HDRLEN, align 4
  %9 = call i32 @nlmsg_valid_hdr(%struct.nlmsghdr* %7, i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %22

12:                                               ; preds = %2
  %13 = load %struct.nlmsghdr*, %struct.nlmsghdr** %4, align 8
  %14 = call %struct.genlmsghdr* @nlmsg_data(%struct.nlmsghdr* %13)
  store %struct.genlmsghdr* %14, %struct.genlmsghdr** %6, align 8
  %15 = load %struct.genlmsghdr*, %struct.genlmsghdr** %6, align 8
  %16 = call i64 @genlmsg_len(%struct.genlmsghdr* %15)
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @NLMSG_ALIGN(i32 %17)
  %19 = icmp slt i64 %16, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %22

21:                                               ; preds = %12
  store i32 1, i32* %3, align 4
  br label %22

22:                                               ; preds = %21, %20, %11
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @nlmsg_valid_hdr(%struct.nlmsghdr*, i32) #1

declare dso_local %struct.genlmsghdr* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i64 @genlmsg_len(%struct.genlmsghdr*) #1

declare dso_local i64 @NLMSG_ALIGN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
