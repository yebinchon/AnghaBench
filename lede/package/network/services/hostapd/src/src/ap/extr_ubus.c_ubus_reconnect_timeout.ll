; ModuleID = '/home/carl/AnghaBench/lede/package/network/services/hostapd/src/src/ap/extr_ubus.c_ubus_reconnect_timeout.c'
source_filename = "/home/carl/AnghaBench/lede/package/network/services/hostapd/src/src/ap/extr_ubus.c_ubus_reconnect_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@ctx = common dso_local global %struct.TYPE_7__* null, align 8
@ubus_receive = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @ubus_reconnect_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ubus_reconnect_timeout(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ctx, align 8
  %6 = call i64 @ubus_reconnect(%struct.TYPE_7__* %5, i32* null)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ctx, align 8
  %10 = call i32 @eloop_register_timeout(i32 1, i32 0, void (i8*, i8*)* @ubus_reconnect_timeout, %struct.TYPE_7__* %9, i32* null)
  br label %19

11:                                               ; preds = %2
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ctx, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @ubus_receive, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ctx, align 8
  %18 = call i32 @eloop_register_read_sock(i32 %15, i32 %16, %struct.TYPE_7__* %17, i32* null)
  br label %19

19:                                               ; preds = %11, %8
  ret void
}

declare dso_local i64 @ubus_reconnect(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @eloop_register_timeout(i32, i32, void (i8*, i8*)*, %struct.TYPE_7__*, i32*) #1

declare dso_local i32 @eloop_register_read_sock(i32, i32, %struct.TYPE_7__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
