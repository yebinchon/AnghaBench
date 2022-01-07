; ModuleID = '/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_sqlp_becomes_ready.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_sqlp_becomes_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.conn_query* }
%struct.conn_query = type { i64, %struct.TYPE_8__, %struct.TYPE_11__*, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_10__*, %struct.connection*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlp_becomes_ready(%struct.connection* %0) #0 {
  %2 = alloca %struct.connection*, align 8
  %3 = alloca %struct.conn_query*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  store %struct.connection* %0, %struct.connection** %2, align 8
  br label %6

6:                                                ; preds = %77, %1
  %7 = load %struct.connection*, %struct.connection** %2, align 8
  %8 = getelementptr inbounds %struct.connection, %struct.connection* %7, i32 0, i32 0
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load %struct.conn_query*, %struct.conn_query** %10, align 8
  %12 = load %struct.connection*, %struct.connection** %2, align 8
  %13 = getelementptr inbounds %struct.connection, %struct.connection* %12, i32 0, i32 0
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = bitcast %struct.TYPE_7__* %14 to %struct.conn_query*
  %16 = icmp ne %struct.conn_query* %11, %15
  br i1 %16, label %17, label %78

17:                                               ; preds = %6
  %18 = load %struct.connection*, %struct.connection** %2, align 8
  %19 = getelementptr inbounds %struct.connection, %struct.connection* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load %struct.conn_query*, %struct.conn_query** %21, align 8
  store %struct.conn_query* %22, %struct.conn_query** %3, align 8
  %23 = load %struct.conn_query*, %struct.conn_query** %3, align 8
  %24 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %23, i32 0, i32 2
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %26 = icmp ne %struct.TYPE_11__* %25, null
  br i1 %26, label %27, label %72

27:                                               ; preds = %17
  %28 = load %struct.conn_query*, %struct.conn_query** %3, align 8
  %29 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %28, i32 0, i32 2
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.conn_query*, %struct.conn_query** %3, align 8
  %34 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %32, %35
  br i1 %36, label %37, label %72

37:                                               ; preds = %27
  %38 = load %struct.conn_query*, %struct.conn_query** %3, align 8
  %39 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %38, i32 0, i32 2
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 8
  %44 = load %struct.conn_query*, %struct.conn_query** %3, align 8
  %45 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i32*
  store i32* %47, i32** %4, align 8
  %48 = load %struct.conn_query*, %struct.conn_query** %3, align 8
  %49 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %48, i32 0, i32 2
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %49, align 8
  %51 = load %struct.connection*, %struct.connection** %2, align 8
  %52 = load i32*, i32** %4, align 8
  %53 = load %struct.conn_query*, %struct.conn_query** %3, align 8
  %54 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @create_pnet_query(%struct.TYPE_11__* %50, %struct.connection* %51, i32* %52, i32 %56)
  %58 = load %struct.conn_query*, %struct.conn_query** %3, align 8
  %59 = call i32 @delete_conn_query(%struct.conn_query* %58)
  %60 = load %struct.conn_query*, %struct.conn_query** %3, align 8
  %61 = call i32 @zfree(%struct.conn_query* %60, i32 32)
  %62 = load i32*, i32** %4, align 8
  %63 = bitcast i32* %62 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %63, %struct.TYPE_10__** %5, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i32 (%struct.TYPE_10__*, %struct.connection*)*, i32 (%struct.TYPE_10__*, %struct.connection*)** %67, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %70 = load %struct.connection*, %struct.connection** %2, align 8
  %71 = call i32 %68(%struct.TYPE_10__* %69, %struct.connection* %70)
  br label %78

72:                                               ; preds = %27, %17
  %73 = load %struct.conn_query*, %struct.conn_query** %3, align 8
  %74 = call i32 @delete_conn_query(%struct.conn_query* %73)
  %75 = load %struct.conn_query*, %struct.conn_query** %3, align 8
  %76 = call i32 @zfree(%struct.conn_query* %75, i32 32)
  br label %77

77:                                               ; preds = %72
  br label %6

78:                                               ; preds = %37, %6
  ret i32 0
}

declare dso_local i32 @create_pnet_query(%struct.TYPE_11__*, %struct.connection*, i32*, i32) #1

declare dso_local i32 @delete_conn_query(%struct.conn_query*) #1

declare dso_local i32 @zfree(%struct.conn_query*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
