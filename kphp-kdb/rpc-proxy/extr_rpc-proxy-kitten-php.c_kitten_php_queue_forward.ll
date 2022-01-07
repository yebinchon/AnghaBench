; ModuleID = '/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy-kitten-php.c_kitten_php_queue_forward.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy-kitten-php.c_kitten_php_queue_forward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32 }
%struct.connection = type { %struct.TYPE_6__* }

@.str = private unnamed_addr constant [18 x i8] c"forward: CC = %p\0A\00", align 1
@CC = common dso_local global %struct.TYPE_6__* null, align 8
@CQ = common dso_local global %struct.TYPE_7__* null, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"Forwarding: connect = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kitten_php_queue_forward() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.connection*, align 8
  %3 = alloca i64, align 8
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CC, align 8
  %5 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* %4)
  %6 = call i64 (...) @tl_fetch_error()
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %41

9:                                                ; preds = %0
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** @CQ, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %9
  %17 = call i32 @kitten_php_delay(i32 0, i32 1)
  store i32 %17, i32* %1, align 4
  br label %41

18:                                               ; preds = %9
  %19 = call %struct.connection* @kitten_php_get_connection(i32 0)
  store %struct.connection* %19, %struct.connection** %2, align 8
  %20 = load %struct.connection*, %struct.connection** %2, align 8
  %21 = icmp ne %struct.connection* %20, null
  br i1 %21, label %22, label %39

22:                                               ; preds = %18
  %23 = load %struct.connection*, %struct.connection** %2, align 8
  %24 = getelementptr inbounds %struct.connection, %struct.connection* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_6__* %25)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** @CQ, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @get_free_rpc_qid(i32 %31)
  store i64 %32, i64* %3, align 8
  %33 = load %struct.connection*, %struct.connection** %2, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CC, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i64, i64* %3, align 8
  %38 = call i32 @kphp_query_forward_conn(%struct.connection* %33, i32 %36, i64 %37, i32 1)
  store i32 %38, i32* %1, align 4
  br label %41

39:                                               ; preds = %18
  %40 = call i32 @kitten_php_delay(i32 1, i32 1)
  store i32 0, i32* %1, align 4
  br label %41

41:                                               ; preds = %39, %22, %16, %8
  %42 = load i32, i32* %1, align 4
  ret i32 %42
}

declare dso_local i32 @vkprintf(i32, i8*, %struct.TYPE_6__*) #1

declare dso_local i64 @tl_fetch_error(...) #1

declare dso_local i32 @kitten_php_delay(i32, i32) #1

declare dso_local %struct.connection* @kitten_php_get_connection(i32) #1

declare dso_local i64 @get_free_rpc_qid(i32) #1

declare dso_local i32 @kphp_query_forward_conn(%struct.connection*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
