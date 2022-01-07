; ModuleID = '/home/carl/AnghaBench/libevent/extr_watch.c_evwatch_new.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_watch.c_evwatch_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evwatch = type { i32, i8*, %union.evwatch_cb, %struct.event_base* }
%union.evwatch_cb = type { i32 }
%struct.event_base = type { i32* }

@th_base_lock = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.evwatch* (%struct.event_base*, i32, i8*, i32)* @evwatch_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.evwatch* @evwatch_new(%struct.event_base* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.evwatch*, align 8
  %6 = alloca %union.evwatch_cb, align 4
  %7 = alloca %struct.event_base*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.evwatch*, align 8
  %11 = getelementptr inbounds %union.evwatch_cb, %union.evwatch_cb* %6, i32 0, i32 0
  store i32 %1, i32* %11, align 4
  store %struct.event_base* %0, %struct.event_base** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = call %struct.evwatch* @mm_malloc(i32 32)
  store %struct.evwatch* %12, %struct.evwatch** %10, align 8
  %13 = load %struct.evwatch*, %struct.evwatch** %10, align 8
  %14 = icmp ne %struct.evwatch* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  store %struct.evwatch* null, %struct.evwatch** %5, align 8
  br label %46

16:                                               ; preds = %4
  %17 = load %struct.event_base*, %struct.event_base** %7, align 8
  %18 = load %struct.evwatch*, %struct.evwatch** %10, align 8
  %19 = getelementptr inbounds %struct.evwatch, %struct.evwatch* %18, i32 0, i32 3
  store %struct.event_base* %17, %struct.event_base** %19, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.evwatch*, %struct.evwatch** %10, align 8
  %22 = getelementptr inbounds %struct.evwatch, %struct.evwatch* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.evwatch*, %struct.evwatch** %10, align 8
  %24 = getelementptr inbounds %struct.evwatch, %struct.evwatch* %23, i32 0, i32 2
  %25 = bitcast %union.evwatch_cb* %24 to i8*
  %26 = bitcast %union.evwatch_cb* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 4 %26, i64 4, i1 false)
  %27 = load i8*, i8** %8, align 8
  %28 = load %struct.evwatch*, %struct.evwatch** %10, align 8
  %29 = getelementptr inbounds %struct.evwatch, %struct.evwatch* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  %30 = load %struct.event_base*, %struct.event_base** %7, align 8
  %31 = load i32, i32* @th_base_lock, align 4
  %32 = call i32 @EVBASE_ACQUIRE_LOCK(%struct.event_base* %30, i32 %31)
  %33 = load %struct.event_base*, %struct.event_base** %7, align 8
  %34 = getelementptr inbounds %struct.event_base, %struct.event_base* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load %struct.evwatch*, %struct.evwatch** %10, align 8
  %40 = load i32, i32* @next, align 4
  %41 = call i32 @TAILQ_INSERT_TAIL(i32* %38, %struct.evwatch* %39, i32 %40)
  %42 = load %struct.event_base*, %struct.event_base** %7, align 8
  %43 = load i32, i32* @th_base_lock, align 4
  %44 = call i32 @EVBASE_RELEASE_LOCK(%struct.event_base* %42, i32 %43)
  %45 = load %struct.evwatch*, %struct.evwatch** %10, align 8
  store %struct.evwatch* %45, %struct.evwatch** %5, align 8
  br label %46

46:                                               ; preds = %16, %15
  %47 = load %struct.evwatch*, %struct.evwatch** %5, align 8
  ret %struct.evwatch* %47
}

declare dso_local %struct.evwatch* @mm_malloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @EVBASE_ACQUIRE_LOCK(%struct.event_base*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.evwatch*, i32) #1

declare dso_local i32 @EVBASE_RELEASE_LOCK(%struct.event_base*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
