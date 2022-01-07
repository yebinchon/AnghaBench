; ModuleID = '/home/carl/AnghaBench/libevent/extr_bufferevent_async.c_be_async_enable.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_bufferevent_async.c_be_async_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }
%struct.bufferevent_async = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@EV_READ = common dso_local global i16 0, align 2
@EV_WRITE = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bufferevent*, i16)* @be_async_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_async_enable(%struct.bufferevent* %0, i16 signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bufferevent*, align 8
  %5 = alloca i16, align 2
  %6 = alloca %struct.bufferevent_async*, align 8
  store %struct.bufferevent* %0, %struct.bufferevent** %4, align 8
  store i16 %1, i16* %5, align 2
  %7 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %8 = call %struct.bufferevent_async* @upcast(%struct.bufferevent* %7)
  store %struct.bufferevent_async* %8, %struct.bufferevent_async** %6, align 8
  %9 = load %struct.bufferevent_async*, %struct.bufferevent_async** %6, align 8
  %10 = getelementptr inbounds %struct.bufferevent_async, %struct.bufferevent_async* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %62

14:                                               ; preds = %2
  %15 = load %struct.bufferevent_async*, %struct.bufferevent_async** %6, align 8
  %16 = getelementptr inbounds %struct.bufferevent_async, %struct.bufferevent_async* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %62

21:                                               ; preds = %14
  %22 = load i16, i16* %5, align 2
  %23 = sext i16 %22 to i32
  %24 = load i16, i16* @EV_READ, align 2
  %25 = sext i16 %24 to i32
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %30 = call i32 @BEV_RESET_GENERIC_READ_TIMEOUT(%struct.bufferevent* %29)
  br label %31

31:                                               ; preds = %28, %21
  %32 = load i16, i16* %5, align 2
  %33 = sext i16 %32 to i32
  %34 = load i16, i16* @EV_WRITE, align 2
  %35 = sext i16 %34 to i32
  %36 = and i32 %33, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %40 = call i32 @BEV_RESET_GENERIC_WRITE_TIMEOUT(%struct.bufferevent* %39)
  br label %41

41:                                               ; preds = %38, %31
  %42 = load i16, i16* %5, align 2
  %43 = sext i16 %42 to i32
  %44 = load i16, i16* @EV_READ, align 2
  %45 = sext i16 %44 to i32
  %46 = and i32 %43, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load %struct.bufferevent_async*, %struct.bufferevent_async** %6, align 8
  %50 = call i32 @bev_async_consider_reading(%struct.bufferevent_async* %49)
  br label %51

51:                                               ; preds = %48, %41
  %52 = load i16, i16* %5, align 2
  %53 = sext i16 %52 to i32
  %54 = load i16, i16* @EV_WRITE, align 2
  %55 = sext i16 %54 to i32
  %56 = and i32 %53, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load %struct.bufferevent_async*, %struct.bufferevent_async** %6, align 8
  %60 = call i32 @bev_async_consider_writing(%struct.bufferevent_async* %59)
  br label %61

61:                                               ; preds = %58, %51
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %20, %13
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.bufferevent_async* @upcast(%struct.bufferevent*) #1

declare dso_local i32 @BEV_RESET_GENERIC_READ_TIMEOUT(%struct.bufferevent*) #1

declare dso_local i32 @BEV_RESET_GENERIC_WRITE_TIMEOUT(%struct.bufferevent*) #1

declare dso_local i32 @bev_async_consider_reading(%struct.bufferevent_async*) #1

declare dso_local i32 @bev_async_consider_writing(%struct.bufferevent_async*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
