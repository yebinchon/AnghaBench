; ModuleID = '/home/carl/AnghaBench/libevent/extr_evrpc.c_evrpc_pool_free.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_evrpc.c_evrpc_pool_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evrpc_pool = type { i32, i32, i32, i32, i32 }
%struct.evhttp_connection = type { i32, i32, i32, i32, i32 }
%struct.evrpc_request_wrapper = type { i32, i32, i32, i32, i32 }
%struct.evrpc_hook_ctx = type { i32, i32, i32, i32, i32 }
%struct.evrpc_hook = type { i32 }

@next = common dso_local global i32 0, align 4
@EVRPC_INPUT = common dso_local global i32 0, align 4
@EVRPC_OUTPUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evrpc_pool_free(%struct.evrpc_pool* %0) #0 {
  %2 = alloca %struct.evrpc_pool*, align 8
  %3 = alloca %struct.evhttp_connection*, align 8
  %4 = alloca %struct.evrpc_request_wrapper*, align 8
  %5 = alloca %struct.evrpc_hook_ctx*, align 8
  %6 = alloca %struct.evrpc_hook*, align 8
  %7 = alloca i32, align 4
  store %struct.evrpc_pool* %0, %struct.evrpc_pool** %2, align 8
  br label %8

8:                                                ; preds = %14, %1
  %9 = load %struct.evrpc_pool*, %struct.evrpc_pool** %2, align 8
  %10 = getelementptr inbounds %struct.evrpc_pool, %struct.evrpc_pool* %9, i32 0, i32 4
  %11 = call i8* @TAILQ_FIRST(i32* %10)
  %12 = bitcast i8* %11 to %struct.evrpc_request_wrapper*
  store %struct.evrpc_request_wrapper* %12, %struct.evrpc_request_wrapper** %4, align 8
  %13 = icmp ne %struct.evrpc_request_wrapper* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %8
  %15 = load %struct.evrpc_pool*, %struct.evrpc_pool** %2, align 8
  %16 = getelementptr inbounds %struct.evrpc_pool, %struct.evrpc_pool* %15, i32 0, i32 4
  %17 = load %struct.evrpc_request_wrapper*, %struct.evrpc_request_wrapper** %4, align 8
  %18 = load i32, i32* @next, align 4
  %19 = call i32 @TAILQ_REMOVE(i32* %16, %struct.evrpc_request_wrapper* %17, i32 %18)
  %20 = load %struct.evrpc_request_wrapper*, %struct.evrpc_request_wrapper** %4, align 8
  %21 = call i32 @evrpc_request_wrapper_free(%struct.evrpc_request_wrapper* %20)
  br label %8

22:                                               ; preds = %8
  br label %23

23:                                               ; preds = %29, %22
  %24 = load %struct.evrpc_pool*, %struct.evrpc_pool** %2, align 8
  %25 = getelementptr inbounds %struct.evrpc_pool, %struct.evrpc_pool* %24, i32 0, i32 3
  %26 = call i8* @TAILQ_FIRST(i32* %25)
  %27 = bitcast i8* %26 to %struct.evrpc_hook_ctx*
  store %struct.evrpc_hook_ctx* %27, %struct.evrpc_hook_ctx** %5, align 8
  %28 = icmp ne %struct.evrpc_hook_ctx* %27, null
  br i1 %28, label %29, label %39

29:                                               ; preds = %23
  %30 = load %struct.evrpc_pool*, %struct.evrpc_pool** %2, align 8
  %31 = getelementptr inbounds %struct.evrpc_pool, %struct.evrpc_pool* %30, i32 0, i32 3
  %32 = load %struct.evrpc_hook_ctx*, %struct.evrpc_hook_ctx** %5, align 8
  %33 = bitcast %struct.evrpc_hook_ctx* %32 to %struct.evrpc_request_wrapper*
  %34 = load i32, i32* @next, align 4
  %35 = call i32 @TAILQ_REMOVE(i32* %31, %struct.evrpc_request_wrapper* %33, i32 %34)
  %36 = load %struct.evrpc_hook_ctx*, %struct.evrpc_hook_ctx** %5, align 8
  %37 = bitcast %struct.evrpc_hook_ctx* %36 to %struct.evrpc_request_wrapper*
  %38 = call i32 @mm_free(%struct.evrpc_request_wrapper* %37)
  br label %23

39:                                               ; preds = %23
  br label %40

