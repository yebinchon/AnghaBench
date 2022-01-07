; ModuleID = '/home/carl/AnghaBench/libevent/extr_http.c_evhttp_set_timeout_tv_.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_http.c_evhttp_set_timeout_tv_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timeval*, %struct.timeval*, i32)* @evhttp_set_timeout_tv_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evhttp_set_timeout_tv_(%struct.timeval* %0, %struct.timeval* %1, i32 %2) #0 {
  %4 = alloca %struct.timeval*, align 8
  %5 = alloca %struct.timeval*, align 8
  %6 = alloca i32, align 4
  store %struct.timeval* %0, %struct.timeval** %4, align 8
  store %struct.timeval* %1, %struct.timeval** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.timeval*, %struct.timeval** %5, align 8
  %8 = icmp eq %struct.timeval* %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %3
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, -1
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.timeval*, %struct.timeval** %4, align 8
  %15 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.timeval*, %struct.timeval** %4, align 8
  %17 = getelementptr inbounds %struct.timeval, %struct.timeval* %16, i32 0, i32 1
  store i64 0, i64* %17, align 8
  br label %29

18:                                               ; preds = %9, %3
  %19 = load %struct.timeval*, %struct.timeval** %5, align 8
  %20 = icmp ne %struct.timeval* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load %struct.timeval*, %struct.timeval** %4, align 8
  %23 = load %struct.timeval*, %struct.timeval** %5, align 8
  %24 = bitcast %struct.timeval* %22 to i8*
  %25 = bitcast %struct.timeval* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 %25, i64 16, i1 false)
  br label %29

26:                                               ; preds = %18
  %27 = load %struct.timeval*, %struct.timeval** %4, align 8
  %28 = call i32 @evutil_timerclear(%struct.timeval* %27)
  br label %29

29:                                               ; preds = %12, %26, %21
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @evutil_timerclear(%struct.timeval*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
