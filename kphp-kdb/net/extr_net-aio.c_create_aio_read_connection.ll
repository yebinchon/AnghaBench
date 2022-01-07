; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-aio.c_create_aio_read_connection.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-aio.c_create_aio_read_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.aio_connection* }
%struct.aio_connection = type { i32, %struct.TYPE_5__*, %struct.aio_connection*, %struct.aio_connection*, i32, i32, i8*, %struct.conn_query*, %struct.conn_query*, i32*, i32 }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__, i64, i8* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.conn_query = type { i32 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"in create_aio_read_connection(%d,%p,%lld,%d,%p): allocated at %p\0A\00", align 1
@C_AIO = common dso_local global i32 0, align 4
@ct_aio = common dso_local global i32 0, align 4
@conn_wait_aio = common dso_local global i32 0, align 4
@aio_list = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@SIGEV_SIGNAL = common dso_local global i32 0, align 4
@SIGPOLL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"aio_read returned -1: %m\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.aio_connection* @create_aio_read_connection(i32 %0, i8* %1, i64 %2, i32 %3, i32* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.aio_connection*, align 8
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i8* %5, i8** %12, align 8
  %14 = call i8* @zmalloc0(i32 80)
  %15 = bitcast i8* %14 to %struct.aio_connection*
  store %struct.aio_connection* %15, %struct.aio_connection** %13, align 8
  %16 = load i32, i32* @verbosity, align 4
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %18, label %27

18:                                               ; preds = %6
  %19 = load i32, i32* @stderr, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i8*, i8** %8, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load i32, i32* %10, align 4
  %24 = load i8*, i8** %12, align 8
  %25 = load %struct.aio_connection*, %struct.aio_connection** %13, align 8
  %26 = call i32 (i32, i8*, ...) @fprintf(i32 %19, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %20, i8* %21, i64 %22, i32 %23, i8* %24, %struct.aio_connection* %25)
  br label %27

27:                                               ; preds = %18, %6
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.aio_connection*, %struct.aio_connection** %13, align 8
  %30 = getelementptr inbounds %struct.aio_connection, %struct.aio_connection* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* @C_AIO, align 4
  %32 = load %struct.aio_connection*, %struct.aio_connection** %13, align 8
  %33 = getelementptr inbounds %struct.aio_connection, %struct.aio_connection* %32, i32 0, i32 10
  store i32 %31, i32* %33, align 8
  %34 = load i32*, i32** %11, align 8
  %35 = load %struct.aio_connection*, %struct.aio_connection** %13, align 8
  %36 = getelementptr inbounds %struct.aio_connection, %struct.aio_connection* %35, i32 0, i32 9
  store i32* %34, i32** %36, align 8
  %37 = call i8* @zmalloc0(i32 4)
  %38 = bitcast i8* %37 to %struct.TYPE_5__*
  %39 = load %struct.aio_connection*, %struct.aio_connection** %13, align 8
  %40 = getelementptr inbounds %struct.aio_connection, %struct.aio_connection* %39, i32 0, i32 1
  store %struct.TYPE_5__* %38, %struct.TYPE_5__** %40, align 8
  %41 = load %struct.aio_connection*, %struct.aio_connection** %13, align 8
  %42 = bitcast %struct.aio_connection* %41 to %struct.conn_query*
  %43 = load %struct.aio_connection*, %struct.aio_connection** %13, align 8
  %44 = getelementptr inbounds %struct.aio_connection, %struct.aio_connection* %43, i32 0, i32 7
  store %struct.conn_query* %42, %struct.conn_query** %44, align 8
  %45 = load %struct.aio_connection*, %struct.aio_connection** %13, align 8
  %46 = getelementptr inbounds %struct.aio_connection, %struct.aio_connection* %45, i32 0, i32 8
  store %struct.conn_query* %42, %struct.conn_query** %46, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = load %struct.aio_connection*, %struct.aio_connection** %13, align 8
  %49 = getelementptr inbounds %struct.aio_connection, %struct.aio_connection* %48, i32 0, i32 6
  store i8* %47, i8** %49, align 8
  %50 = load i32, i32* @ct_aio, align 4
  %51 = load %struct.aio_connection*, %struct.aio_connection** %13, align 8
  %52 = getelementptr inbounds %struct.aio_connection, %struct.aio_connection* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @conn_wait_aio, align 4
  %54 = load %struct.aio_connection*, %struct.aio_connection** %13, align 8
  %55 = getelementptr inbounds %struct.aio_connection, %struct.aio_connection* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 8
  %56 = load %struct.aio_connection*, %struct.aio_connection** %13, align 8
  %57 = getelementptr inbounds %struct.aio_connection, %struct.aio_connection* %56, i32 0, i32 2
  store %struct.aio_connection* bitcast (%struct.TYPE_6__* @aio_list to %struct.aio_connection*), %struct.aio_connection** %57, align 8
  %58 = load %struct.aio_connection*, %struct.aio_connection** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @aio_list, i32 0, i32 0), align 8
  %59 = load %struct.aio_connection*, %struct.aio_connection** %13, align 8
  %60 = getelementptr inbounds %struct.aio_connection, %struct.aio_connection* %59, i32 0, i32 3
  store %struct.aio_connection* %58, %struct.aio_connection** %60, align 8
  %61 = load %struct.aio_connection*, %struct.aio_connection** %13, align 8
  %62 = load %struct.aio_connection*, %struct.aio_connection** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @aio_list, i32 0, i32 0), align 8
  %63 = getelementptr inbounds %struct.aio_connection, %struct.aio_connection* %62, i32 0, i32 2
  store %struct.aio_connection* %61, %struct.aio_connection** %63, align 8
  %64 = load %struct.aio_connection*, %struct.aio_connection** %13, align 8
  store %struct.aio_connection* %64, %struct.aio_connection** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @aio_list, i32 0, i32 0), align 8
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.aio_connection*, %struct.aio_connection** %13, align 8
  %67 = getelementptr inbounds %struct.aio_connection, %struct.aio_connection* %66, i32 0, i32 1
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  store i32 %65, i32* %69, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = load %struct.aio_connection*, %struct.aio_connection** %13, align 8
  %72 = getelementptr inbounds %struct.aio_connection, %struct.aio_connection* %71, i32 0, i32 1
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 4
  store i8* %70, i8** %74, align 8
  %75 = load i64, i64* %9, align 8
  %76 = load %struct.aio_connection*, %struct.aio_connection** %13, align 8
  %77 = getelementptr inbounds %struct.aio_connection, %struct.aio_connection* %76, i32 0, i32 1
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 3
  store i64 %75, i64* %79, align 8
  %80 = load i32, i32* %10, align 4
  %81 = load %struct.aio_connection*, %struct.aio_connection** %13, align 8
  %82 = getelementptr inbounds %struct.aio_connection, %struct.aio_connection* %81, i32 0, i32 1
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  store i32 %80, i32* %84, align 4
  %85 = load i32, i32* @SIGEV_SIGNAL, align 4
  %86 = load %struct.aio_connection*, %struct.aio_connection** %13, align 8
  %87 = getelementptr inbounds %struct.aio_connection, %struct.aio_connection* %86, i32 0, i32 1
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  store i32 %85, i32* %90, align 4
  %91 = load i32, i32* @SIGPOLL, align 4
  %92 = load %struct.aio_connection*, %struct.aio_connection** %13, align 8
  %93 = getelementptr inbounds %struct.aio_connection, %struct.aio_connection* %92, i32 0, i32 1
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  store i32 %91, i32* %96, align 8
  %97 = load %struct.aio_connection*, %struct.aio_connection** %13, align 8
  %98 = getelementptr inbounds %struct.aio_connection, %struct.aio_connection* %97, i32 0, i32 1
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = call i64 @aio_read(%struct.TYPE_5__* %99)
  %101 = icmp slt i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %27
  %103 = load i32, i32* @stderr, align 4
  %104 = call i32 (i32, i8*, ...) @fprintf(i32 %103, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %105 = call i32 @exit(i32 3) #3
  unreachable

106:                                              ; preds = %27
  %107 = load %struct.aio_connection*, %struct.aio_connection** %13, align 8
  ret %struct.aio_connection* %107
}

declare dso_local i8* @zmalloc0(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @aio_read(%struct.TYPE_5__*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
