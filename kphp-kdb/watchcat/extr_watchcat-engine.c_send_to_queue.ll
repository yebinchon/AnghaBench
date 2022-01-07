; ModuleID = '/home/carl/AnghaBench/kphp-kdb/watchcat/extr_watchcat-engine.c_send_to_queue.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/watchcat/extr_watchcat-engine.c_send_to_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conn_target = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.connection = type { i32, i32 }
%struct.TYPE_4__ = type { i32 (%struct.connection*)* }

@queue_conn = common dso_local global %struct.conn_target* null, align 8
@verbosity = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"cannot find connection to target %s:%d for query %s, dropping query\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@my_verbosity_tmp = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"send query %d|%s\0A\00", align 1
@send_to_queue.header = internal global [50 x i8] zeroinitializer, align 16
@.str.3 = private unnamed_addr constant [22 x i8] c"set %d@entry 0 0 %d\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@sent_queries = common dso_local global i32 0, align 4
@precise_now = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @send_to_queue(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.conn_target*, align 8
  %9 = alloca %struct.connection*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.conn_target*, %struct.conn_target** @queue_conn, align 8
  store %struct.conn_target* %11, %struct.conn_target** %8, align 8
  %12 = load %struct.conn_target*, %struct.conn_target** %8, align 8
  %13 = call %struct.connection* @get_target_connection(%struct.conn_target* %12)
  store %struct.connection* %13, %struct.connection** %9, align 8
  %14 = load %struct.connection*, %struct.connection** %9, align 8
  %15 = icmp ne %struct.connection* %14, null
  br i1 %15, label %44, label %16

16:                                               ; preds = %3
  %17 = load i64, i64* @verbosity, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %43

19:                                               ; preds = %16
  %20 = load i32, i32* @stderr, align 4
  %21 = load %struct.conn_target*, %struct.conn_target** %8, align 8
  %22 = icmp ne %struct.conn_target* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load %struct.conn_target*, %struct.conn_target** %8, align 8
  %25 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @conv_addr(i32 %27, i32 0)
  br label %30

29:                                               ; preds = %19
  br label %30

30:                                               ; preds = %29, %23
  %31 = phi i8* [ %28, %23 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %29 ]
  %32 = load %struct.conn_target*, %struct.conn_target** %8, align 8
  %33 = icmp ne %struct.conn_target* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load %struct.conn_target*, %struct.conn_target** %8, align 8
  %36 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  br label %39

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38, %34
  %40 = phi i32 [ %37, %34 ], [ 0, %38 ]
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 (i32, i8*, ...) @fprintf(i32 %20, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i8* %31, i32 %40, i8* %41)
  br label %43

43:                                               ; preds = %39, %16
  store i32 -1, i32* %4, align 4
  br label %90

44:                                               ; preds = %3
  %45 = load i32, i32* @my_verbosity_tmp, align 4
  %46 = icmp sgt i32 %45, 1
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load i32, i32* @stderr, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i8*, i8** %5, align 8
  %51 = call i32 (i32, i8*, ...) @fprintf(i32 %48, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %49, i8* %50)
  br label %52

52:                                               ; preds = %47, %44
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @sprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @send_to_queue.header, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %53, i32 %54)
  store i32 %55, i32* %10, align 4
  %56 = load %struct.connection*, %struct.connection** %9, align 8
  %57 = getelementptr inbounds %struct.connection, %struct.connection* %56, i32 0, i32 1
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @write_out(i32* %57, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @send_to_queue.header, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %10, align 4
  %61 = icmp eq i32 %59, %60
  %62 = zext i1 %61 to i32
  %63 = call i32 @assert(i32 %62)
  %64 = load %struct.connection*, %struct.connection** %9, align 8
  %65 = getelementptr inbounds %struct.connection, %struct.connection* %64, i32 0, i32 1
  %66 = load i8*, i8** %5, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @write_out(i32* %65, i8* %66, i32 %67)
  %69 = load i32, i32* %6, align 4
  %70 = icmp eq i32 %68, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert(i32 %71)
  %73 = load %struct.connection*, %struct.connection** %9, align 8
  %74 = getelementptr inbounds %struct.connection, %struct.connection* %73, i32 0, i32 1
  %75 = call i32 @write_out(i32* %74, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 2)
  %76 = icmp eq i32 %75, 2
  %77 = zext i1 %76 to i32
  %78 = call i32 @assert(i32 %77)
  %79 = load i32, i32* @sent_queries, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* @sent_queries, align 4
  %81 = load %struct.connection*, %struct.connection** %9, align 8
  %82 = call %struct.TYPE_4__* @MCC_FUNC(%struct.connection* %81)
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32 (%struct.connection*)*, i32 (%struct.connection*)** %83, align 8
  %85 = load %struct.connection*, %struct.connection** %9, align 8
  %86 = call i32 %84(%struct.connection* %85)
  %87 = load i32, i32* @precise_now, align 4
  %88 = load %struct.connection*, %struct.connection** %9, align 8
  %89 = getelementptr inbounds %struct.connection, %struct.connection* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %52, %43
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local %struct.connection* @get_target_connection(%struct.conn_target*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @conv_addr(i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @write_out(i32*, i8*, i32) #1

declare dso_local %struct.TYPE_4__* @MCC_FUNC(%struct.connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
