; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/lib/extr_quicly.c_get_streamgroup_state.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/lib/extr_quicly.c_get_streamgroup_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_quicly_conn_streamgroup_state_t = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { %struct.st_quicly_conn_streamgroup_state_t, %struct.st_quicly_conn_streamgroup_state_t }
%struct.TYPE_7__ = type { %struct.st_quicly_conn_streamgroup_state_t, %struct.st_quicly_conn_streamgroup_state_t }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.st_quicly_conn_streamgroup_state_t* (%struct.TYPE_10__*, i32)* @get_streamgroup_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.st_quicly_conn_streamgroup_state_t* @get_streamgroup_state(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca %struct.st_quicly_conn_streamgroup_state_t*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %7 = call i64 @quicly_is_client(%struct.TYPE_10__* %6)
  %8 = load i32, i32* %5, align 4
  %9 = call i64 @quicly_stream_is_client_initiated(i32 %8)
  %10 = icmp eq i64 %7, %9
  br i1 %10, label %11, label %27

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @quicly_stream_is_unidirectional(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  br label %25

20:                                               ; preds = %11
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  br label %25

25:                                               ; preds = %20, %15
  %26 = phi %struct.st_quicly_conn_streamgroup_state_t* [ %19, %15 ], [ %24, %20 ]
  store %struct.st_quicly_conn_streamgroup_state_t* %26, %struct.st_quicly_conn_streamgroup_state_t** %3, align 8
  br label %43

27:                                               ; preds = %2
  %28 = load i32, i32* %5, align 4
  %29 = call i64 @quicly_stream_is_unidirectional(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  br label %41

36:                                               ; preds = %27
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  br label %41

41:                                               ; preds = %36, %31
  %42 = phi %struct.st_quicly_conn_streamgroup_state_t* [ %35, %31 ], [ %40, %36 ]
  store %struct.st_quicly_conn_streamgroup_state_t* %42, %struct.st_quicly_conn_streamgroup_state_t** %3, align 8
  br label %43

43:                                               ; preds = %41, %25
  %44 = load %struct.st_quicly_conn_streamgroup_state_t*, %struct.st_quicly_conn_streamgroup_state_t** %3, align 8
  ret %struct.st_quicly_conn_streamgroup_state_t* %44
}

declare dso_local i64 @quicly_is_client(%struct.TYPE_10__*) #1

declare dso_local i64 @quicly_stream_is_client_initiated(i32) #1

declare dso_local i64 @quicly_stream_is_unidirectional(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
