; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-connections.c_delete_conn_query_from_requester.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-connections.c_delete_conn_query_from_requester.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conn_query = type { i64, %struct.TYPE_7__, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"delete_conn_query_from_requester (%p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"socket %d was the last one, waking master %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @delete_conn_query_from_requester(%struct.conn_query* %0) #0 {
  %2 = alloca %struct.conn_query*, align 8
  store %struct.conn_query* %0, %struct.conn_query** %2, align 8
  %3 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %4 = call i32 (i32, i8*, ...) @vkprintf(i32 2, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), %struct.conn_query* %3)
  %5 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %6 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %5, i32 0, i32 2
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = icmp ne %struct.TYPE_6__* %7, null
  br i1 %8, label %9, label %64

9:                                                ; preds = %1
  %10 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %11 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %10, i32 0, i32 2
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %16 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %14, %17
  br i1 %18, label %19, label %64

19:                                               ; preds = %9
  %20 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %21 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %20, i32 0, i32 2
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %23, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %63, label %27

27:                                               ; preds = %19
  %28 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %29 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %28, i32 0, i32 3
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = icmp ne %struct.TYPE_5__* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %34 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %33, i32 0, i32 3
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  br label %39

38:                                               ; preds = %27
  br label %39

39:                                               ; preds = %38, %32
  %40 = phi i32 [ %37, %32 ], [ -1, %38 ]
  %41 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %42 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %41, i32 0, i32 2
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 (i32, i8*, ...) @vkprintf(i32 2, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %45)
  %47 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %48 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %47, i32 0, i32 2
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %39
  %56 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %57 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %56, i32 0, i32 2
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = call i32 @put_event_into_heap(%struct.TYPE_8__* %60)
  br label %62

62:                                               ; preds = %55, %39
  br label %63

63:                                               ; preds = %62, %19
  br label %64

64:                                               ; preds = %63, %9, %1
  %65 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %66 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %65, i32 0, i32 2
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %66, align 8
  %67 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %68 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %64
  %73 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %74 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %73, i32 0, i32 1
  %75 = call i32 @remove_event_timer(%struct.TYPE_7__* %74)
  br label %76

76:                                               ; preds = %72, %64
  ret i32 0
}

declare dso_local i32 @vkprintf(i32, i8*, ...) #1

declare dso_local i32 @put_event_into_heap(%struct.TYPE_8__*) #1

declare dso_local i32 @remove_event_timer(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
