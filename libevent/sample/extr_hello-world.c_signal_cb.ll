; ModuleID = '/home/carl/AnghaBench/libevent/sample/extr_hello-world.c_signal_cb.c'
source_filename = "/home/carl/AnghaBench/libevent/sample/extr_hello-world.c_signal_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32 }
%struct.event_base = type { i32 }

@__const.signal_cb.delay = private unnamed_addr constant %struct.timeval { i32 2, i32 0 }, align 4
@.str = private unnamed_addr constant [61 x i8] c"Caught an interrupt signal; exiting cleanly in two seconds.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i16, i8*)* @signal_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @signal_cb(i32 %0, i16 signext %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca %struct.event_base*, align 8
  %8 = alloca %struct.timeval, align 4
  store i32 %0, i32* %4, align 4
  store i16 %1, i16* %5, align 2
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.event_base*
  store %struct.event_base* %10, %struct.event_base** %7, align 8
  %11 = bitcast %struct.timeval* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast (%struct.timeval* @__const.signal_cb.delay to i8*), i64 8, i1 false)
  %12 = call i32 @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.event_base*, %struct.event_base** %7, align 8
  %14 = call i32 @event_base_loopexit(%struct.event_base* %13, %struct.timeval* %8)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @printf(i8*) #2

declare dso_local i32 @event_base_loopexit(%struct.event_base*, %struct.timeval*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