40:                                               ; preds = %46, %39
  %41 = load %struct.evrpc_pool*, %struct.evrpc_pool** %2, align 8
  %42 = getelementptr inbounds %struct.evrpc_pool, %struct.evrpc_pool* %41, i32 0, i32 2
  %43 = call i8* @TAILQ_FIRST(i32* %42)
  %44 = bitcast i8* %43 to %struct.evhttp_connection*
  store %struct.evhttp_connection* %44, %struct.evhttp_connection** %3, align 8
  %45 = icmp ne %struct.evhttp_connection* %44, null
  br i1 %45, label %46, label %56

46:                                               ; preds = %40
  %47 = load %struct.evrpc_pool*, %struct.evrpc_pool** %2, align 8
  %48 = getelementptr inbounds %struct.evrpc_pool, %struct.evrpc_pool* %47, i32 0, i32 2
  %49 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %50 = bitcast %struct.evhttp_connection* %49 to %struct.evrpc_request_wrapper*
  %51 = load i32, i32* @next, align 4
  %52 = call i32 @TAILQ_REMOVE(i32* %48, %struct.evrpc_request_wrapper* %50, i32 %51)
  %53 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %54 = bitcast %struct.evhttp_connection* %53 to %struct.evrpc_request_wrapper*
  %55 = call i32 @evhttp_connection_free(%struct.evrpc_request_wrapper* %54)
  br label %40

56:                                               ; preds = %40
  br label %57

57:                                               ; preds = %63, %56
  %58 = load %struct.evrpc_pool*, %struct.evrpc_pool** %2, align 8
  %59 = getelementptr inbounds %struct.evrpc_pool, %struct.evrpc_pool* %58, i32 0, i32 1
  %60 = call i8* @TAILQ_FIRST(i32* %59)
  %61 = bitcast i8* %60 to %struct.evrpc_hook*
  store %struct.evrpc_hook* %61, %struct.evrpc_hook** %6, align 8
  %62 = icmp ne %struct.evrpc_hook* %61, null
  br i1 %62, label %63, label %71

63:                                               ; preds = %57
  %64 = load %struct.evrpc_pool*, %struct.evrpc_pool** %2, align 8
  %65 = bitcast %struct.evrpc_pool* %64 to %struct.evrpc_request_wrapper*
  %66 = load i32, i32* @EVRPC_INPUT, align 4
  %67 = load %struct.evrpc_hook*, %struct.evrpc_hook** %6, align 8
  %68 = call i32 @evrpc_remove_hook(%struct.evrpc_request_wrapper* %65, i32 %66, %struct.evrpc_hook* %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @EVUTIL_ASSERT(i32 %69)
  br label %57

71:                                               ; preds = %57
  br label %72

72:                                               ; preds = %78, %71
  %73 = load %struct.evrpc_pool*, %struct.evrpc_pool** %2, align 8
  %74 = getelementptr inbounds %struct.evrpc_pool, %struct.evrpc_pool* %73, i32 0, i32 0
  %75 = call i8* @TAILQ_FIRST(i32* %74)
  %76 = bitcast i8* %75 to %struct.evrpc_hook*
  store %struct.evrpc_hook* %76, %struct.evrpc_hook** %6, align 8
  %77 = icmp ne %struct.evrpc_hook* %76, null
  br i1 %77, label %78, label %86

78:                                               ; preds = %72
  %79 = load %struct.evrpc_pool*, %struct.evrpc_pool** %2, align 8
  %80 = bitcast %struct.evrpc_pool* %79 to %struct.evrpc_request_wrapper*
  %81 = load i32, i32* @EVRPC_OUTPUT, align 4
  %82 = load %struct.evrpc_hook*, %struct.evrpc_hook** %6, align 8
  %83 = call i32 @evrpc_remove_hook(%struct.evrpc_request_wrapper* %80, i32 %81, %struct.evrpc_hook* %82)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @EVUTIL_ASSERT(i32 %84)
  br label %72

86:                                               ; preds = %72
  %87 = load %struct.evrpc_pool*, %struct.evrpc_pool** %2, align 8
  %88 = bitcast %struct.evrpc_pool* %87 to %struct.evrpc_request_wrapper*
  %89 = call i32 @mm_free(%struct.evrpc_request_wrapper* %88)
  ret void
}

declare dso_local i8* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.evrpc_request_wrapper*, i32) #1

declare dso_local i32 @evrpc_request_wrapper_free(%struct.evrpc_request_wrapper*) #1

declare dso_local i32 @mm_free(%struct.evrpc_request_wrapper*) #1

declare dso_local i32 @evhttp_connection_free(%struct.evrpc_request_wrapper*) #1

declare dso_local i32 @evrpc_remove_hook(%struct.evrpc_request_wrapper*, i32, %struct.evrpc_hook*) #1

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
