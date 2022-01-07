; ModuleID = '/home/carl/AnghaBench/h2o/src/extr_main.c_on_accept.c'
source_filename = "/home/carl/AnghaBench/h2o/src/extr_main.c_on_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__, %struct.listener_ctx_t* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.listener_ctx_t = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }

@conf = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@on_socketclose = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i8*)* @on_accept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_accept(%struct.TYPE_12__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.listener_ctx_t*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  %10 = load %struct.listener_ctx_t*, %struct.listener_ctx_t** %9, align 8
  store %struct.listener_ctx_t* %10, %struct.listener_ctx_t** %5, align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @conf, i32 0, i32 0), align 4
  %12 = sdiv i32 %11, 16
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @conf, i32 0, i32 1, i32 0), align 4
  %14 = sdiv i32 %12, %13
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %6, align 8
  %17 = icmp ult i64 %16, 8
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i64 8, i64* %6, align 8
  br label %19

19:                                               ; preds = %18, %2
  %20 = load i8*, i8** %4, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  br label %56

23:                                               ; preds = %19
  br label %24

24:                                               ; preds = %52, %23
  %25 = call i32 @num_connections(i32 0)
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @conf, i32 0, i32 0), align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %56

29:                                               ; preds = %24
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %31 = call %struct.TYPE_12__* @h2o_evloop_socket_accept(%struct.TYPE_12__* %30)
  store %struct.TYPE_12__* %31, %struct.TYPE_12__** %7, align 8
  %32 = icmp eq %struct.TYPE_12__* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %56

34:                                               ; preds = %29
  %35 = call i32 @num_connections(i32 1)
  %36 = call i32 @num_sessions(i32 1)
  %37 = load i32, i32* @on_socketclose, align 4
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 4
  %41 = load %struct.listener_ctx_t*, %struct.listener_ctx_t** %5, align 8
  %42 = getelementptr inbounds %struct.listener_ctx_t, %struct.listener_ctx_t* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 8
  %48 = load %struct.listener_ctx_t*, %struct.listener_ctx_t** %5, align 8
  %49 = getelementptr inbounds %struct.listener_ctx_t, %struct.listener_ctx_t* %48, i32 0, i32 0
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %51 = call i32 @h2o_accept(%struct.TYPE_13__* %49, %struct.TYPE_12__* %50)
  br label %52

52:                                               ; preds = %34
  %53 = load i64, i64* %6, align 8
  %54 = add i64 %53, -1
  store i64 %54, i64* %6, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %24, label %56

56:                                               ; preds = %22, %52, %33, %28
  ret void
}

declare dso_local i32 @num_connections(i32) #1

declare dso_local %struct.TYPE_12__* @h2o_evloop_socket_accept(%struct.TYPE_12__*) #1

declare dso_local i32 @num_sessions(i32) #1

declare dso_local i32 @h2o_accept(%struct.TYPE_13__*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
