; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-merge-extension.c_get_target_conn_simple.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-merge-extension.c_get_target_conn_simple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conn_target = type { i32 }
%struct.connection = type { i32, i64, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.conn_query = type { i32 }

@get_targets = common dso_local global i64 0, align 8
@get_target = common dso_local global %struct.conn_target** null, align 8
@get_connection = common dso_local global %struct.connection** null, align 8
@.str = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@CC = common dso_local global %struct.TYPE_2__* null, align 8
@precise_now = common dso_local global i32 0, align 4
@MAX_CLUSTER_SERVERS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.connection* @get_target_conn_simple(%struct.conn_target* %0, %struct.connection* %1) #0 {
  %3 = alloca %struct.connection*, align 8
  %4 = alloca %struct.conn_target*, align 8
  %5 = alloca %struct.connection*, align 8
  %6 = alloca %struct.connection*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.conn_query*, align 8
  store %struct.conn_target* %0, %struct.conn_target** %4, align 8
  store %struct.connection* %1, %struct.connection** %5, align 8
  %9 = load %struct.conn_target*, %struct.conn_target** %4, align 8
  %10 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %90

13:                                               ; preds = %2
  %14 = load %struct.conn_target*, %struct.conn_target** %4, align 8
  %15 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load i32, i32* %7, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %19, %13
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i64, i64* @get_targets, align 8
  %27 = trunc i64 %26 to i32
  %28 = icmp ult i32 %25, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load %struct.conn_target**, %struct.conn_target*** @get_target, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.conn_target*, %struct.conn_target** %31, i64 %33
  %35 = load %struct.conn_target*, %struct.conn_target** %34, align 8
  %36 = load %struct.conn_target*, %struct.conn_target** %4, align 8
  %37 = icmp eq %struct.conn_target* %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load %struct.connection**, %struct.connection*** @get_connection, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.connection*, %struct.connection** %40, i64 %42
  %44 = load %struct.connection*, %struct.connection** %43, align 8
  store %struct.connection* %44, %struct.connection** %6, align 8
  %45 = load %struct.conn_target*, %struct.conn_target** %4, align 8
  %46 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %88

49:                                               ; preds = %22
  %50 = load %struct.conn_target*, %struct.conn_target** %4, align 8
  %51 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = sub nsw i32 0, %52
  %54 = load %struct.conn_target*, %struct.conn_target** %4, align 8
  %55 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load %struct.connection*, %struct.connection** %6, align 8
  %57 = getelementptr inbounds %struct.connection, %struct.connection* %56, i32 0, i32 2
  %58 = call i32 @write_out(i32* %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %59 = load %struct.connection*, %struct.connection** %6, align 8
  %60 = load %struct.connection*, %struct.connection** %5, align 8
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CC, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = sitofp i64 %63 to double
  %65 = fadd double %64, 2.000000e-01
  %66 = fptosi double %65 to i64
  %67 = call %struct.conn_query* @create_query(%struct.connection* %59, %struct.connection* %60, i64 %66)
  store %struct.conn_query* %67, %struct.conn_query** %8, align 8
  %68 = load %struct.connection*, %struct.connection** %5, align 8
  %69 = getelementptr inbounds %struct.connection, %struct.connection* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %49
  %73 = load %struct.conn_query*, %struct.conn_query** %8, align 8
  %74 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, 4096
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %72, %49
  %78 = load %struct.connection*, %struct.connection** %6, align 8
  %79 = call i32 @flush_output(%struct.connection* %78)
  %80 = load i32, i32* @precise_now, align 4
  %81 = load %struct.connection*, %struct.connection** %6, align 8
  %82 = getelementptr inbounds %struct.connection, %struct.connection* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load %struct.connection*, %struct.connection** %6, align 8
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CC, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @accumulate_query_timeout(%struct.connection* %83, i64 %86)
  br label %89

88:                                               ; preds = %22
  br label %89

89:                                               ; preds = %88, %77
  br label %120

90:                                               ; preds = %2
  %91 = load %struct.conn_target*, %struct.conn_target** %4, align 8
  %92 = call %struct.connection* @get_target_connection(%struct.conn_target* %91)
  store %struct.connection* %92, %struct.connection** %6, align 8
  %93 = load %struct.connection*, %struct.connection** %6, align 8
  %94 = icmp ne %struct.connection* %93, null
  br i1 %94, label %96, label %95

95:                                               ; preds = %90
  store %struct.connection* null, %struct.connection** %3, align 8
  br label %122

96:                                               ; preds = %90
  %97 = load i64, i64* @get_targets, align 8
  %98 = load i64, i64* @MAX_CLUSTER_SERVERS, align 8
  %99 = icmp slt i64 %97, %98
  %100 = zext i1 %99 to i32
  %101 = call i32 @assert(i32 %100)
  %102 = load i64, i64* @get_targets, align 8
  %103 = add nsw i64 %102, 1
  store i64 %103, i64* @get_targets, align 8
  %104 = trunc i64 %102 to i32
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %7, align 4
  %106 = add nsw i32 %105, 1
  %107 = sub nsw i32 0, %106
  %108 = load %struct.conn_target*, %struct.conn_target** %4, align 8
  %109 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 4
  %110 = load %struct.conn_target*, %struct.conn_target** %4, align 8
  %111 = load %struct.conn_target**, %struct.conn_target*** @get_target, align 8
  %112 = load i32, i32* %7, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.conn_target*, %struct.conn_target** %111, i64 %113
  store %struct.conn_target* %110, %struct.conn_target** %114, align 8
  %115 = load %struct.connection*, %struct.connection** %6, align 8
  %116 = load %struct.connection**, %struct.connection*** @get_connection, align 8
  %117 = load i32, i32* %7, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.connection*, %struct.connection** %116, i64 %118
  store %struct.connection* %115, %struct.connection** %119, align 8
  br label %120

120:                                              ; preds = %96, %89
  %121 = load %struct.connection*, %struct.connection** %6, align 8
  store %struct.connection* %121, %struct.connection** %3, align 8
  br label %122

122:                                              ; preds = %120, %95
  %123 = load %struct.connection*, %struct.connection** %3, align 8
  ret %struct.connection* %123
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @write_out(i32*, i8*, i32) #1

declare dso_local %struct.conn_query* @create_query(%struct.connection*, %struct.connection*, i64) #1

declare dso_local i32 @flush_output(%struct.connection*) #1

declare dso_local i32 @accumulate_query_timeout(%struct.connection*, i64) #1

declare dso_local %struct.connection* @get_target_connection(%struct.conn_target*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
