; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-connections.c_delete_conn_query.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-connections.c_delete_conn_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conn_query = type { i64, %struct.TYPE_11__, %struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64, %struct.TYPE_12__*, i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }

@.str = private unnamed_addr constant [24 x i8] c"delete_conn_query (%p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"socket %d was the last one, waking master %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @delete_conn_query(%struct.conn_query* %0) #0 {
  %2 = alloca %struct.conn_query*, align 8
  store %struct.conn_query* %0, %struct.conn_query** %2, align 8
  %3 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %4 = call i32 (i32, i8*, ...) @vkprintf(i32 2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.conn_query* %3)
  %5 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %6 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %5, i32 0, i32 5
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %8 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %9 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %8, i32 0, i32 4
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  store %struct.TYPE_7__* %7, %struct.TYPE_7__** %11, align 8
  %12 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %13 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %12, i32 0, i32 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %16 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %15, i32 0, i32 5
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %18, align 8
  %19 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %20 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %19, i32 0, i32 3
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = icmp ne %struct.TYPE_9__* %21, null
  br i1 %22, label %23, label %78

23:                                               ; preds = %1
  %24 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %25 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %24, i32 0, i32 3
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %30 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %33, label %78

33:                                               ; preds = %23
  %34 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %35 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %34, i32 0, i32 3
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %37, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %77, label %41

41:                                               ; preds = %33
  %42 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %43 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %42, i32 0, i32 2
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = icmp ne %struct.TYPE_10__* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %48 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %47, i32 0, i32 2
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  br label %53

52:                                               ; preds = %41
  br label %53

53:                                               ; preds = %52, %46
  %54 = phi i32 [ %51, %46 ], [ -1, %52 ]
  %55 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %56 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %55, i32 0, i32 3
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 (i32, i8*, ...) @vkprintf(i32 2, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %59)
  %61 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %62 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %61, i32 0, i32 3
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %53
  %70 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %71 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %70, i32 0, i32 3
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %73, align 8
  %75 = call i32 @put_event_into_heap(%struct.TYPE_12__* %74)
  br label %76

76:                                               ; preds = %69, %53
  br label %77

77:                                               ; preds = %76, %33
  br label %78

78:                                               ; preds = %77, %23, %1
  %79 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %80 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %79, i32 0, i32 3
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %80, align 8
  %81 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %82 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %81, i32 0, i32 2
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %82, align 8
  %83 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %84 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %78
  %89 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %90 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %89, i32 0, i32 1
  %91 = call i32 @remove_event_timer(%struct.TYPE_11__* %90)
  br label %92

92:                                               ; preds = %88, %78
  ret i32 0
}

declare dso_local i32 @vkprintf(i32, i8*, ...) #1

declare dso_local i32 @put_event_into_heap(%struct.TYPE_12__*) #1

declare dso_local i32 @remove_event_timer(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
