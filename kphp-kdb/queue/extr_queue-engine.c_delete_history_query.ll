; ModuleID = '/home/carl/AnghaBench/kphp-kdb/queue/extr_queue-engine.c_delete_history_query.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/queue/extr_queue-engine.c_delete_history_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conn_query = type { i32, %struct.connection*, i64 }
%struct.connection = type { i32, i64 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"delete_history_query (%p,%p)\0A\00", align 1
@str_memory = common dso_local global i32 0, align 4
@pending_http_queries = common dso_local global i32 0, align 4
@conn_generation = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @delete_history_query(%struct.conn_query* %0) #0 {
  %2 = alloca %struct.conn_query*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.connection*, align 8
  %5 = alloca i32, align 4
  store %struct.conn_query* %0, %struct.conn_query** %2, align 8
  %6 = load i32, i32* @verbosity, align 4
  %7 = icmp sgt i32 %6, 1
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load i32, i32* @stderr, align 4
  %10 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %11 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %12 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %11, i32 0, i32 1
  %13 = load %struct.connection*, %struct.connection** %12, align 8
  %14 = call i32 @fprintf(i32 %9, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), %struct.conn_query* %10, %struct.connection* %13)
  br label %15

15:                                               ; preds = %8, %1
  %16 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %17 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i8*
  store i8* %19, i8** %3, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @qkey_clear_conn(i8* %20)
  %22 = load i8*, i8** %3, align 8
  %23 = call i64 @strlen(i8* %22)
  %24 = add nsw i64 %23, 1
  %25 = load i32, i32* @str_memory, align 4
  %26 = sext i32 %25 to i64
  %27 = sub nsw i64 %26, %24
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* @str_memory, align 4
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 @dl_strfree(i8* %29)
  %31 = load i32, i32* @pending_http_queries, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* @pending_http_queries, align 4
  %33 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %34 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %33, i32 0, i32 1
  %35 = load %struct.connection*, %struct.connection** %34, align 8
  store %struct.connection* %35, %struct.connection** %4, align 8
  %36 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %37 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %5, align 4
  %39 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %40 = call i32 @delete_conn_query(%struct.conn_query* %39)
  %41 = load %struct.connection*, %struct.connection** %4, align 8
  %42 = getelementptr inbounds %struct.connection, %struct.connection* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %15
  %47 = load i32, i32* @conn_generation, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* @conn_generation, align 4
  %49 = load %struct.connection*, %struct.connection** %4, align 8
  %50 = getelementptr inbounds %struct.connection, %struct.connection* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.connection*, %struct.connection** %4, align 8
  %52 = getelementptr inbounds %struct.connection, %struct.connection* %51, i32 0, i32 1
  store i64 0, i64* %52, align 8
  br label %53

53:                                               ; preds = %46, %15
  %54 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %55 = call i32 @zfree(%struct.conn_query* %54, i32 24)
  ret i32 0
}

declare dso_local i32 @fprintf(i32, i8*, %struct.conn_query*, %struct.connection*) #1

declare dso_local i32 @qkey_clear_conn(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @dl_strfree(i8*) #1

declare dso_local i32 @delete_conn_query(%struct.conn_query*) #1

declare dso_local i32 @zfree(%struct.conn_query*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
