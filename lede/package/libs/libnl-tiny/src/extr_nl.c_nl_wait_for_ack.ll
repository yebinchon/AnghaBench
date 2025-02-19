; ModuleID = '/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_nl.c_nl_wait_for_ack.c'
source_filename = "/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_nl.c_nl_wait_for_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nl_sock = type { i32 }
%struct.nl_cb = type { i32 }

@NLE_NOMEM = common dso_local global i32 0, align 4
@NL_CB_ACK = common dso_local global i32 0, align 4
@NL_CB_CUSTOM = common dso_local global i32 0, align 4
@ack_wait_handler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nl_wait_for_ack(%struct.nl_sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nl_sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nl_cb*, align 8
  store %struct.nl_sock* %0, %struct.nl_sock** %3, align 8
  %6 = load %struct.nl_sock*, %struct.nl_sock** %3, align 8
  %7 = getelementptr inbounds %struct.nl_sock, %struct.nl_sock* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.nl_cb* @nl_cb_clone(i32 %8)
  store %struct.nl_cb* %9, %struct.nl_cb** %5, align 8
  %10 = load %struct.nl_cb*, %struct.nl_cb** %5, align 8
  %11 = icmp eq %struct.nl_cb* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @NLE_NOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %27

15:                                               ; preds = %1
  %16 = load %struct.nl_cb*, %struct.nl_cb** %5, align 8
  %17 = load i32, i32* @NL_CB_ACK, align 4
  %18 = load i32, i32* @NL_CB_CUSTOM, align 4
  %19 = load i32, i32* @ack_wait_handler, align 4
  %20 = call i32 @nl_cb_set(%struct.nl_cb* %16, i32 %17, i32 %18, i32 %19, i32* null)
  %21 = load %struct.nl_sock*, %struct.nl_sock** %3, align 8
  %22 = load %struct.nl_cb*, %struct.nl_cb** %5, align 8
  %23 = call i32 @nl_recvmsgs(%struct.nl_sock* %21, %struct.nl_cb* %22)
  store i32 %23, i32* %4, align 4
  %24 = load %struct.nl_cb*, %struct.nl_cb** %5, align 8
  %25 = call i32 @nl_cb_put(%struct.nl_cb* %24)
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %15, %12
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local %struct.nl_cb* @nl_cb_clone(i32) #1

declare dso_local i32 @nl_cb_set(%struct.nl_cb*, i32, i32, i32, i32*) #1

declare dso_local i32 @nl_recvmsgs(%struct.nl_sock*, %struct.nl_cb*) #1

declare dso_local i32 @nl_cb_put(%struct.nl_cb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
