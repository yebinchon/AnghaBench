; ModuleID = '/home/carl/AnghaBench/libevent/extr_bufferevent_openssl.c_be_openssl_readeventcb.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_bufferevent_openssl.c_be_openssl_readeventcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent_openssl = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EV_TIMEOUT = common dso_local global i16 0, align 2
@BEV_EVENT_TIMEOUT = common dso_local global i32 0, align 4
@BEV_EVENT_READING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i16, i8*)* @be_openssl_readeventcb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_openssl_readeventcb(i32 %0, i16 signext %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca %struct.bufferevent_openssl*, align 8
  store i32 %0, i32* %4, align 4
  store i16 %1, i16* %5, align 2
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.bufferevent_openssl*
  store %struct.bufferevent_openssl* %9, %struct.bufferevent_openssl** %7, align 8
  %10 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %7, align 8
  %11 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i32 @bufferevent_incref_and_lock_(i32* %12)
  %14 = load i16, i16* %5, align 2
  %15 = sext i16 %14 to i32
  %16 = load i16, i16* @EV_TIMEOUT, align 2
  %17 = sext i16 %16 to i32
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %3
  %20 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %7, align 8
  %21 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* @BEV_EVENT_TIMEOUT, align 4
  %24 = load i32, i32* @BEV_EVENT_READING, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @bufferevent_run_eventcb_(i32* %22, i32 %25, i32 0)
  br label %30

27:                                               ; preds = %3
  %28 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %7, align 8
  %29 = call i32 @consider_reading(%struct.bufferevent_openssl* %28)
  br label %30

30:                                               ; preds = %27, %19
  %31 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %7, align 8
  %32 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i32 @bufferevent_decref_and_unlock_(i32* %33)
  ret void
}

declare dso_local i32 @bufferevent_incref_and_lock_(i32*) #1

declare dso_local i32 @bufferevent_run_eventcb_(i32*, i32, i32) #1

declare dso_local i32 @consider_reading(%struct.bufferevent_openssl*) #1

declare dso_local i32 @bufferevent_decref_and_unlock_(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
