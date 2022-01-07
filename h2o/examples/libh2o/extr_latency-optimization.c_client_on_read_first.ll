; ModuleID = '/home/carl/AnghaBench/h2o/examples/libh2o/extr_latency-optimization.c_client_on_read_first.c'
source_filename = "/home/carl/AnghaBench/h2o/examples/libh2o/extr_latency-optimization.c_client_on_read_first.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"connection closed unexpectedly:%s\0A\00", align 1
@client_stats = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@client_on_write_complete = common dso_local global i32 0, align 4
@client_on_read_second = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i8*)* @client_on_read_first to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @client_on_read_first(%struct.TYPE_10__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_11__, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load i32, i32* @stderr, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @fprintf(i32 %9, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %10)
  %12 = call i32 @exit(i32 1) #3
  unreachable

13:                                               ; preds = %2
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %15 = call i32 @h2o_socket_get_loop(%struct.TYPE_10__* %14)
  %16 = call i32 @h2o_now(i32 %15)
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @client_stats, i32 0, i32 2), align 4
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @client_stats, i32 0, i32 1), align 4
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @client_stats, i32 0, i32 0), align 4
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @h2o_buffer_consume(%struct.TYPE_12__** %28, i32 %33)
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %36 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %36, i32* %35, align 4
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %38 = load i32, i32* @client_on_write_complete, align 4
  %39 = call i32 @h2o_socket_write(%struct.TYPE_10__* %37, %struct.TYPE_11__* %5, i32 1, i32 %38)
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %41 = load i32, i32* @client_on_read_second, align 4
  %42 = call i32 @h2o_socket_read_start(%struct.TYPE_10__* %40, i32 %41)
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @h2o_now(i32) #1

declare dso_local i32 @h2o_socket_get_loop(%struct.TYPE_10__*) #1

declare dso_local i32 @h2o_buffer_consume(%struct.TYPE_12__**, i32) #1

declare dso_local i32 @H2O_STRLIT(i8*) #1

declare dso_local i32 @h2o_socket_write(%struct.TYPE_10__*, %struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @h2o_socket_read_start(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
