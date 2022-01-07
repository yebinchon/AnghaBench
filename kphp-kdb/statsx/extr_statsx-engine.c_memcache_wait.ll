; ModuleID = '/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-engine.c_memcache_wait.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-engine.c_memcache_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { {}* }
%struct.TYPE_3__ = type { i32 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"wait for aio..\0A\00", align 1
@C_INTIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"memcache_get: IN TIMEOUT (%p)\0A\00", align 1
@C_WANTWR = common dso_local global i32 0, align 4
@WaitAioArrPos = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [61 x i8] c"WaitAio=0 - no memory to load user metafile, query dropped.\0A\00", align 1
@WaitAioArr = common dso_local global i32* null, align 8
@aio_t = common dso_local global double 0.000000e+00, align 8
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
  br i1 %16, label %17, label %26

17:                                               ; preds = %10
  %18 = load i32, i32* @verbosity, align 4
  %19 = icmp sgt i32 %18, 1
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i32, i32* @stderr, align 4
  %22 = load %struct.connection*, %struct.connection** %3, align 8
  %23 = call i32 (i32, i8*, ...) @fprintf(i32 %21, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), %struct.connection* %22)
  br label %24

24:                                               ; preds = %20, %17
  %25 = call i32 (...) @WaitAioArrClear()
  store i32 0, i32* %2, align 4
  br label %75

26:                                               ; preds = %10
  %27 = load %struct.connection*, %struct.connection** %3, align 8
  %28 = getelementptr inbounds %struct.connection, %struct.connection* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sgt i32 %30, 8192
  br i1 %31, label %32, label %46

32:                                               ; preds = %26
  %33 = load i32, i32* @C_WANTWR, align 4
  %34 = load %struct.connection*, %struct.connection** %3, align 8
  %35 = getelementptr inbounds %struct.connection, %struct.connection* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 8
  %38 = load %struct.connection*, %struct.connection** %3, align 8
  %39 = getelementptr inbounds %struct.connection, %struct.connection* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = bitcast {}** %41 to i32 (%struct.connection*)**
  %43 = load i32 (%struct.connection*)*, i32 (%struct.connection*)** %42, align 8
  %44 = load %struct.connection*, %struct.connection** %3, align 8
  %45 = call i32 %43(%struct.connection* %44)
  br label %46

46:                                               ; preds = %32, %26
  %47 = load i32, i32* @WaitAioArrPos, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* @stderr, align 4
  %51 = call i32 (i32, i8*, ...) @fprintf(i32 %50, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %75

52:                                               ; preds = %46
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %67, %52
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @WaitAioArrPos, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %53
  %58 = load i32*, i32** @WaitAioArr, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.connection*, %struct.connection** %3, align 8
  %64 = load double, double* @aio_t, align 8
  %65 = fmul double 1.100000e+00, %64
  %66 = call i32 @conn_schedule_aio(i32 %62, %struct.connection* %63, double %65, i32* @aio_metafile_query_type)
  br label %67

67:                                               ; preds = %57
  %68 = load i32, i32* %4, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %4, align 4
  br label %53

70:                                               ; preds = %53
  %71 = load %struct.connection*, %struct.connection** %3, align 8
  %72 = load double, double* @aio_t, align 8
  %73 = call i32 @set_connection_timeout(%struct.connection* %71, double %72)
  %74 = call i32 (...) @WaitAioArrClear()
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %70, %49, %24
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @WaitAioArrClear(...) #1

declare dso_local i32 @conn_schedule_aio(i32, %struct.connection*, double, i32*) #1

declare dso_local i32 @set_connection_timeout(%struct.connection*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
