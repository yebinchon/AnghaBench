; ModuleID = '/home/carl/AnghaBench/libevent/sample/extr_becat.c_accept_cb.c'
source_filename = "/home/carl/AnghaBench/libevent/sample/extr_becat.c_accept_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evconnlistener = type { i32 }
%struct.sockaddr = type { i32 }
%struct.context = type { %struct.bufferevent*, %struct.bufferevent*, %struct.TYPE_4__* }
%struct.bufferevent = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.event_base = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"Accepting %s (fd=%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Cannot make bufferevent for fd=%d\0A\00", align 1
@read_cb = common dso_local global i32 0, align 4
@write_cb = common dso_local global i32 0, align 4
@server_event_cb = common dso_local global i32 0, align 4
@EV_READ = common dso_local global i32 0, align 4
@EV_WRITE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Cannot monitor EV_READ on input\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evconnlistener*, i32, %struct.sockaddr*, i32, i8*)* @accept_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @accept_cb(%struct.evconnlistener* %0, i32 %1, %struct.sockaddr* %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.evconnlistener*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca [128 x i8], align 16
  %12 = alloca %struct.context*, align 8
  %13 = alloca %struct.bufferevent*, align 8
  %14 = alloca %struct.event_base*, align 8
  store %struct.evconnlistener* %0, %struct.evconnlistener** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.sockaddr* %2, %struct.sockaddr** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %15 = load i8*, i8** %10, align 8
  %16 = bitcast i8* %15 to %struct.context*
  store %struct.context* %16, %struct.context** %12, align 8
  store %struct.bufferevent* null, %struct.bufferevent** %13, align 8
  %17 = load %struct.evconnlistener*, %struct.evconnlistener** %6, align 8
  %18 = call %struct.event_base* @evconnlistener_get_base(%struct.evconnlistener* %17)
  store %struct.event_base* %18, %struct.event_base** %14, align 8
  %19 = load %struct.context*, %struct.context** %12, align 8
  %20 = getelementptr inbounds %struct.context, %struct.context* %19, i32 0, i32 2
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %5
  %27 = load %struct.evconnlistener*, %struct.evconnlistener** %6, align 8
  %28 = call i32 @evconnlistener_disable(%struct.evconnlistener* %27)
  br label %29

29:                                               ; preds = %26, %5
  %30 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %31 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %32 = call i32 @evutil_format_sockaddr_port_(%struct.sockaddr* %30, i8* %31, i32 127)
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33)
  %35 = load %struct.context*, %struct.context** %12, align 8
  %36 = load %struct.event_base*, %struct.event_base** %14, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call %struct.bufferevent* @be_new(%struct.context* %35, %struct.event_base* %36, i32 %37)
  store %struct.bufferevent* %38, %struct.bufferevent** %13, align 8
  %39 = load %struct.bufferevent*, %struct.bufferevent** %13, align 8
  %40 = icmp ne %struct.bufferevent* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %29
  %42 = load i32, i32* %7, align 4
  %43 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  br label %75

44:                                               ; preds = %29
  %45 = load %struct.bufferevent*, %struct.bufferevent** %13, align 8
  %46 = load i32, i32* @read_cb, align 4
  %47 = load i32, i32* @write_cb, align 4
  %48 = load i32, i32* @server_event_cb, align 4
  %49 = load %struct.context*, %struct.context** %12, align 8
  %50 = call i32 @bufferevent_setcb(%struct.bufferevent* %45, i32 %46, i32 %47, i32 %48, %struct.context* %49)
  %51 = load %struct.bufferevent*, %struct.bufferevent** %13, align 8
  %52 = load i32, i32* @EV_READ, align 4
  %53 = load i32, i32* @EV_WRITE, align 4
  %54 = or i32 %52, %53
  %55 = call i64 @bufferevent_enable(%struct.bufferevent* %51, i32 %54)
  %56 = load %struct.context*, %struct.context** %12, align 8
  %57 = getelementptr inbounds %struct.context, %struct.context* %56, i32 0, i32 1
  %58 = load %struct.bufferevent*, %struct.bufferevent** %57, align 8
  %59 = icmp ne %struct.bufferevent* %58, null
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = call i32 @EVUTIL_ASSERT(i32 %61)
  %63 = load %struct.bufferevent*, %struct.bufferevent** %13, align 8
  %64 = load %struct.context*, %struct.context** %12, align 8
  %65 = getelementptr inbounds %struct.context, %struct.context* %64, i32 0, i32 1
  store %struct.bufferevent* %63, %struct.bufferevent** %65, align 8
  %66 = load %struct.context*, %struct.context** %12, align 8
  %67 = getelementptr inbounds %struct.context, %struct.context* %66, i32 0, i32 0
  %68 = load %struct.bufferevent*, %struct.bufferevent** %67, align 8
  %69 = load i32, i32* @EV_READ, align 4
  %70 = call i64 @bufferevent_enable(%struct.bufferevent* %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %44
  %73 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %75

74:                                               ; preds = %44
  br label %77

75:                                               ; preds = %72, %41
  %76 = call i32 @be_free(%struct.bufferevent** %13)
  br label %77

77:                                               ; preds = %75, %74
  ret void
}

declare dso_local %struct.event_base* @evconnlistener_get_base(%struct.evconnlistener*) #1

declare dso_local i32 @evconnlistener_disable(%struct.evconnlistener*) #1

declare dso_local i32 @info(i8*, i32, i32) #1

declare dso_local i32 @evutil_format_sockaddr_port_(%struct.sockaddr*, i8*, i32) #1

declare dso_local %struct.bufferevent* @be_new(%struct.context*, %struct.event_base*, i32) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32 @bufferevent_setcb(%struct.bufferevent*, i32, i32, i32, %struct.context*) #1

declare dso_local i64 @bufferevent_enable(%struct.bufferevent*, i32) #1

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

declare dso_local i32 @be_free(%struct.bufferevent**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
