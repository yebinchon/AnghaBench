; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-merge-extension.c_get_target_conn.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-merge-extension.c_get_target_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conn_target = type { i32 }
%struct.connection = type { i32 }

@get_targets = common dso_local global i64 0, align 8
@get_target = common dso_local global %struct.conn_target** null, align 8
@get_connection = common dso_local global %struct.connection** null, align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"get \00", align 1
@MAX_CLUSTER_SERVERS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.connection* @get_target_conn(%struct.conn_target* %0) #0 {
  %2 = alloca %struct.connection*, align 8
  %3 = alloca %struct.conn_target*, align 8
  %4 = alloca %struct.connection*, align 8
  %5 = alloca i32, align 4
  store %struct.conn_target* %0, %struct.conn_target** %3, align 8
  %6 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %7 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %61

10:                                               ; preds = %1
  %11 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %12 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load i32, i32* %5, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %16, %10
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i64, i64* @get_targets, align 8
  %24 = trunc i64 %23 to i32
  %25 = icmp ult i32 %22, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.conn_target**, %struct.conn_target*** @get_target, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.conn_target*, %struct.conn_target** %28, i64 %30
  %32 = load %struct.conn_target*, %struct.conn_target** %31, align 8
  %33 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %34 = icmp eq %struct.conn_target* %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load %struct.connection**, %struct.connection*** @get_connection, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.connection*, %struct.connection** %37, i64 %39
  %41 = load %struct.connection*, %struct.connection** %40, align 8
  store %struct.connection* %41, %struct.connection** %4, align 8
  %42 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %43 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %19
  %47 = load %struct.connection*, %struct.connection** %4, align 8
  %48 = getelementptr inbounds %struct.connection, %struct.connection* %47, i32 0, i32 0
  %49 = call i32 @write_out(i32* %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  br label %60

50:                                               ; preds = %19
  %51 = load %struct.connection*, %struct.connection** %4, align 8
  %52 = getelementptr inbounds %struct.connection, %struct.connection* %51, i32 0, i32 0
  %53 = call i32 @write_out(i32* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %54 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %55 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sub nsw i32 0, %56
  %58 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %59 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  br label %60

60:                                               ; preds = %50, %46
  br label %93

61:                                               ; preds = %1
  %62 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %63 = call %struct.connection* @get_target_connection(%struct.conn_target* %62)
  store %struct.connection* %63, %struct.connection** %4, align 8
  %64 = load %struct.connection*, %struct.connection** %4, align 8
  %65 = icmp ne %struct.connection* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %61
  store %struct.connection* null, %struct.connection** %2, align 8
  br label %95

67:                                               ; preds = %61
  %68 = load i64, i64* @get_targets, align 8
  %69 = load i64, i64* @MAX_CLUSTER_SERVERS, align 8
  %70 = icmp slt i64 %68, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert(i32 %71)
  %73 = load i64, i64* @get_targets, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* @get_targets, align 8
  %75 = trunc i64 %73 to i32
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 1
  %78 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %79 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  %80 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %81 = load %struct.conn_target**, %struct.conn_target*** @get_target, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.conn_target*, %struct.conn_target** %81, i64 %83
  store %struct.conn_target* %80, %struct.conn_target** %84, align 8
  %85 = load %struct.connection*, %struct.connection** %4, align 8
  %86 = load %struct.connection**, %struct.connection*** @get_connection, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.connection*, %struct.connection** %86, i64 %88
  store %struct.connection* %85, %struct.connection** %89, align 8
  %90 = load %struct.connection*, %struct.connection** %4, align 8
  %91 = getelementptr inbounds %struct.connection, %struct.connection* %90, i32 0, i32 0
  %92 = call i32 @write_out(i32* %91, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  br label %93

93:                                               ; preds = %67, %60
  %94 = load %struct.connection*, %struct.connection** %4, align 8
  store %struct.connection* %94, %struct.connection** %2, align 8
  br label %95

95:                                               ; preds = %93, %66
  %96 = load %struct.connection*, %struct.connection** %2, align 8
  ret %struct.connection* %96
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @write_out(i32*, i8*, i32) #1

declare dso_local %struct.connection* @get_target_connection(%struct.conn_target*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
