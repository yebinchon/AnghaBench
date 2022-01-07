; ModuleID = '/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_msg.c_nlmsg_put.c'
source_filename = "/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_msg.c_nlmsg_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlmsghdr = type { i32, i32, i8*, i8* }
%struct.nl_msg = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@NLMSG_HDRLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [64 x i8] c"msg %p: Added netlink header type=%d, flags=%d, pid=%d, seq=%d\0A\00", align 1
@NLMSG_ALIGNTO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nlmsghdr* @nlmsg_put(%struct.nl_msg* %0, i8* %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.nlmsghdr*, align 8
  %8 = alloca %struct.nl_msg*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.nlmsghdr*, align 8
  store %struct.nl_msg* %0, %struct.nl_msg** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load %struct.nl_msg*, %struct.nl_msg** %8, align 8
  %16 = getelementptr inbounds %struct.nl_msg, %struct.nl_msg* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @NLMSG_HDRLEN, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %6
  %23 = call i32 (...) @BUG()
  br label %24

24:                                               ; preds = %22, %6
  %25 = load %struct.nl_msg*, %struct.nl_msg** %8, align 8
  %26 = getelementptr inbounds %struct.nl_msg, %struct.nl_msg* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = bitcast %struct.TYPE_2__* %27 to %struct.nlmsghdr*
  store %struct.nlmsghdr* %28, %struct.nlmsghdr** %14, align 8
  %29 = load i32, i32* %11, align 4
  %30 = load %struct.nlmsghdr*, %struct.nlmsghdr** %14, align 8
  %31 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* %13, align 4
  %33 = load %struct.nlmsghdr*, %struct.nlmsghdr** %14, align 8
  %34 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load i8*, i8** %9, align 8
  %36 = load %struct.nlmsghdr*, %struct.nlmsghdr** %14, align 8
  %37 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %36, i32 0, i32 3
  store i8* %35, i8** %37, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = load %struct.nlmsghdr*, %struct.nlmsghdr** %14, align 8
  %40 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %39, i32 0, i32 2
  store i8* %38, i8** %40, align 8
  %41 = load %struct.nl_msg*, %struct.nl_msg** %8, align 8
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %13, align 4
  %44 = load i8*, i8** %9, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = call i32 @NL_DBG(i32 2, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), %struct.nl_msg* %41, i32 %42, i32 %43, i8* %44, i8* %45)
  %47 = load i32, i32* %12, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %24
  %50 = load %struct.nl_msg*, %struct.nl_msg** %8, align 8
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* @NLMSG_ALIGNTO, align 4
  %53 = call i32* @nlmsg_reserve(%struct.nl_msg* %50, i32 %51, i32 %52)
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  store %struct.nlmsghdr* null, %struct.nlmsghdr** %7, align 8
  br label %58

56:                                               ; preds = %49, %24
  %57 = load %struct.nlmsghdr*, %struct.nlmsghdr** %14, align 8
  store %struct.nlmsghdr* %57, %struct.nlmsghdr** %7, align 8
  br label %58

58:                                               ; preds = %56, %55
  %59 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  ret %struct.nlmsghdr* %59
}

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @NL_DBG(i32, i8*, %struct.nl_msg*, i32, i32, i8*, i8*) #1

declare dso_local i32* @nlmsg_reserve(%struct.nl_msg*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
