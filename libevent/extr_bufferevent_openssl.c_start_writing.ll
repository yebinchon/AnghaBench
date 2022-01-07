; ModuleID = '/home/carl/AnghaBench/libevent/extr_bufferevent_openssl.c_start_writing.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_bufferevent_openssl.c_start_writing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent_openssl = type { i64, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { %struct.bufferevent }
%struct.bufferevent = type { i32, i32, i32, i32 }

@BEV_SUSPEND_FILT_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bufferevent_openssl*)* @start_writing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_writing(%struct.bufferevent_openssl* %0) #0 {
  %2 = alloca %struct.bufferevent_openssl*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.bufferevent*, align 8
  store %struct.bufferevent_openssl* %0, %struct.bufferevent_openssl** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %2, align 8
  %6 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %1
  %10 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %2, align 8
  %11 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %2, align 8
  %16 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* @BEV_SUSPEND_FILT_READ, align 4
  %19 = call i32 @bufferevent_unsuspend_read_(i64 %17, i32 %18)
  br label %20

20:                                               ; preds = %14, %9
  br label %44

21:                                               ; preds = %1
  %22 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %2, align 8
  %23 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store %struct.bufferevent* %24, %struct.bufferevent** %4, align 8
  %25 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %26 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %25, i32 0, i32 3
  %27 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %28 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %27, i32 0, i32 2
  %29 = call i32 @bufferevent_add_event_(i32* %26, i32* %28)
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %43, label %32

32:                                               ; preds = %21
  %33 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %2, align 8
  %34 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %39 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %38, i32 0, i32 1
  %40 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %41 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %40, i32 0, i32 0
  %42 = call i32 @bufferevent_add_event_(i32* %39, i32* %41)
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %37, %32, %21
  br label %44

44:                                               ; preds = %43, %20
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @bufferevent_unsuspend_read_(i64, i32) #1

declare dso_local i32 @bufferevent_add_event_(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
