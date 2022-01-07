; ModuleID = '/home/carl/AnghaBench/libevent/extr_bufferevent_openssl.c_set_open_callbacks.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_bufferevent_openssl.c_set_open_callbacks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent_openssl = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { %struct.bufferevent }
%struct.bufferevent = type { i32, i32, i32, i32, i32 }

@be_openssl_readcb = common dso_local global i32 0, align 4
@be_openssl_writecb = common dso_local global i32 0, align 4
@be_openssl_eventcb = common dso_local global i32 0, align 4
@EV_READ = common dso_local global i32 0, align 4
@EV_WRITE = common dso_local global i32 0, align 4
@EV_PERSIST = common dso_local global i32 0, align 4
@EV_FINALIZE = common dso_local global i32 0, align 4
@be_openssl_readeventcb = common dso_local global i32 0, align 4
@be_openssl_writeeventcb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bufferevent_openssl*, i32)* @set_open_callbacks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_open_callbacks(%struct.bufferevent_openssl* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bufferevent_openssl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bufferevent*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bufferevent_openssl* %0, %struct.bufferevent_openssl** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %12 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %2
  %16 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %17 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* @be_openssl_readcb, align 4
  %20 = load i32, i32* @be_openssl_writecb, align 4
  %21 = load i32, i32* @be_openssl_eventcb, align 4
  %22 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %23 = call i32 @bufferevent_setcb(i64 %18, i32 %19, i32 %20, i32 %21, %struct.bufferevent_openssl* %22)
  store i32 0, i32* %3, align 4
  br label %103

24:                                               ; preds = %2
  %25 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %26 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store %struct.bufferevent* %27, %struct.bufferevent** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %28 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %29 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %28, i32 0, i32 3
  %30 = call i64 @event_initialized(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %24
  %33 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %34 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %33, i32 0, i32 3
  %35 = load i32, i32* @EV_READ, align 4
  %36 = call i32 @event_pending(i32* %34, i32 %35, i32* null)
  store i32 %36, i32* %7, align 4
  %37 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %38 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %37, i32 0, i32 1
  %39 = load i32, i32* @EV_WRITE, align 4
  %40 = call i32 @event_pending(i32* %38, i32 %39, i32* null)
  store i32 %40, i32* %8, align 4
  %41 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %42 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %41, i32 0, i32 3
  %43 = call i32 @event_del(i32* %42)
  %44 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %45 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %44, i32 0, i32 1
  %46 = call i32 @event_del(i32* %45)
  br label %47

47:                                               ; preds = %32, %24
  %48 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %49 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %48, i32 0, i32 3
  %50 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %51 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @EV_READ, align 4
  %55 = load i32, i32* @EV_PERSIST, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @EV_FINALIZE, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @be_openssl_readeventcb, align 4
  %60 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %61 = call i32 @event_assign(i32* %49, i32 %52, i32 %53, i32 %58, i32 %59, %struct.bufferevent_openssl* %60)
  %62 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %63 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %62, i32 0, i32 1
  %64 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %65 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @EV_WRITE, align 4
  %69 = load i32, i32* @EV_PERSIST, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @EV_FINALIZE, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @be_openssl_writeeventcb, align 4
  %74 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %75 = call i32 @event_assign(i32* %63, i32 %66, i32 %67, i32 %72, i32 %73, %struct.bufferevent_openssl* %74)
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %47
  %79 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %80 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %79, i32 0, i32 3
  %81 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %82 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %81, i32 0, i32 2
  %83 = call i32 @bufferevent_add_event_(i32* %80, i32* %82)
  store i32 %83, i32* %9, align 4
  br label %84

84:                                               ; preds = %78, %47
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %84
  %88 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %89 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %88, i32 0, i32 1
  %90 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %91 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %90, i32 0, i32 0
  %92 = call i32 @bufferevent_add_event_(i32* %89, i32* %91)
  store i32 %92, i32* %10, align 4
  br label %93

93:                                               ; preds = %87, %84
  %94 = load i32, i32* %9, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %93
  %97 = load i32, i32* %10, align 4
  %98 = icmp slt i32 %97, 0
  br label %99

99:                                               ; preds = %96, %93
  %100 = phi i1 [ true, %93 ], [ %98, %96 ]
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i32 -1, i32 0
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %99, %15
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @bufferevent_setcb(i64, i32, i32, i32, %struct.bufferevent_openssl*) #1

declare dso_local i64 @event_initialized(i32*) #1

declare dso_local i32 @event_pending(i32*, i32, i32*) #1

declare dso_local i32 @event_del(i32*) #1

declare dso_local i32 @event_assign(i32*, i32, i32, i32, i32, %struct.bufferevent_openssl*) #1

declare dso_local i32 @bufferevent_add_event_(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
