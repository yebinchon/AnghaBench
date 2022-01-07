; ModuleID = '/home/carl/AnghaBench/libevent/sample/extr_watch-timing.c_on_check.c'
source_filename = "/home/carl/AnghaBench/libevent/sample/extr_watch-timing.c_on_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, x86_fp80 }
%struct.evwatch = type { i32 }
%struct.evwatch_check_cb_info = type { i32 }

@check_time = common dso_local global %struct.timeval zeroinitializer, align 16
@prepare_time = common dso_local global i32 0, align 4
@expected = common dso_local global i32 0, align 4
@delays = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evwatch*, %struct.evwatch_check_cb_info*, i8*)* @on_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_check(%struct.evwatch* %0, %struct.evwatch_check_cb_info* %1, i8* %2) #0 {
  %4 = alloca %struct.evwatch*, align 8
  %5 = alloca %struct.evwatch_check_cb_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.timeval, align 16
  %8 = alloca %struct.timeval, align 16
  store %struct.evwatch* %0, %struct.evwatch** %4, align 8
  store %struct.evwatch_check_cb_info* %1, %struct.evwatch_check_cb_info** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = call i32 @evutil_gettimeofday(%struct.timeval* @check_time, i32* null)
  %10 = call i32 @evutil_timersub(%struct.timeval* @check_time, i32* @prepare_time, %struct.timeval* %7)
  %11 = call i32 @evutil_timersub(%struct.timeval* %7, i32* @expected, %struct.timeval* %8)
  %12 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  %13 = load i64, i64* %12, align 16
  %14 = icmp sge i64 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %3
  %16 = load i32, i32* @delays, align 4
  %17 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  %18 = load i64, i64* %17, align 16
  %19 = sitofp i64 %18 to x86_fp80
  %20 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 1
  %21 = load x86_fp80, x86_fp80* %20, align 16
  %22 = fdiv x86_fp80 %21, 0xK4012F424000000000000
  %23 = fadd x86_fp80 %19, %22
  %24 = fptosi x86_fp80 %23 to i64
  %25 = call i32 @histogram_update(i32 %16, i64 %24)
  br label %26

26:                                               ; preds = %15, %3
  ret void
}

declare dso_local i32 @evutil_gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @evutil_timersub(%struct.timeval*, i32*, %struct.timeval*) #1

declare dso_local i32 @histogram_update(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
