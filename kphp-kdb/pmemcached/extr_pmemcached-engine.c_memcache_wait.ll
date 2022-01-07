; ModuleID = '/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-engine.c_memcache_wait.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-engine.c_memcache_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32, %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { {}* }
%struct.TYPE_4__ = type { i32 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"wait for aio..\0A\00", align 1
@C_INTIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"memcache: IN TIMEOUT (%p)\0A\00", align 1
@C_WANTWR = common dso_local global i32 0, align 4
@WaitAioArrPos = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [61 x i8] c"WaitAio=0 - no memory to load user metafile, query dropped.\0A\00", align 1
@WaitAioArr = common dso_local global i32* null, align 8
@aio_metafile_query_type = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memcache_wait(%struct.connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connection*, align 8
  %4 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %3, align 8
  %5 = load i32, i32* @verbosity, align 4
  %6 = icmp sgt i32 %5, 2
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* @stderr, align 4
  %9 = call i32 (i32, i8*, ...) @fprintf(i32 %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %7, %1
  %11 = load %struct.connection*, %struct.connection** %3, align 8
  %12 = getelementptr inbounds %struct.connection, %struct.connection* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @C_INTIMEOUT, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %10
  %18 = load i32, i32* @verbosity, align 4
  %19 = icmp sgt i32 %18, 1
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i32, i32* @stderr, align 4
  %22 = load %struct.connection*, %struct.connection** %3, align 8
  %23 = call i32 (i32, i8*, ...) @fprintf(i32 %21, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), %struct.connection* %22)
  br label %24

24:                                               ; preds = %20, %17
  store i32 0, i32* %2, align 4
  br label %71

25:                                               ; preds = %10
  %26 = load %struct.connection*, %struct.connection** %3, align 8
  %27 = getelementptr inbounds %struct.connection, %struct.connection* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp sgt i32 %29, 8192
  br i1 %30, label %31, label %45

31:                                               ; preds = %25
  %32 = load i32, i32* @C_WANTWR, align 4
  %33 = load %struct.connection*, %struct.connection** %3, align 8
  %34 = getelementptr inbounds %struct.connection, %struct.connection* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 8
  %37 = load %struct.connection*, %struct.connection** %3, align 8
  %38 = getelementptr inbounds %struct.connection, %struct.connection* %37, i32 0, i32 1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = bitcast {}** %40 to i32 (%struct.connection*)**
  %42 = load i32 (%struct.connection*)*, i32 (%struct.connection*)** %41, align 8
  %43 = load %struct.connection*, %struct.connection** %3, align 8
  %44 = call i32 %42(%struct.connection* %43)
  br label %45

45:                                               ; preds = %31, %25
  %46 = load i32, i32* @WaitAioArrPos, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* @stderr, align 4
  %50 = call i32 (i32, i8*, ...) @fprintf(i32 %49, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %71

51:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %64, %51
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @WaitAioArrPos, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %67

56:                                               ; preds = %52
  %57 = load i32*, i32** @WaitAioArr, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.connection*, %struct.connection** %3, align 8
  %63 = call i32 @conn_schedule_aio(i32 %61, %struct.connection* %62, double 0x3FE6666666666666, i32* @aio_metafile_query_type)
  br label %64

64:                                               ; preds = %56
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %4, align 4
  br label %52

67:                                               ; preds = %52
  %68 = load %struct.connection*, %struct.connection** %3, align 8
  %69 = call i32 @set_connection_timeout(%struct.connection* %68, double 5.000000e-01)
  %70 = call i32 (...) @WaitAioArrClear()
  store i32 1, i32* %2, align 4
  br label %71

71:                                               ; preds = %67, %48, %24
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @conn_schedule_aio(i32, %struct.connection*, double, i32*) #1

declare dso_local i32 @set_connection_timeout(%struct.connection*, double) #1

declare dso_local i32 @WaitAioArrClear(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
