; ModuleID = '/home/carl/AnghaBench/libevent/sample/extr_time-test.c_timeout_cb.c'
source_filename = "/home/carl/AnghaBench/libevent/sample/extr_time-test.c_timeout_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { double, double }
%struct.event = type { i32 }

@lasttime = common dso_local global %struct.timeval zeroinitializer, align 8
@.str = private unnamed_addr constant [48 x i8] c"timeout_cb called at %d: %.3f seconds elapsed.\0A\00", align 1
@event_is_persistent = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i16, i8*)* @timeout_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timeout_cb(i32 %0, i16 signext %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca %struct.timeval, align 8
  %8 = alloca %struct.timeval, align 8
  %9 = alloca %struct.event*, align 8
  %10 = alloca double, align 8
  %11 = alloca %struct.timeval, align 8
  store i32 %0, i32* %4, align 4
  store i16 %1, i16* %5, align 2
  store i8* %2, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.event*
  store %struct.event* %13, %struct.event** %9, align 8
  %14 = call i32 @evutil_gettimeofday(%struct.timeval* %7, i32* null)
  %15 = call i32 @evutil_timersub(%struct.timeval* %7, %struct.timeval* @lasttime, %struct.timeval* %8)
  %16 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  %17 = load double, double* %16, align 8
  %18 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 1
  %19 = load double, double* %18, align 8
  %20 = fdiv double %19, 1.000000e+06
  %21 = fadd double %17, %20
  store double %21, double* %10, align 8
  %22 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %23 = load double, double* %22, align 8
  %24 = fptosi double %23 to i32
  %25 = load double, double* %10, align 8
  %26 = call i32 @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %24, double %25)
  %27 = bitcast %struct.timeval* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.timeval* @lasttime to i8*), i8* align 8 %27, i64 16, i1 false)
  %28 = load i32, i32* @event_is_persistent, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %3
  %31 = call i32 @evutil_timerclear(%struct.timeval* %11)
  %32 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 0
  store double 2.000000e+00, double* %32, align 8
  %33 = load %struct.event*, %struct.event** %9, align 8
  %34 = call i32 @event_add(%struct.event* %33, %struct.timeval* %11)
  br label %35

35:                                               ; preds = %30, %3
  ret void
}

declare dso_local i32 @evutil_gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @evutil_timersub(%struct.timeval*, %struct.timeval*, %struct.timeval*) #1

declare dso_local i32 @printf(i8*, i32, double) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @evutil_timerclear(%struct.timeval*) #1

declare dso_local i32 @event_add(%struct.event*, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
