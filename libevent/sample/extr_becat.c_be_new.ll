; ModuleID = '/home/carl/AnghaBench/libevent/sample/extr_becat.c_be_new.c'
source_filename = "/home/carl/AnghaBench/libevent/sample/extr_becat.c_be_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }
%struct.context = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.event_base = type { i32 }

@BEV_OPT_CLOSE_ON_FREE = common dso_local global i32 0, align 4
@BUFFEREVENT_SSL_CONNECTING = common dso_local global i32 0, align 4
@BUFFEREVENT_SSL_ACCEPTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bufferevent* (%struct.context*, %struct.event_base*, i32)* @be_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bufferevent* @be_new(%struct.context* %0, %struct.event_base* %1, i32 %2) #0 {
  %4 = alloca %struct.bufferevent*, align 8
  %5 = alloca %struct.context*, align 8
  %6 = alloca %struct.event_base*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.bufferevent*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.context* %0, %struct.context** %5, align 8
  store %struct.event_base* %1, %struct.event_base** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* null, i32** %8, align 8
  store %struct.bufferevent* null, %struct.bufferevent** %9, align 8
  %12 = load i32, i32* @BEV_OPT_CLOSE_ON_FREE, align 4
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* @BUFFEREVENT_SSL_CONNECTING, align 4
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @BUFFEREVENT_SSL_ACCEPTING, align 4
  store i32 %17, i32* %11, align 4
  br label %18

18:                                               ; preds = %16, %3
  %19 = load %struct.context*, %struct.context** %5, align 8
  %20 = getelementptr inbounds %struct.context, %struct.context* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %60

26:                                               ; preds = %18
  %27 = load %struct.context*, %struct.context** %5, align 8
  %28 = getelementptr inbounds %struct.context, %struct.context* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32* @SSL_new(i32 %30)
  store i32* %31, i32** %8, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %26
  br label %85

35:                                               ; preds = %26
  %36 = load i32*, i32** %8, align 8
  %37 = load %struct.context*, %struct.context** %5, align 8
  %38 = getelementptr inbounds %struct.context, %struct.context* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @SSL_use_certificate(i32* %36, i32 %40)
  %42 = icmp ne i32 %41, 1
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %85

44:                                               ; preds = %35
  %45 = load i32*, i32** %8, align 8
  %46 = load %struct.context*, %struct.context** %5, align 8
  %47 = getelementptr inbounds %struct.context, %struct.context* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @SSL_use_PrivateKey(i32* %45, i32 %49)
  %51 = icmp ne i32 %50, 1
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  br label %85

53:                                               ; preds = %44
  %54 = load %struct.event_base*, %struct.event_base** %6, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load i32*, i32** %8, align 8
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call %struct.bufferevent* @bufferevent_openssl_socket_new(%struct.event_base* %54, i32 %55, i32* %56, i32 %57, i32 %58)
  store %struct.bufferevent* %59, %struct.bufferevent** %9, align 8
  br label %65

60:                                               ; preds = %18
  %61 = load %struct.event_base*, %struct.event_base** %6, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %10, align 4
  %64 = call %struct.bufferevent* @bufferevent_socket_new(%struct.event_base* %61, i32 %62, i32 %63)
  store %struct.bufferevent* %64, %struct.bufferevent** %9, align 8
  br label %65

65:                                               ; preds = %60, %53
  %66 = load %struct.context*, %struct.context** %5, align 8
  %67 = getelementptr inbounds %struct.context, %struct.context* %66, i32 0, i32 0
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, -1
  br i1 %71, label %72, label %83

72:                                               ; preds = %65
  %73 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %74 = load %struct.context*, %struct.context** %5, align 8
  %75 = getelementptr inbounds %struct.context, %struct.context* %74, i32 0, i32 0
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @bufferevent_set_max_single_read(%struct.bufferevent* %73, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %72
  br label %85

82:                                               ; preds = %72
  br label %83

83:                                               ; preds = %82, %65
  %84 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  store %struct.bufferevent* %84, %struct.bufferevent** %4, align 8
  br label %92

85:                                               ; preds = %81, %52, %43, %34
  %86 = load i32*, i32** %8, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i32*, i32** %8, align 8
  %90 = call i32 @SSL_free(i32* %89)
  br label %91

91:                                               ; preds = %88, %85
  store %struct.bufferevent* null, %struct.bufferevent** %4, align 8
  br label %92

92:                                               ; preds = %91, %83
  %93 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  ret %struct.bufferevent* %93
}

declare dso_local i32* @SSL_new(i32) #1

declare dso_local i32 @SSL_use_certificate(i32*, i32) #1

declare dso_local i32 @SSL_use_PrivateKey(i32*, i32) #1

declare dso_local %struct.bufferevent* @bufferevent_openssl_socket_new(%struct.event_base*, i32, i32*, i32, i32) #1

declare dso_local %struct.bufferevent* @bufferevent_socket_new(%struct.event_base*, i32, i32) #1

declare dso_local i64 @bufferevent_set_max_single_read(%struct.bufferevent*, i32) #1

declare dso_local i32 @SSL_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
