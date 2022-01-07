; ModuleID = '/home/carl/AnghaBench/libevent/extr_bufferevent_openssl.c_set_handshake_callbacks.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_bufferevent_openssl.c_set_handshake_callbacks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent_openssl = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { %struct.bufferevent }
%struct.bufferevent = type { i32, i32, i32, i32 }

@be_openssl_handshakecb = common dso_local global i32 0, align 4
@be_openssl_eventcb = common dso_local global i32 0, align 4
@EV_READ = common dso_local global i32 0, align 4
@EV_PERSIST = common dso_local global i32 0, align 4
@EV_FINALIZE = common dso_local global i32 0, align 4
@be_openssl_handshakeeventcb = common dso_local global i32 0, align 4
@EV_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bufferevent_openssl*, i64)* @set_handshake_callbacks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_handshake_callbacks(%struct.bufferevent_openssl* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bufferevent_openssl*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.bufferevent*, align 8
  store %struct.bufferevent_openssl* %0, %struct.bufferevent_openssl** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %8 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %34

11:                                               ; preds = %2
  %12 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %13 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* @be_openssl_handshakecb, align 4
  %16 = load i32, i32* @be_openssl_handshakecb, align 4
  %17 = load i32, i32* @be_openssl_eventcb, align 4
  %18 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %19 = call i32 @bufferevent_setcb(i64 %14, i32 %15, i32 %16, i32 %17, %struct.bufferevent_openssl* %18)
  %20 = load i64, i64* %5, align 8
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %87

23:                                               ; preds = %11
  %24 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %25 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = call i64 @bufferevent_setfd(i64 %26, i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store i32 1, i32* %3, align 4
  br label %87

31:                                               ; preds = %23
  %32 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %33 = call i32 @do_handshake(%struct.bufferevent_openssl* %32)
  store i32 %33, i32* %3, align 4
  br label %87

34:                                               ; preds = %2
  %35 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %36 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store %struct.bufferevent* %37, %struct.bufferevent** %6, align 8
  %38 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %39 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %38, i32 0, i32 3
  %40 = call i64 @event_initialized(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %34
  %43 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %44 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %43, i32 0, i32 3
  %45 = call i32 @event_del(i32* %44)
  %46 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %47 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %46, i32 0, i32 2
  %48 = call i32 @event_del(i32* %47)
  br label %49

49:                                               ; preds = %42, %34
  %50 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %51 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %50, i32 0, i32 3
  %52 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %53 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i64, i64* %5, align 8
  %56 = load i32, i32* @EV_READ, align 4
  %57 = load i32, i32* @EV_PERSIST, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @EV_FINALIZE, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @be_openssl_handshakeeventcb, align 4
  %62 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %63 = call i32 @event_assign(i32* %51, i32 %54, i64 %55, i32 %60, i32 %61, %struct.bufferevent_openssl* %62)
  %64 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %65 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %64, i32 0, i32 2
  %66 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %67 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i64, i64* %5, align 8
  %70 = load i32, i32* @EV_WRITE, align 4
  %71 = load i32, i32* @EV_PERSIST, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @EV_FINALIZE, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @be_openssl_handshakeeventcb, align 4
  %76 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %77 = call i32 @event_assign(i32* %65, i32 %68, i64 %69, i32 %74, i32 %75, %struct.bufferevent_openssl* %76)
  %78 = load i64, i64* %5, align 8
  %79 = icmp sge i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %49
  %81 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %82 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %83 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @bufferevent_enable(%struct.bufferevent* %81, i32 %84)
  br label %86

86:                                               ; preds = %80, %49
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %86, %31, %30, %22
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @bufferevent_setcb(i64, i32, i32, i32, %struct.bufferevent_openssl*) #1

declare dso_local i64 @bufferevent_setfd(i64, i64) #1

declare dso_local i32 @do_handshake(%struct.bufferevent_openssl*) #1

declare dso_local i64 @event_initialized(i32*) #1

declare dso_local i32 @event_del(i32*) #1

declare dso_local i32 @event_assign(i32*, i32, i64, i32, i32, %struct.bufferevent_openssl*) #1

declare dso_local i32 @bufferevent_enable(%struct.bufferevent*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
