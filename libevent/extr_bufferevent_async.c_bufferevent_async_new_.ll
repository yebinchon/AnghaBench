; ModuleID = '/home/carl/AnghaBench/libevent/extr_bufferevent_async.c_bufferevent_async_new_.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_bufferevent_async.c_bufferevent_async_new_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i8*, i8* }
%struct.event_base = type { i32 }
%struct.bufferevent_async = type { i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.bufferevent }
%struct.event_iocp_port = type { i32 }

@BEV_OPT_THREADSAFE = common dso_local global i32 0, align 4
@bufferevent_ops_async = common dso_local global i32 0, align 4
@be_async_inbuf_callback = common dso_local global i32 0, align 4
@be_async_outbuf_callback = common dso_local global i32 0, align 4
@connect_complete = common dso_local global i32 0, align 4
@read_complete = common dso_local global i32 0, align 4
@write_complete = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bufferevent* @bufferevent_async_new_(%struct.event_base* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bufferevent*, align 8
  %5 = alloca %struct.event_base*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bufferevent_async*, align 8
  %9 = alloca %struct.bufferevent*, align 8
  %10 = alloca %struct.event_iocp_port*, align 8
  store %struct.event_base* %0, %struct.event_base** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @BEV_OPT_THREADSAFE, align 4
  %12 = load i32, i32* %7, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %7, align 4
  %14 = load %struct.event_base*, %struct.event_base** %5, align 8
  %15 = call %struct.event_iocp_port* @event_base_get_iocp_(%struct.event_base* %14)
  store %struct.event_iocp_port* %15, %struct.event_iocp_port** %10, align 8
  %16 = icmp ne %struct.event_iocp_port* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store %struct.bufferevent* null, %struct.bufferevent** %4, align 8
  br label %107

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %18
  %22 = load %struct.event_iocp_port*, %struct.event_iocp_port** %10, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i64 @event_iocp_port_associate_(%struct.event_iocp_port* %22, i32 %23, i32 1)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = call i32 (...) @GetLastError()
  %28 = call i64 @fatal_error(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store %struct.bufferevent* null, %struct.bufferevent** %4, align 8
  br label %107

31:                                               ; preds = %26
  br label %32

32:                                               ; preds = %31, %21, %18
  %33 = call %struct.bufferevent_async* @mm_calloc(i32 1, i32 40)
  store %struct.bufferevent_async* %33, %struct.bufferevent_async** %8, align 8
  %34 = icmp ne %struct.bufferevent_async* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  store %struct.bufferevent* null, %struct.bufferevent** %4, align 8
  br label %107

36:                                               ; preds = %32
  %37 = load %struct.bufferevent_async*, %struct.bufferevent_async** %8, align 8
  %38 = getelementptr inbounds %struct.bufferevent_async, %struct.bufferevent_async* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store %struct.bufferevent* %39, %struct.bufferevent** %9, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i8* @evbuffer_overlapped_new_(i32 %40)
  %42 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %43 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  %44 = icmp ne i8* %41, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %36
  %46 = load %struct.bufferevent_async*, %struct.bufferevent_async** %8, align 8
  %47 = call i32 @mm_free(%struct.bufferevent_async* %46)
  store %struct.bufferevent* null, %struct.bufferevent** %4, align 8
  br label %107

48:                                               ; preds = %36
  %49 = load i32, i32* %6, align 4
  %50 = call i8* @evbuffer_overlapped_new_(i32 %49)
  %51 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %52 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  %53 = icmp ne i8* %50, null
  br i1 %53, label %61, label %54

54:                                               ; preds = %48
  %55 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %56 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @evbuffer_free(i8* %57)
  %59 = load %struct.bufferevent_async*, %struct.bufferevent_async** %8, align 8
  %60 = call i32 @mm_free(%struct.bufferevent_async* %59)
  store %struct.bufferevent* null, %struct.bufferevent** %4, align 8
  br label %107

61:                                               ; preds = %48
  %62 = load %struct.bufferevent_async*, %struct.bufferevent_async** %8, align 8
  %63 = getelementptr inbounds %struct.bufferevent_async, %struct.bufferevent_async* %62, i32 0, i32 1
  %64 = load %struct.event_base*, %struct.event_base** %5, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i64 @bufferevent_init_common_(%struct.TYPE_2__* %63, %struct.event_base* %64, i32* @bufferevent_ops_async, i32 %65)
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  br label %102

69:                                               ; preds = %61
  %70 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %71 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = load i32, i32* @be_async_inbuf_callback, align 4
  %74 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %75 = call i32 @evbuffer_add_cb(i8* %72, i32 %73, %struct.bufferevent* %74)
  %76 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %77 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = load i32, i32* @be_async_outbuf_callback, align 4
  %80 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %81 = call i32 @evbuffer_add_cb(i8* %78, i32 %79, %struct.bufferevent* %80)
  %82 = load %struct.bufferevent_async*, %struct.bufferevent_async** %8, align 8
  %83 = getelementptr inbounds %struct.bufferevent_async, %struct.bufferevent_async* %82, i32 0, i32 4
  %84 = load i32, i32* @connect_complete, align 4
  %85 = call i32 @event_overlapped_init_(i32* %83, i32 %84)
  %86 = load %struct.bufferevent_async*, %struct.bufferevent_async** %8, align 8
  %87 = getelementptr inbounds %struct.bufferevent_async, %struct.bufferevent_async* %86, i32 0, i32 3
  %88 = load i32, i32* @read_complete, align 4
  %89 = call i32 @event_overlapped_init_(i32* %87, i32 %88)
  %90 = load %struct.bufferevent_async*, %struct.bufferevent_async** %8, align 8
  %91 = getelementptr inbounds %struct.bufferevent_async, %struct.bufferevent_async* %90, i32 0, i32 2
  %92 = load i32, i32* @write_complete, align 4
  %93 = call i32 @event_overlapped_init_(i32* %91, i32 %92)
  %94 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %95 = call i32 @bufferevent_init_generic_timeout_cbs_(%struct.bufferevent* %94)
  %96 = load i32, i32* %6, align 4
  %97 = icmp sge i32 %96, 0
  %98 = zext i1 %97 to i32
  %99 = load %struct.bufferevent_async*, %struct.bufferevent_async** %8, align 8
  %100 = getelementptr inbounds %struct.bufferevent_async, %struct.bufferevent_async* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  store %struct.bufferevent* %101, %struct.bufferevent** %4, align 8
  br label %107

102:                                              ; preds = %68
  %103 = load %struct.bufferevent_async*, %struct.bufferevent_async** %8, align 8
  %104 = getelementptr inbounds %struct.bufferevent_async, %struct.bufferevent_async* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = call i32 @bufferevent_free(%struct.bufferevent* %105)
  store %struct.bufferevent* null, %struct.bufferevent** %4, align 8
  br label %107

107:                                              ; preds = %102, %69, %54, %45, %35, %30, %17
  %108 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  ret %struct.bufferevent* %108
}

declare dso_local %struct.event_iocp_port* @event_base_get_iocp_(%struct.event_base*) #1

declare dso_local i64 @event_iocp_port_associate_(%struct.event_iocp_port*, i32, i32) #1

declare dso_local i64 @fatal_error(i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local %struct.bufferevent_async* @mm_calloc(i32, i32) #1

declare dso_local i8* @evbuffer_overlapped_new_(i32) #1

declare dso_local i32 @mm_free(%struct.bufferevent_async*) #1

declare dso_local i32 @evbuffer_free(i8*) #1

declare dso_local i64 @bufferevent_init_common_(%struct.TYPE_2__*, %struct.event_base*, i32*, i32) #1

declare dso_local i32 @evbuffer_add_cb(i8*, i32, %struct.bufferevent*) #1

declare dso_local i32 @event_overlapped_init_(i32*, i32) #1

declare dso_local i32 @bufferevent_init_generic_timeout_cbs_(%struct.bufferevent*) #1

declare dso_local i32 @bufferevent_free(%struct.bufferevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
