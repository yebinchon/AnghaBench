; ModuleID = '/home/carl/AnghaBench/libevent/extr_watch.c_evwatch_prepare_get_timeout.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_watch.c_evwatch_prepare_get_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evwatch_prepare_cb_info = type { %struct.timeval* }
%struct.timeval = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evwatch_prepare_get_timeout(%struct.evwatch_prepare_cb_info* %0, %struct.timeval* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.evwatch_prepare_cb_info*, align 8
  %5 = alloca %struct.timeval*, align 8
  store %struct.evwatch_prepare_cb_info* %0, %struct.evwatch_prepare_cb_info** %4, align 8
  store %struct.timeval* %1, %struct.timeval** %5, align 8
  %6 = load %struct.evwatch_prepare_cb_info*, %struct.evwatch_prepare_cb_info** %4, align 8
  %7 = getelementptr inbounds %struct.evwatch_prepare_cb_info, %struct.evwatch_prepare_cb_info* %6, i32 0, i32 0
  %8 = load %struct.timeval*, %struct.timeval** %7, align 8
  %9 = icmp ne %struct.timeval* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load %struct.timeval*, %struct.timeval** %5, align 8
  %12 = load %struct.evwatch_prepare_cb_info*, %struct.evwatch_prepare_cb_info** %4, align 8
  %13 = getelementptr inbounds %struct.evwatch_prepare_cb_info, %struct.evwatch_prepare_cb_info* %12, i32 0, i32 0
  %14 = load %struct.timeval*, %struct.timeval** %13, align 8
  %15 = bitcast %struct.timeval* %11 to i8*
  %16 = bitcast %struct.timeval* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 %16, i64 4, i1 false)
  store i32 1, i32* %3, align 4
  br label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %17, %10
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
