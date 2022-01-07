; ModuleID = '/home/carl/AnghaBench/libevent/extr_bufferevent_ratelim.c_bufferevent_set_max_single_read.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_bufferevent_ratelim.c_bufferevent_set_max_single_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }
%struct.bufferevent_private = type { i64 }

@EV_SSIZE_MAX = common dso_local global i64 0, align 8
@MAX_SINGLE_READ_DEFAULT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bufferevent_set_max_single_read(%struct.bufferevent* %0, i64 %1) #0 {
  %3 = alloca %struct.bufferevent*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.bufferevent_private*, align 8
  %6 = alloca i32, align 4
  store %struct.bufferevent* %0, %struct.bufferevent** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %8 = call i32 @BEV_LOCK(%struct.bufferevent* %7)
  %9 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %10 = call %struct.bufferevent_private* @BEV_UPCAST(%struct.bufferevent* %9)
  store %struct.bufferevent_private* %10, %struct.bufferevent_private** %5, align 8
  %11 = load i64, i64* %4, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @EV_SSIZE_MAX, align 8
  %16 = icmp ugt i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %13, %2
  %18 = load i64, i64* @MAX_SINGLE_READ_DEFAULT, align 8
  %19 = load %struct.bufferevent_private*, %struct.bufferevent_private** %5, align 8
  %20 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  br label %25

21:                                               ; preds = %13
  %22 = load i64, i64* %4, align 8
  %23 = load %struct.bufferevent_private*, %struct.bufferevent_private** %5, align 8
  %24 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  br label %25

25:                                               ; preds = %21, %17
  %26 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %27 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.bufferevent_private*, %struct.bufferevent_private** %5, align 8
  %30 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @evbuffer_set_max_read(i32 %28, i64 %31)
  store i32 %32, i32* %6, align 4
  %33 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %34 = call i32 @BEV_UNLOCK(%struct.bufferevent* %33)
  %35 = load i32, i32* %6, align 4
  ret i32 %35
}

declare dso_local i32 @BEV_LOCK(%struct.bufferevent*) #1

declare dso_local %struct.bufferevent_private* @BEV_UPCAST(%struct.bufferevent*) #1

declare dso_local i32 @evbuffer_set_max_read(i32, i64) #1

declare dso_local i32 @BEV_UNLOCK(%struct.bufferevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
