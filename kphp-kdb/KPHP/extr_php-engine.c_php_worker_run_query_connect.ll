; ModuleID = '/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_php_worker_run_query_connect.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_php_worker_run_query_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_7__* }

@php_script = common dso_local global i32 0, align 4
@php_worker_run_query_connect.res = internal global %struct.TYPE_7__ zeroinitializer, align 8
@default_ct = common dso_local global i32 0, align 4
@sql_target_id = common dso_local global i8* null, align 8
@rpc_ct = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"unknown protocol\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @php_worker_run_query_connect(i32* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %5 = load i32, i32* @php_script, align 4
  %6 = call i32 @php_script_query_readed(i32 %5)
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %28 [
    i32 130, label %10
    i32 128, label %18
    i32 129, label %20
  ]

10:                                               ; preds = %2
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i8* @get_target(i32 %13, i32 %16, i32* @default_ct)
  store i8* %17, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @php_worker_run_query_connect.res, i32 0, i32 0), align 8
  br label %34

18:                                               ; preds = %2
  %19 = load i8*, i8** @sql_target_id, align 8
  store i8* %19, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @php_worker_run_query_connect.res, i32 0, i32 0), align 8
  br label %34

20:                                               ; preds = %2
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i8* @get_target(i32 %23, i32 %26, i32* @rpc_ct)
  store i8* %27, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @php_worker_run_query_connect.res, i32 0, i32 0), align 8
  br label %34

28:                                               ; preds = %2
  br i1 true, label %29, label %30

29:                                               ; preds = %28
  br label %30

30:                                               ; preds = %29, %28
  %31 = phi i1 [ false, %28 ], [ false, %29 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  br label %34

34:                                               ; preds = %30, %20, %18, %10
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store %struct.TYPE_7__* @php_worker_run_query_connect.res, %struct.TYPE_7__** %37, align 8
  %38 = load i32, i32* @php_script, align 4
  %39 = call i32 @php_script_query_answered(i32 %38)
  ret void
}

declare dso_local i32 @php_script_query_readed(i32) #1

declare dso_local i8* @get_target(i32, i32, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @php_script_query_answered(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
