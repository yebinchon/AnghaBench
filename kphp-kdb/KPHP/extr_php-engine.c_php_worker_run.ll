; ModuleID = '/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_php_worker_run.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_php_worker_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_10__*, i32, i64, i8*, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@php_script = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"before php_script_iterate [req_id = %016llx] (before swap context)\0A\00", align 1
@immediate_stats = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"after php_script_iterate [req_id = %016llx] (after swap context)\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"got query [req_id = %016llx]\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"paused due to query [req_id = %016llx]\0A\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"php script [req_id = %016llx]: ERROR (probably timeout)\0A\00", align 1
@http_worker = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@rpc_worker = common dso_local global i32 0, align 4
@rpc_stored = common dso_local global i32 0, align 4
@phpq_free_script = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [64 x i8] c"php script [req_id = %016llx]: OK (still can return RPC_ERROR)\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"php_worker_run: unexpected state\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"paused for some net activity [req_id = %016llx]\0A\00", align 1
@conn_wait_net = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @php_worker_run(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  store i32 1, i32* %3, align 4
  br label %6

6:                                                ; preds = %141, %1
  %7 = load i32, i32* %3, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %142

9:                                                ; preds = %6
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = load i32, i32* @php_script, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @php_script_terminate(i32 %15, i32 %18)
  br label %20

20:                                               ; preds = %14, %9
  %21 = call i32 (...) @get_utime_monotonic()
  %22 = load i32, i32* @php_script, align 4
  %23 = call i32 @php_script_get_state(i32 %22)
  switch i32 %23, label %107 [
    i32 128, label %24
    i32 130, label %35
    i32 129, label %42
    i32 132, label %49
    i32 131, label %92
  ]

24:                                               ; preds = %20
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %27)
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @immediate_stats, i32 0, i32 0), align 4
  %29 = load i32, i32* @php_script, align 4
  %30 = call i32 @php_script_iterate(i32 %29)
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  br label %113

35:                                               ; preds = %20
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %41 = call i32 @php_worker_run_query(%struct.TYPE_8__* %40)
  br label %113

42:                                               ; preds = %20
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %45)
  store i32 0, i32* %3, align 4
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @immediate_stats, i32 0, i32 0), align 4
  br label %113

49:                                               ; preds = %20
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @php_script, align 4
  %55 = call i32 @php_script_finish(i32 %54)
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = icmp ne %struct.TYPE_10__* %58, null
  br i1 %59, label %60, label %88

60:                                               ; preds = %49
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @http_worker, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %60
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %68, align 8
  %70 = call i32 @http_return(%struct.TYPE_10__* %69, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 5)
  br label %87

71:                                               ; preds = %60
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @rpc_worker, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %86

77:                                               ; preds = %71
  %78 = load i32, i32* @rpc_stored, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %77
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %82 = load i32, i32* @php_script, align 4
  %83 = call i32 @php_script_get_error(i32 %82)
  %84 = call i32 @rpc_error(%struct.TYPE_8__* %81, i32 -504, i32 %83)
  br label %85

85:                                               ; preds = %80, %77
  br label %86

86:                                               ; preds = %85, %71
  br label %87

87:                                               ; preds = %86, %66
  br label %88

88:                                               ; preds = %87, %49
  %89 = load i8*, i8** @phpq_free_script, align 8
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 4
  store i8* %89, i8** %91, align 8
  store i32 0, i32* %3, align 4
  br label %113

92:                                               ; preds = %20
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.6, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* @php_script, align 4
  %98 = call i32* @php_script_get_res(i32 %97)
  store i32* %98, i32** %4, align 8
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %100 = load i32*, i32** %4, align 8
  %101 = call i32 @php_worker_set_result(%struct.TYPE_8__* %99, i32* %100)
  %102 = load i32, i32* @php_script, align 4
  %103 = call i32 @php_script_finish(i32 %102)
  %104 = load i8*, i8** @phpq_free_script, align 8
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 4
  store i8* %104, i8** %106, align 8
  store i32 0, i32* %3, align 4
  br label %113

107:                                              ; preds = %20
  br i1 true, label %108, label %109

108:                                              ; preds = %107
  br label %109

109:                                              ; preds = %108, %107
  %110 = phi i1 [ false, %107 ], [ false, %108 ]
  %111 = zext i1 %110 to i32
  %112 = call i32 @assert(i32 %111)
  br label %113

113:                                              ; preds = %109, %92, %88, %42, %35, %24
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %141, label %118

118:                                              ; preds = %113
  %119 = call i32 @epoll_fetch_events(i32 0)
  store i32 %119, i32* %5, align 4
  %120 = load i32, i32* %5, align 4
  %121 = icmp sgt i32 %120, 0
  br i1 %121, label %122, label %140

122:                                              ; preds = %118
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0), i32 %125)
  store i32 0, i32* %3, align 4
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @put_event_into_heap_tail(i32 %131, i32 1)
  %133 = load i32, i32* @conn_wait_net, align 4
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  store i32 %133, i32* %137, align 4
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  store i32 1, i32* %139, align 8
  br label %140

140:                                              ; preds = %122, %118
  br label %141

141:                                              ; preds = %140, %113
  br label %6

142:                                              ; preds = %6
  ret void
}

declare dso_local i32 @php_script_terminate(i32, i32) #1

declare dso_local i32 @get_utime_monotonic(...) #1

declare dso_local i32 @php_script_get_state(i32) #1

declare dso_local i32 @vkprintf(i32, i8*, i32) #1

declare dso_local i32 @php_script_iterate(i32) #1

declare dso_local i32 @php_worker_run_query(%struct.TYPE_8__*) #1

declare dso_local i32 @php_script_finish(i32) #1

declare dso_local i32 @http_return(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @rpc_error(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @php_script_get_error(i32) #1

declare dso_local i32* @php_script_get_res(i32) #1

declare dso_local i32 @php_worker_set_result(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @epoll_fetch_events(i32) #1

declare dso_local i32 @put_event_into_heap_tail(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
