; ModuleID = '/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_nl.c_nl_sendmsg.c'
source_filename = "/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_nl.c_nl_sendmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nl_sock = type { i32, %struct.nl_cb*, i32 }
%struct.nl_cb = type { i64* }
%struct.nl_msg = type { i32 }
%struct.msghdr = type { i32, %struct.iovec* }
%struct.iovec = type { i8*, i32 }
%struct.TYPE_2__ = type { i32 }

@NL_CB_MSG_OUT = common dso_local global i64 0, align 8
@NL_OK = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nl_sendmsg(%struct.nl_sock* %0, %struct.nl_msg* %1, %struct.msghdr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nl_sock*, align 8
  %6 = alloca %struct.nl_msg*, align 8
  %7 = alloca %struct.msghdr*, align 8
  %8 = alloca %struct.nl_cb*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.iovec, align 8
  store %struct.nl_sock* %0, %struct.nl_sock** %5, align 8
  store %struct.nl_msg* %1, %struct.nl_msg** %6, align 8
  store %struct.msghdr* %2, %struct.msghdr** %7, align 8
  %11 = getelementptr inbounds %struct.iovec, %struct.iovec* %10, i32 0, i32 0
  %12 = load %struct.nl_msg*, %struct.nl_msg** %6, align 8
  %13 = call %struct.TYPE_2__* @nlmsg_hdr(%struct.nl_msg* %12)
  %14 = bitcast %struct.TYPE_2__* %13 to i8*
  store i8* %14, i8** %11, align 8
  %15 = getelementptr inbounds %struct.iovec, %struct.iovec* %10, i32 0, i32 1
  %16 = load %struct.nl_msg*, %struct.nl_msg** %6, align 8
  %17 = call %struct.TYPE_2__* @nlmsg_hdr(%struct.nl_msg* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %15, align 8
  %20 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %21 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %20, i32 0, i32 1
  store %struct.iovec* %10, %struct.iovec** %21, align 8
  %22 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %23 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load %struct.nl_msg*, %struct.nl_msg** %6, align 8
  %25 = load %struct.nl_sock*, %struct.nl_sock** %5, align 8
  %26 = getelementptr inbounds %struct.nl_sock, %struct.nl_sock* %25, i32 0, i32 2
  %27 = call i32 @nlmsg_set_src(%struct.nl_msg* %24, i32* %26)
  %28 = load %struct.nl_sock*, %struct.nl_sock** %5, align 8
  %29 = getelementptr inbounds %struct.nl_sock, %struct.nl_sock* %28, i32 0, i32 1
  %30 = load %struct.nl_cb*, %struct.nl_cb** %29, align 8
  store %struct.nl_cb* %30, %struct.nl_cb** %8, align 8
  %31 = load %struct.nl_cb*, %struct.nl_cb** %8, align 8
  %32 = getelementptr inbounds %struct.nl_cb, %struct.nl_cb* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = load i64, i64* @NL_CB_MSG_OUT, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %3
  %39 = load %struct.nl_cb*, %struct.nl_cb** %8, align 8
  %40 = load i64, i64* @NL_CB_MSG_OUT, align 8
  %41 = load %struct.nl_msg*, %struct.nl_msg** %6, align 8
  %42 = call i64 @nl_cb_call(%struct.nl_cb* %39, i64 %40, %struct.nl_msg* %41)
  %43 = load i64, i64* @NL_OK, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %61

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %46, %3
  %48 = load %struct.nl_sock*, %struct.nl_sock** %5, align 8
  %49 = getelementptr inbounds %struct.nl_sock, %struct.nl_sock* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %52 = call i32 @sendmsg(i32 %50, %struct.msghdr* %51, i32 0)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %47
  %56 = load i32, i32* @errno, align 4
  %57 = call i32 @nl_syserr2nlerr(i32 %56)
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %61

59:                                               ; preds = %47
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %59, %55, %45
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local %struct.TYPE_2__* @nlmsg_hdr(%struct.nl_msg*) #1

declare dso_local i32 @nlmsg_set_src(%struct.nl_msg*, i32*) #1

declare dso_local i64 @nl_cb_call(%struct.nl_cb*, i64, %struct.nl_msg*) #1

declare dso_local i32 @sendmsg(i32, %struct.msghdr*, i32) #1

declare dso_local i32 @nl_syserr2nlerr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
