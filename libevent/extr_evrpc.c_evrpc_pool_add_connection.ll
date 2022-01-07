; ModuleID = '/home/carl/AnghaBench/libevent/extr_evrpc.c_evrpc_pool_add_connection.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_evrpc.c_evrpc_pool_add_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evrpc_pool = type { i32, i32, i32*, i32 }
%struct.evhttp_connection = type { i32, i32* }
%struct.evrpc_request_wrapper = type { i32 }

@next = common dso_local global i32 0, align 4
@EVHTTP_CON_TIMEOUT_ADJUSTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evrpc_pool_add_connection(%struct.evrpc_pool* %0, %struct.evhttp_connection* %1) #0 {
  %3 = alloca %struct.evrpc_pool*, align 8
  %4 = alloca %struct.evhttp_connection*, align 8
  %5 = alloca %struct.evrpc_request_wrapper*, align 8
  store %struct.evrpc_pool* %0, %struct.evrpc_pool** %3, align 8
  store %struct.evhttp_connection* %1, %struct.evhttp_connection** %4, align 8
  %6 = load %struct.evhttp_connection*, %struct.evhttp_connection** %4, align 8
  %7 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  %9 = icmp eq i32* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @EVUTIL_ASSERT(i32 %10)
  %12 = load %struct.evrpc_pool*, %struct.evrpc_pool** %3, align 8
  %13 = getelementptr inbounds %struct.evrpc_pool, %struct.evrpc_pool* %12, i32 0, i32 3
  %14 = load %struct.evhttp_connection*, %struct.evhttp_connection** %4, align 8
  %15 = load i32, i32* @next, align 4
  %16 = call i32 @TAILQ_INSERT_TAIL(i32* %13, %struct.evhttp_connection* %14, i32 %15)
  %17 = load %struct.evrpc_pool*, %struct.evrpc_pool** %3, align 8
  %18 = getelementptr inbounds %struct.evrpc_pool, %struct.evrpc_pool* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load %struct.evhttp_connection*, %struct.evhttp_connection** %4, align 8
  %23 = load %struct.evrpc_pool*, %struct.evrpc_pool** %3, align 8
  %24 = getelementptr inbounds %struct.evrpc_pool, %struct.evrpc_pool* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @evhttp_connection_set_base(%struct.evhttp_connection* %22, i32* %25)
  br label %27

27:                                               ; preds = %21, %2
  %28 = load %struct.evhttp_connection*, %struct.evhttp_connection** %4, align 8
  %29 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @EVHTTP_CON_TIMEOUT_ADJUSTED, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %27
  %35 = load %struct.evhttp_connection*, %struct.evhttp_connection** %4, align 8
  %36 = load %struct.evrpc_pool*, %struct.evrpc_pool** %3, align 8
  %37 = getelementptr inbounds %struct.evrpc_pool, %struct.evrpc_pool* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @evhttp_connection_set_timeout(%struct.evhttp_connection* %35, i32 %38)
  br label %40

40:                                               ; preds = %34, %27
  %41 = load %struct.evrpc_pool*, %struct.evrpc_pool** %3, align 8
  %42 = getelementptr inbounds %struct.evrpc_pool, %struct.evrpc_pool* %41, i32 0, i32 0
  %43 = call %struct.evrpc_request_wrapper* @TAILQ_FIRST(i32* %42)
  %44 = icmp ne %struct.evrpc_request_wrapper* %43, null
  br i1 %44, label %45, label %57

45:                                               ; preds = %40
  %46 = load %struct.evrpc_pool*, %struct.evrpc_pool** %3, align 8
  %47 = getelementptr inbounds %struct.evrpc_pool, %struct.evrpc_pool* %46, i32 0, i32 0
  %48 = call %struct.evrpc_request_wrapper* @TAILQ_FIRST(i32* %47)
  store %struct.evrpc_request_wrapper* %48, %struct.evrpc_request_wrapper** %5, align 8
  %49 = load %struct.evrpc_pool*, %struct.evrpc_pool** %3, align 8
  %50 = getelementptr inbounds %struct.evrpc_pool, %struct.evrpc_pool* %49, i32 0, i32 0
  %51 = load %struct.evrpc_request_wrapper*, %struct.evrpc_request_wrapper** %5, align 8
  %52 = load i32, i32* @next, align 4
  %53 = call i32 @TAILQ_REMOVE(i32* %50, %struct.evrpc_request_wrapper* %51, i32 %52)
  %54 = load %struct.evhttp_connection*, %struct.evhttp_connection** %4, align 8
  %55 = load %struct.evrpc_request_wrapper*, %struct.evrpc_request_wrapper** %5, align 8
  %56 = call i32 @evrpc_schedule_request(%struct.evhttp_connection* %54, %struct.evrpc_request_wrapper* %55)
  br label %57

57:                                               ; preds = %45, %40
  ret void
}

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.evhttp_connection*, i32) #1

declare dso_local i32 @evhttp_connection_set_base(%struct.evhttp_connection*, i32*) #1

declare dso_local i32 @evhttp_connection_set_timeout(%struct.evhttp_connection*, i32) #1

declare dso_local %struct.evrpc_request_wrapper* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.evrpc_request_wrapper*, i32) #1

declare dso_local i32 @evrpc_schedule_request(%struct.evhttp_connection*, %struct.evrpc_request_wrapper*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
