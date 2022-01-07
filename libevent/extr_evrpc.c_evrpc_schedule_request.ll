; ModuleID = '/home/carl/AnghaBench/libevent/extr_evrpc.c_evrpc_schedule_request.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_evrpc.c_evrpc_schedule_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_connection = type { i32 }
%struct.evrpc_request_wrapper = type { i32, i32, i32, i32 (%struct.evrpc_status*, i32, i32, i32)*, i32, %struct.evhttp_request*, %struct.evhttp_connection*, i32 (i32, i32)*, %struct.evrpc_pool* }
%struct.evrpc_status = type { i32 }
%struct.evhttp_request = type { i32 }
%struct.evrpc_pool = type { i32 }

@evrpc_reply_done = common dso_local global i32 0, align 4
@EVRPC_STATUS_ERR_UNSTARTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evhttp_connection*, %struct.evrpc_request_wrapper*)* @evrpc_schedule_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evrpc_schedule_request(%struct.evhttp_connection* %0, %struct.evrpc_request_wrapper* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.evhttp_connection*, align 8
  %5 = alloca %struct.evrpc_request_wrapper*, align 8
  %6 = alloca %struct.evhttp_request*, align 8
  %7 = alloca %struct.evrpc_pool*, align 8
  %8 = alloca %struct.evrpc_status, align 4
  %9 = alloca i32, align 4
  store %struct.evhttp_connection* %0, %struct.evhttp_connection** %4, align 8
  store %struct.evrpc_request_wrapper* %1, %struct.evrpc_request_wrapper** %5, align 8
  store %struct.evhttp_request* null, %struct.evhttp_request** %6, align 8
  %10 = load %struct.evrpc_request_wrapper*, %struct.evrpc_request_wrapper** %5, align 8
  %11 = getelementptr inbounds %struct.evrpc_request_wrapper, %struct.evrpc_request_wrapper* %10, i32 0, i32 8
  %12 = load %struct.evrpc_pool*, %struct.evrpc_pool** %11, align 8
  store %struct.evrpc_pool* %12, %struct.evrpc_pool** %7, align 8
  %13 = load i32, i32* @evrpc_reply_done, align 4
  %14 = load %struct.evrpc_request_wrapper*, %struct.evrpc_request_wrapper** %5, align 8
  %15 = call %struct.evhttp_request* @evhttp_request_new(i32 %13, %struct.evrpc_request_wrapper* %14)
  store %struct.evhttp_request* %15, %struct.evhttp_request** %6, align 8
  %16 = icmp eq %struct.evhttp_request* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %79

18:                                               ; preds = %2
  %19 = load %struct.evrpc_request_wrapper*, %struct.evrpc_request_wrapper** %5, align 8
  %20 = getelementptr inbounds %struct.evrpc_request_wrapper, %struct.evrpc_request_wrapper* %19, i32 0, i32 7
  %21 = load i32 (i32, i32)*, i32 (i32, i32)** %20, align 8
  %22 = load %struct.evhttp_request*, %struct.evhttp_request** %6, align 8
  %23 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.evrpc_request_wrapper*, %struct.evrpc_request_wrapper** %5, align 8
  %26 = getelementptr inbounds %struct.evrpc_request_wrapper, %struct.evrpc_request_wrapper* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 %21(i32 %24, i32 %27)
  %29 = load %struct.evhttp_connection*, %struct.evhttp_connection** %4, align 8
  %30 = load %struct.evrpc_request_wrapper*, %struct.evrpc_request_wrapper** %5, align 8
  %31 = getelementptr inbounds %struct.evrpc_request_wrapper, %struct.evrpc_request_wrapper* %30, i32 0, i32 6
  store %struct.evhttp_connection* %29, %struct.evhttp_connection** %31, align 8
  %32 = load %struct.evhttp_request*, %struct.evhttp_request** %6, align 8
  %33 = load %struct.evrpc_request_wrapper*, %struct.evrpc_request_wrapper** %5, align 8
  %34 = getelementptr inbounds %struct.evrpc_request_wrapper, %struct.evrpc_request_wrapper* %33, i32 0, i32 5
  store %struct.evhttp_request* %32, %struct.evhttp_request** %34, align 8
  %35 = load %struct.evrpc_pool*, %struct.evrpc_pool** %7, align 8
  %36 = getelementptr inbounds %struct.evrpc_pool, %struct.evrpc_pool* %35, i32 0, i32 0
  %37 = call i32* @TAILQ_FIRST(i32* %36)
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %76

39:                                               ; preds = %18
  %40 = load %struct.evrpc_request_wrapper*, %struct.evrpc_request_wrapper** %5, align 8
  %41 = getelementptr inbounds %struct.evrpc_request_wrapper, %struct.evrpc_request_wrapper* %40, i32 0, i32 4
  %42 = load %struct.evhttp_connection*, %struct.evhttp_connection** %4, align 8
  %43 = call i32 @evrpc_hook_associate_meta_(i32* %41, %struct.evhttp_connection* %42)
  %44 = load %struct.evrpc_pool*, %struct.evrpc_pool** %7, align 8
  %45 = getelementptr inbounds %struct.evrpc_pool, %struct.evrpc_pool* %44, i32 0, i32 0
  %46 = load %struct.evrpc_request_wrapper*, %struct.evrpc_request_wrapper** %5, align 8
  %47 = load %struct.evhttp_request*, %struct.evhttp_request** %6, align 8
  %48 = load %struct.evhttp_request*, %struct.evhttp_request** %6, align 8
  %49 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @evrpc_process_hooks(i32* %45, %struct.evrpc_request_wrapper* %46, %struct.evhttp_request* %47, i32 %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  switch i32 %52, label %62 [
    i32 128, label %53
    i32 129, label %54
    i32 130, label %61
  ]

53:                                               ; preds = %39
  br label %79

54:                                               ; preds = %39
  %55 = load %struct.evrpc_pool*, %struct.evrpc_pool** %7, align 8
  %56 = load %struct.evrpc_request_wrapper*, %struct.evrpc_request_wrapper** %5, align 8
  %57 = call i32 @evrpc_pause_request(%struct.evrpc_pool* %55, %struct.evrpc_request_wrapper* %56, i32 (%struct.evrpc_request_wrapper*, i32)* @evrpc_schedule_request_closure)
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %79

60:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %98

61:                                               ; preds = %39
  br label %75

62:                                               ; preds = %39
  %63 = load i32, i32* %9, align 4
  %64 = icmp eq i32 %63, 128
  br i1 %64, label %71, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %9, align 4
  %67 = icmp eq i32 %66, 130
  br i1 %67, label %71, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %9, align 4
  %70 = icmp eq i32 %69, 129
  br label %71

71:                                               ; preds = %68, %65, %62
  %72 = phi i1 [ true, %65 ], [ true, %62 ], [ %70, %68 ]
  %73 = zext i1 %72 to i32
  %74 = call i32 @EVUTIL_ASSERT(i32 %73)
  br label %75

75:                                               ; preds = %71, %61
  br label %76

76:                                               ; preds = %75, %18
  %77 = load %struct.evrpc_request_wrapper*, %struct.evrpc_request_wrapper** %5, align 8
  %78 = call i32 @evrpc_schedule_request_closure(%struct.evrpc_request_wrapper* %77, i32 130)
  store i32 0, i32* %3, align 4
  br label %98

79:                                               ; preds = %59, %53, %17
  %80 = call i32 @memset(%struct.evrpc_status* %8, i32 0, i32 4)
  %81 = load i32, i32* @EVRPC_STATUS_ERR_UNSTARTED, align 4
  %82 = getelementptr inbounds %struct.evrpc_status, %struct.evrpc_status* %8, i32 0, i32 0
  store i32 %81, i32* %82, align 4
  %83 = load %struct.evrpc_request_wrapper*, %struct.evrpc_request_wrapper** %5, align 8
  %84 = getelementptr inbounds %struct.evrpc_request_wrapper, %struct.evrpc_request_wrapper* %83, i32 0, i32 3
  %85 = load i32 (%struct.evrpc_status*, i32, i32, i32)*, i32 (%struct.evrpc_status*, i32, i32, i32)** %84, align 8
  %86 = load %struct.evrpc_request_wrapper*, %struct.evrpc_request_wrapper** %5, align 8
  %87 = getelementptr inbounds %struct.evrpc_request_wrapper, %struct.evrpc_request_wrapper* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.evrpc_request_wrapper*, %struct.evrpc_request_wrapper** %5, align 8
  %90 = getelementptr inbounds %struct.evrpc_request_wrapper, %struct.evrpc_request_wrapper* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.evrpc_request_wrapper*, %struct.evrpc_request_wrapper** %5, align 8
  %93 = getelementptr inbounds %struct.evrpc_request_wrapper, %struct.evrpc_request_wrapper* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 %85(%struct.evrpc_status* %8, i32 %88, i32 %91, i32 %94)
  %96 = load %struct.evrpc_request_wrapper*, %struct.evrpc_request_wrapper** %5, align 8
  %97 = call i32 @evrpc_request_wrapper_free(%struct.evrpc_request_wrapper* %96)
  store i32 -1, i32* %3, align 4
  br label %98

98:                                               ; preds = %79, %76, %60
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local %struct.evhttp_request* @evhttp_request_new(i32, %struct.evrpc_request_wrapper*) #1

declare dso_local i32* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @evrpc_hook_associate_meta_(i32*, %struct.evhttp_connection*) #1

declare dso_local i32 @evrpc_process_hooks(i32*, %struct.evrpc_request_wrapper*, %struct.evhttp_request*, i32) #1

declare dso_local i32 @evrpc_pause_request(%struct.evrpc_pool*, %struct.evrpc_request_wrapper*, i32 (%struct.evrpc_request_wrapper*, i32)*) #1

declare dso_local i32 @evrpc_schedule_request_closure(%struct.evrpc_request_wrapper*, i32) #1

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

declare dso_local i32 @memset(%struct.evrpc_status*, i32, i32) #1

declare dso_local i32 @evrpc_request_wrapper_free(%struct.evrpc_request_wrapper*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
