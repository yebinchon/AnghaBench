; ModuleID = '/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_rpcc_send_query.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_rpcc_send_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { %struct.TYPE_6__*, i8*, i8* }
%struct.TYPE_6__ = type { %struct.conn_query* }
%struct.conn_query = type { i64, i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_9__*, %struct.connection*)* }

@precise_now = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"...\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpcc_send_query(%struct.connection* %0) #0 {
  %2 = alloca %struct.connection*, align 8
  %3 = alloca %struct.conn_query*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  store %struct.connection* %0, %struct.connection** %2, align 8
  %6 = load i8*, i8** @precise_now, align 8
  %7 = load %struct.connection*, %struct.connection** %2, align 8
  %8 = getelementptr inbounds %struct.connection, %struct.connection* %7, i32 0, i32 2
  store i8* %6, i8** %8, align 8
  %9 = load i8*, i8** @precise_now, align 8
  %10 = load %struct.connection*, %struct.connection** %2, align 8
  %11 = getelementptr inbounds %struct.connection, %struct.connection* %10, i32 0, i32 1
  store i8* %9, i8** %11, align 8
  %12 = load %struct.connection*, %struct.connection** %2, align 8
  %13 = icmp ne %struct.connection* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @dl_assert(i32 %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.connection*, %struct.connection** %2, align 8
  %17 = getelementptr inbounds %struct.connection, %struct.connection* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = icmp ne %struct.TYPE_6__* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @dl_assert(i32 %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %93, %1
  %23 = load %struct.connection*, %struct.connection** %2, align 8
  %24 = getelementptr inbounds %struct.connection, %struct.connection* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.conn_query*, %struct.conn_query** %26, align 8
  %28 = load %struct.connection*, %struct.connection** %2, align 8
  %29 = getelementptr inbounds %struct.connection, %struct.connection* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = bitcast %struct.TYPE_6__* %30 to %struct.conn_query*
  %32 = icmp ne %struct.conn_query* %27, %31
  br i1 %32, label %33, label %94

33:                                               ; preds = %22
  %34 = load %struct.connection*, %struct.connection** %2, align 8
  %35 = getelementptr inbounds %struct.connection, %struct.connection* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load %struct.conn_query*, %struct.conn_query** %37, align 8
  store %struct.conn_query* %38, %struct.conn_query** %3, align 8
  %39 = load %struct.conn_query*, %struct.conn_query** %3, align 8
  %40 = icmp ne %struct.conn_query* %39, null
  %41 = zext i1 %40 to i32
  %42 = call i32 @dl_assert(i32 %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.conn_query*, %struct.conn_query** %3, align 8
  %44 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %43, i32 0, i32 2
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = icmp ne %struct.TYPE_7__* %45, null
  %47 = zext i1 %46 to i32
  %48 = call i32 @dl_assert(i32 %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %49 = load %struct.conn_query*, %struct.conn_query** %3, align 8
  %50 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %49, i32 0, i32 2
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = icmp ne %struct.TYPE_7__* %51, null
  br i1 %52, label %53, label %88

53:                                               ; preds = %33
  %54 = load %struct.conn_query*, %struct.conn_query** %3, align 8
  %55 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %54, i32 0, i32 2
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.conn_query*, %struct.conn_query** %3, align 8
  %60 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %58, %61
  br i1 %62, label %63, label %88

63:                                               ; preds = %53
  %64 = load %struct.conn_query*, %struct.conn_query** %3, align 8
  %65 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %64, i32 0, i32 2
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 8
  %70 = load %struct.conn_query*, %struct.conn_query** %3, align 8
  %71 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to i32*
  store i32* %73, i32** %4, align 8
  %74 = load i32*, i32** %4, align 8
  %75 = bitcast i32* %74 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %75, %struct.TYPE_9__** %5, align 8
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i32 (%struct.TYPE_9__*, %struct.connection*)*, i32 (%struct.TYPE_9__*, %struct.connection*)** %79, align 8
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %82 = load %struct.connection*, %struct.connection** %2, align 8
  %83 = call i32 %80(%struct.TYPE_9__* %81, %struct.connection* %82)
  %84 = load %struct.conn_query*, %struct.conn_query** %3, align 8
  %85 = call i32 @pnet_query_answer(%struct.conn_query* %84)
  %86 = load %struct.conn_query*, %struct.conn_query** %3, align 8
  %87 = call i32 @pnet_query_delete(%struct.conn_query* %86)
  br label %94

88:                                               ; preds = %53, %33
  %89 = load %struct.conn_query*, %struct.conn_query** %3, align 8
  %90 = call i32 @delete_conn_query(%struct.conn_query* %89)
  %91 = load %struct.conn_query*, %struct.conn_query** %3, align 8
  %92 = call i32 @zfree(%struct.conn_query* %91, i32 24)
  br label %93

93:                                               ; preds = %88
  br label %22

94:                                               ; preds = %63, %22
  ret i32 0
}

declare dso_local i32 @dl_assert(i32, i8*) #1

declare dso_local i32 @pnet_query_answer(%struct.conn_query*) #1

declare dso_local i32 @pnet_query_delete(%struct.conn_query*) #1

declare dso_local i32 @delete_conn_query(%struct.conn_query*) #1

declare dso_local i32 @zfree(%struct.conn_query*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
