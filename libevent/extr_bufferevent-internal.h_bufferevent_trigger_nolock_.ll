; ModuleID = '/home/carl/AnghaBench/libevent/extr_bufferevent-internal.h_bufferevent_trigger_nolock_.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_bufferevent-internal.h_bufferevent_trigger_nolock_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { %struct.TYPE_4__, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@EV_READ = common dso_local global i16 0, align 2
@BEV_TRIG_IGNORE_WATERMARKS = common dso_local global i32 0, align 4
@EV_WRITE = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bufferevent*, i16, i32)* @bufferevent_trigger_nolock_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bufferevent_trigger_nolock_(%struct.bufferevent* %0, i16 signext %1, i32 %2) #0 {
  %4 = alloca %struct.bufferevent*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  store %struct.bufferevent* %0, %struct.bufferevent** %4, align 8
  store i16 %1, i16* %5, align 2
  store i32 %2, i32* %6, align 4
  %7 = load i16, i16* %5, align 2
  %8 = sext i16 %7 to i32
  %9 = load i16, i16* @EV_READ, align 2
  %10 = sext i16 %9 to i32
  %11 = and i32 %8, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %32

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @BEV_TRIG_IGNORE_WATERMARKS, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %13
  %19 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %20 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @evbuffer_get_length(i32 %21)
  %23 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %24 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sge i64 %22, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %18, %13
  %29 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @bufferevent_run_readcb_(%struct.bufferevent* %29, i32 %30)
  br label %32

32:                                               ; preds = %28, %18, %3
  %33 = load i16, i16* %5, align 2
  %34 = sext i16 %33 to i32
  %35 = load i16, i16* @EV_WRITE, align 2
  %36 = sext i16 %35 to i32
  %37 = and i32 %34, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %58

39:                                               ; preds = %32
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @BEV_TRIG_IGNORE_WATERMARKS, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %39
  %45 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %46 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @evbuffer_get_length(i32 %47)
  %49 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %50 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp sle i64 %48, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %44, %39
  %55 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @bufferevent_run_writecb_(%struct.bufferevent* %55, i32 %56)
  br label %58

58:                                               ; preds = %54, %44, %32
  ret void
}

declare dso_local i64 @evbuffer_get_length(i32) #1

declare dso_local i32 @bufferevent_run_readcb_(%struct.bufferevent*, i32) #1

declare dso_local i32 @bufferevent_run_writecb_(%struct.bufferevent*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
