; ModuleID = '/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_command_net_write_run_sql.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_command_net_write_run_sql.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32* }
%struct.connection = type { i64, i32, i32 }
%struct.TYPE_5__ = type { i32 (%struct.connection*, i64)* }
%struct.TYPE_6__ = type { i32 }

@conn_ready = common dso_local global i64 0, align 8
@precise_now = common dso_local global i32 0, align 4
@conn_wait_answer = common dso_local global i64 0, align 8
@resp_first = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @command_net_write_run_sql(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.connection*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = bitcast i32* %7 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %5, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i8*, i8** %4, align 8
  %16 = bitcast i8* %15 to %struct.connection*
  store %struct.connection* %16, %struct.connection** %6, align 8
  %17 = load %struct.connection*, %struct.connection** %6, align 8
  %18 = getelementptr inbounds %struct.connection, %struct.connection* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @conn_ready, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.connection*, %struct.connection** %6, align 8
  %25 = getelementptr inbounds %struct.connection, %struct.connection* %24, i32 0, i32 2
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @write_out(i32* %25, i32* %28, i64 %31)
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %32, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load %struct.connection*, %struct.connection** %6, align 8
  %40 = call %struct.TYPE_5__* @SQLC_FUNC(%struct.connection* %39)
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32 (%struct.connection*, i64)*, i32 (%struct.connection*, i64)** %41, align 8
  %43 = load %struct.connection*, %struct.connection** %6, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %46, 4
  %48 = call i32 %42(%struct.connection* %43, i64 %47)
  %49 = load %struct.connection*, %struct.connection** %6, align 8
  %50 = call i32 @flush_connection_output(%struct.connection* %49)
  %51 = load i32, i32* @precise_now, align 4
  %52 = load %struct.connection*, %struct.connection** %6, align 8
  %53 = getelementptr inbounds %struct.connection, %struct.connection* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 8
  %54 = load i64, i64* @conn_wait_answer, align 8
  %55 = load %struct.connection*, %struct.connection** %6, align 8
  %56 = getelementptr inbounds %struct.connection, %struct.connection* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load i32, i32* @resp_first, align 4
  %58 = load %struct.connection*, %struct.connection** %6, align 8
  %59 = call %struct.TYPE_6__* @SQLC_DATA(%struct.connection* %58)
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 4
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @free(i32* %63)
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  store i32* null, i32** %66, align 8
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  store i64 0, i64* %68, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @write_out(i32*, i32*, i64) #1

declare dso_local %struct.TYPE_5__* @SQLC_FUNC(%struct.connection*) #1

declare dso_local i32 @flush_connection_output(%struct.connection*) #1

declare dso_local %struct.TYPE_6__* @SQLC_DATA(%struct.connection*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
