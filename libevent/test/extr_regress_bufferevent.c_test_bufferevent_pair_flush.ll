; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_regress_bufferevent.c_test_bufferevent_pair_flush.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_regress_bufferevent.c_test_bufferevent_pair_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.basic_test_data = type { i32 }
%struct.bufferevent = type { i32 }

@EV_WRITE = common dso_local global i32 0, align 4
@EV_READ = common dso_local global i32 0, align 4
@pair_flush_eventcb = common dso_local global i32 0, align 4
@BEV_FINISHED = common dso_local global i32 0, align 4
@EVLOOP_ONCE = common dso_local global i32 0, align 4
@BEV_EVENT_READING = common dso_local global i32 0, align 4
@BEV_EVENT_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @test_bufferevent_pair_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_bufferevent_pair_flush(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.basic_test_data*, align 8
  %4 = alloca [2 x %struct.bufferevent*], align 16
  %5 = alloca %struct.bufferevent*, align 8
  %6 = alloca %struct.bufferevent*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.basic_test_data*
  store %struct.basic_test_data* %9, %struct.basic_test_data** %3, align 8
  store %struct.bufferevent* null, %struct.bufferevent** %5, align 8
  store %struct.bufferevent* null, %struct.bufferevent** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %11 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds [2 x %struct.bufferevent*], [2 x %struct.bufferevent*]* %4, i64 0, i64 0
  %14 = call i64 @bufferevent_pair_new(i32 %12, i32 0, %struct.bufferevent** %13)
  %15 = icmp eq i64 0, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @tt_assert(i32 %16)
  %18 = getelementptr inbounds [2 x %struct.bufferevent*], [2 x %struct.bufferevent*]* %4, i64 0, i64 0
  %19 = load %struct.bufferevent*, %struct.bufferevent** %18, align 16
  store %struct.bufferevent* %19, %struct.bufferevent** %5, align 8
  %20 = getelementptr inbounds [2 x %struct.bufferevent*], [2 x %struct.bufferevent*]* %4, i64 0, i64 1
  %21 = load %struct.bufferevent*, %struct.bufferevent** %20, align 8
  store %struct.bufferevent* %21, %struct.bufferevent** %6, align 8
  %22 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %23 = load i32, i32* @EV_WRITE, align 4
  %24 = call i64 @bufferevent_enable(%struct.bufferevent* %22, i32 %23)
  %25 = icmp eq i64 0, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @tt_assert(i32 %26)
  %28 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %29 = load i32, i32* @EV_READ, align 4
  %30 = call i64 @bufferevent_enable(%struct.bufferevent* %28, i32 %29)
  %31 = icmp eq i64 0, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @tt_assert(i32 %32)
  %34 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %35 = load i32, i32* @pair_flush_eventcb, align 4
  %36 = call i32 @bufferevent_setcb(%struct.bufferevent* %34, i32* null, i32* null, i32 %35, i32* %7)
  %37 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %38 = load i32, i32* @EV_WRITE, align 4
  %39 = load i32, i32* @BEV_FINISHED, align 4
  %40 = call i32 @bufferevent_flush(%struct.bufferevent* %37, i32 %38, i32 %39)
  %41 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %42 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @EVLOOP_ONCE, align 4
  %45 = call i32 @event_base_loop(i32 %43, i32 %44)
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @BEV_EVENT_READING, align 4
  %48 = load i32, i32* @BEV_EVENT_EOF, align 4
  %49 = or i32 %47, %48
  %50 = icmp eq i32 %46, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @tt_assert(i32 %51)
  br label %53

53:                                               ; preds = %1
  %54 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %55 = icmp ne %struct.bufferevent* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %58 = call i32 @bufferevent_free(%struct.bufferevent* %57)
  br label %59

59:                                               ; preds = %56, %53
  %60 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %61 = icmp ne %struct.bufferevent* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %64 = call i32 @bufferevent_free(%struct.bufferevent* %63)
  br label %65

65:                                               ; preds = %62, %59
  ret void
}

declare dso_local i32 @tt_assert(i32) #1

declare dso_local i64 @bufferevent_pair_new(i32, i32, %struct.bufferevent**) #1

declare dso_local i64 @bufferevent_enable(%struct.bufferevent*, i32) #1

declare dso_local i32 @bufferevent_setcb(%struct.bufferevent*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @bufferevent_flush(%struct.bufferevent*, i32, i32) #1

declare dso_local i32 @event_base_loop(i32, i32) #1

declare dso_local i32 @bufferevent_free(%struct.bufferevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
