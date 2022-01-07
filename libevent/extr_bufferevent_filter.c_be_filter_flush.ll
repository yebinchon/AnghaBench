; ModuleID = '/home/carl/AnghaBench/libevent/extr_bufferevent_filter.c_be_filter_flush.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_bufferevent_filter.c_be_filter_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }
%struct.bufferevent_filtered = type { i32 }

@EV_READ = common dso_local global i16 0, align 2
@EV_WRITE = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bufferevent*, i16, i32)* @be_filter_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_filter_flush(%struct.bufferevent* %0, i16 signext %1, i32 %2) #0 {
  %4 = alloca %struct.bufferevent*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  %7 = alloca %struct.bufferevent_filtered*, align 8
  %8 = alloca i32, align 4
  store %struct.bufferevent* %0, %struct.bufferevent** %4, align 8
  store i16 %1, i16* %5, align 2
  store i32 %2, i32* %6, align 4
  %9 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %10 = call %struct.bufferevent_filtered* @upcast(%struct.bufferevent* %9)
  store %struct.bufferevent_filtered* %10, %struct.bufferevent_filtered** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %7, align 8
  %12 = call i32 @EVUTIL_ASSERT(%struct.bufferevent_filtered* %11)
  %13 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %14 = call i32 @bufferevent_incref_and_lock_(%struct.bufferevent* %13)
  %15 = load i16, i16* %5, align 2
  %16 = sext i16 %15 to i32
  %17 = load i16, i16* @EV_READ, align 2
  %18 = sext i16 %17 to i32
  %19 = and i32 %16, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %7, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @be_filter_process_input(%struct.bufferevent_filtered* %22, i32 %23, i32* %8)
  br label %25

25:                                               ; preds = %21, %3
  %26 = load i16, i16* %5, align 2
  %27 = sext i16 %26 to i32
  %28 = load i16, i16* @EV_WRITE, align 2
  %29 = sext i16 %28 to i32
  %30 = and i32 %27, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %7, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @be_filter_process_output(%struct.bufferevent_filtered* %33, i32 %34, i32* %8)
  br label %36

36:                                               ; preds = %32, %25
  %37 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %7, align 8
  %38 = getelementptr inbounds %struct.bufferevent_filtered, %struct.bufferevent_filtered* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i16, i16* %5, align 2
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @bufferevent_flush(i32 %39, i16 signext %40, i32 %41)
  %43 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %44 = call i32 @bufferevent_decref_and_unlock_(%struct.bufferevent* %43)
  %45 = load i32, i32* %8, align 4
  ret i32 %45
}

declare dso_local %struct.bufferevent_filtered* @upcast(%struct.bufferevent*) #1

declare dso_local i32 @EVUTIL_ASSERT(%struct.bufferevent_filtered*) #1

declare dso_local i32 @bufferevent_incref_and_lock_(%struct.bufferevent*) #1

declare dso_local i32 @be_filter_process_input(%struct.bufferevent_filtered*, i32, i32*) #1

declare dso_local i32 @be_filter_process_output(%struct.bufferevent_filtered*, i32, i32*) #1

declare dso_local i32 @bufferevent_flush(i32, i16 signext, i32) #1

declare dso_local i32 @bufferevent_decref_and_unlock_(%struct.bufferevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
