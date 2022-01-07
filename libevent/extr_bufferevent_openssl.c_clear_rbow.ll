; ModuleID = '/home/carl/AnghaBench/libevent/extr_bufferevent_openssl.c_clear_rbow.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_bufferevent_openssl.c_clear_rbow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent_openssl = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.bufferevent }
%struct.bufferevent = type { i32 }

@EV_WRITE = common dso_local global i32 0, align 4
@EV_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bufferevent_openssl*)* @clear_rbow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clear_rbow(%struct.bufferevent_openssl* %0) #0 {
  %2 = alloca %struct.bufferevent_openssl*, align 8
  %3 = alloca %struct.bufferevent*, align 8
  %4 = alloca i32, align 4
  store %struct.bufferevent_openssl* %0, %struct.bufferevent_openssl** %2, align 8
  %5 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %2, align 8
  %6 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store %struct.bufferevent* %7, %struct.bufferevent** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %2, align 8
  %9 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %8, i32 0, i32 0
  store i64 0, i64* %9, align 8
  %10 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %11 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @EV_WRITE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %2, align 8
  %18 = call i32 @stop_writing(%struct.bufferevent_openssl* %17)
  br label %19

19:                                               ; preds = %16, %1
  %20 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %21 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @EV_READ, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %2, align 8
  %28 = call i32 @start_reading(%struct.bufferevent_openssl* %27)
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %26, %19
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @stop_writing(%struct.bufferevent_openssl*) #1

declare dso_local i32 @start_reading(%struct.bufferevent_openssl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
