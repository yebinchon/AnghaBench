; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_test-fdleak.c_server_event_cb.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_test-fdleak.c_server_event_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }

@BEV_EVENT_ERROR = common dso_local global i16 0, align 2
@.str = private unnamed_addr constant [23 x i8] c"Error from bufferevent\00", align 1
@BEV_EVENT_EOF = common dso_local global i16 0, align 2
@num_requests = common dso_local global i64 0, align 8
@MAX_REQUESTS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bufferevent*, i16, i8*)* @server_event_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @server_event_cb(%struct.bufferevent* %0, i16 signext %1, i8* %2) #0 {
  %4 = alloca %struct.bufferevent*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  store %struct.bufferevent* %0, %struct.bufferevent** %4, align 8
  store i16 %1, i16* %5, align 2
  store i8* %2, i8** %6, align 8
  %7 = load i16, i16* %5, align 2
  %8 = sext i16 %7 to i32
  %9 = load i16, i16* @BEV_EVENT_ERROR, align 2
  %10 = sext i16 %9 to i32
  %11 = and i32 %8, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = call i32 @my_perror(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @exit(i32 1) #3
  unreachable

16:                                               ; preds = %3
  %17 = load i16, i16* %5, align 2
  %18 = sext i16 %17 to i32
  %19 = load i16, i16* @BEV_EVENT_EOF, align 2
  %20 = sext i16 %19 to i32
  %21 = and i32 %18, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %16
  %24 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %25 = call i32 @bufferevent_free(%struct.bufferevent* %24)
  %26 = load i64, i64* @num_requests, align 8
  %27 = load i64, i64* @MAX_REQUESTS, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %31 = call i32 @bufferevent_get_base(%struct.bufferevent* %30)
  %32 = call i32 @event_base_loopbreak(i32 %31)
  br label %33

33:                                               ; preds = %29, %23
  br label %34

34:                                               ; preds = %33, %16
  br label %35

35:                                               ; preds = %34
  ret void
}

declare dso_local i32 @my_perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @bufferevent_free(%struct.bufferevent*) #1

declare dso_local i32 @event_base_loopbreak(i32) #1

declare dso_local i32 @bufferevent_get_base(%struct.bufferevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
