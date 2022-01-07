; ModuleID = '/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_nl.c_nl_send_auto_complete.c'
source_filename = "/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_nl.c_nl_send_auto_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nl_sock = type { i32, i32, i32, %struct.TYPE_2__, %struct.nl_cb* }
%struct.TYPE_2__ = type { i64 }
%struct.nl_cb = type { {}* }
%struct.nl_msg = type { i32 }
%struct.nlmsghdr = type { i64, i64, i32 }

@NLM_F_REQUEST = common dso_local global i32 0, align 4
@NL_NO_AUTO_ACK = common dso_local global i32 0, align 4
@NLM_F_ACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nl_send_auto_complete(%struct.nl_sock* %0, %struct.nl_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nl_sock*, align 8
  %5 = alloca %struct.nl_msg*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.nl_cb*, align 8
  store %struct.nl_sock* %0, %struct.nl_sock** %4, align 8
  store %struct.nl_msg* %1, %struct.nl_msg** %5, align 8
  %8 = load %struct.nl_sock*, %struct.nl_sock** %4, align 8
  %9 = getelementptr inbounds %struct.nl_sock, %struct.nl_sock* %8, i32 0, i32 4
  %10 = load %struct.nl_cb*, %struct.nl_cb** %9, align 8
  store %struct.nl_cb* %10, %struct.nl_cb** %7, align 8
  %11 = load %struct.nl_msg*, %struct.nl_msg** %5, align 8
  %12 = call %struct.nlmsghdr* @nlmsg_hdr(%struct.nl_msg* %11)
  store %struct.nlmsghdr* %12, %struct.nlmsghdr** %6, align 8
  %13 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %14 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load %struct.nl_sock*, %struct.nl_sock** %4, align 8
  %19 = getelementptr inbounds %struct.nl_sock, %struct.nl_sock* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %23 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  br label %24

24:                                               ; preds = %17, %2
  %25 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %26 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load %struct.nl_sock*, %struct.nl_sock** %4, align 8
  %31 = getelementptr inbounds %struct.nl_sock, %struct.nl_sock* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 8
  %34 = sext i32 %32 to i64
  %35 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %36 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %29, %24
  %38 = load %struct.nl_msg*, %struct.nl_msg** %5, align 8
  %39 = getelementptr inbounds %struct.nl_msg, %struct.nl_msg* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.nl_sock*, %struct.nl_sock** %4, align 8
  %44 = getelementptr inbounds %struct.nl_sock, %struct.nl_sock* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.nl_msg*, %struct.nl_msg** %5, align 8
  %47 = getelementptr inbounds %struct.nl_msg, %struct.nl_msg* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %42, %37
  %49 = load i32, i32* @NLM_F_REQUEST, align 4
  %50 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %51 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  %54 = load %struct.nl_sock*, %struct.nl_sock** %4, align 8
  %55 = getelementptr inbounds %struct.nl_sock, %struct.nl_sock* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @NL_NO_AUTO_ACK, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %48
  %61 = load i32, i32* @NLM_F_ACK, align 4
  %62 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %63 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 8
  br label %66

66:                                               ; preds = %60, %48
  %67 = load %struct.nl_cb*, %struct.nl_cb** %7, align 8
  %68 = getelementptr inbounds %struct.nl_cb, %struct.nl_cb* %67, i32 0, i32 0
  %69 = bitcast {}** %68 to i32 (%struct.nl_sock*, %struct.nl_msg*)**
  %70 = load i32 (%struct.nl_sock*, %struct.nl_msg*)*, i32 (%struct.nl_sock*, %struct.nl_msg*)** %69, align 8
  %71 = icmp ne i32 (%struct.nl_sock*, %struct.nl_msg*)* %70, null
  br i1 %71, label %72, label %80

72:                                               ; preds = %66
  %73 = load %struct.nl_cb*, %struct.nl_cb** %7, align 8
  %74 = getelementptr inbounds %struct.nl_cb, %struct.nl_cb* %73, i32 0, i32 0
  %75 = bitcast {}** %74 to i32 (%struct.nl_sock*, %struct.nl_msg*)**
  %76 = load i32 (%struct.nl_sock*, %struct.nl_msg*)*, i32 (%struct.nl_sock*, %struct.nl_msg*)** %75, align 8
  %77 = load %struct.nl_sock*, %struct.nl_sock** %4, align 8
  %78 = load %struct.nl_msg*, %struct.nl_msg** %5, align 8
  %79 = call i32 %76(%struct.nl_sock* %77, %struct.nl_msg* %78)
  store i32 %79, i32* %3, align 4
  br label %84

80:                                               ; preds = %66
  %81 = load %struct.nl_sock*, %struct.nl_sock** %4, align 8
  %82 = load %struct.nl_msg*, %struct.nl_msg** %5, align 8
  %83 = call i32 @nl_send(%struct.nl_sock* %81, %struct.nl_msg* %82)
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %80, %72
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local %struct.nlmsghdr* @nlmsg_hdr(%struct.nl_msg*) #1

declare dso_local i32 @nl_send(%struct.nl_sock*, %struct.nl_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
