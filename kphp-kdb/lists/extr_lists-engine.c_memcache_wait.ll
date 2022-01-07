; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-engine.c_memcache_wait.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-engine.c_memcache_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32, %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { {}* }
%struct.TYPE_4__ = type { i32 }

@WaitAioArrPos = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"wait for aio..\0A\00", align 1
@C_INTIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"memcache: IN TIMEOUT (%p)\0A\00", align 1
@C_WANTWR = common dso_local global i32 0, align 4
@WaitAioArr = common dso_local global i32* null, align 8
@aio_t = common dso_local global double 0.000000e+00, align 8
@aio_metafile_query_type = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memcache_wait(%struct.connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connection*, align 8
  %4 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %3, align 8
  %5 = load i32, i32* @WaitAioArrPos, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %73

8:                                                ; preds = %1
  %9 = load i32, i32* @verbosity, align 4
  %10 = icmp sgt i32 %9, 2
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load i32, i32* @stderr, align 4
  %13 = call i32 (i32, i8*, ...) @fprintf(i32 %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %11, %8
  %15 = load %struct.connection*, %struct.connection** %3, align 8
  %16 = getelementptr inbounds %struct.connection, %struct.connection* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @C_INTIMEOUT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %14
  %22 = load i32, i32* @verbosity, align 4
  %23 = icmp sgt i32 %22, 1
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32, i32* @stderr, align 4
  %26 = load %struct.connection*, %struct.connection** %3, align 8
  %27 = call i32 (i32, i8*, ...) @fprintf(i32 %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), %struct.connection* %26)
  br label %28

28:                                               ; preds = %24, %21
  %29 = call i32 (...) @WaitAioArrClear()
  store i32 0, i32* %2, align 4
  br label %73

30:                                               ; preds = %14
  %31 = load %struct.connection*, %struct.connection** %3, align 8
  %32 = getelementptr inbounds %struct.connection, %struct.connection* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp sgt i32 %34, 8192
  br i1 %35, label %36, label %50

36:                                               ; preds = %30
  %37 = load i32, i32* @C_WANTWR, align 4
  %38 = load %struct.connection*, %struct.connection** %3, align 8
  %39 = getelementptr inbounds %struct.connection, %struct.connection* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 8
  %42 = load %struct.connection*, %struct.connection** %3, align 8
  %43 = getelementptr inbounds %struct.connection, %struct.connection* %42, i32 0, i32 1
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = bitcast {}** %45 to i32 (%struct.connection*)**
  %47 = load i32 (%struct.connection*)*, i32 (%struct.connection*)** %46, align 8
  %48 = load %struct.connection*, %struct.connection** %3, align 8
  %49 = call i32 %47(%struct.connection* %48)
  br label %50

50:                                               ; preds = %36, %30
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %65, %50
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @WaitAioArrPos, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %68

55:                                               ; preds = %51
  %56 = load i32*, i32** @WaitAioArr, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.connection*, %struct.connection** %3, align 8
  %62 = load double, double* @aio_t, align 8
  %63 = fmul double 1.100000e+00, %62
  %64 = call i32 @conn_schedule_aio(i32 %60, %struct.connection* %61, double %63, i32* @aio_metafile_query_type)
  br label %65

65:                                               ; preds = %55
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %4, align 4
  br label %51

68:                                               ; preds = %51
  %69 = load %struct.connection*, %struct.connection** %3, align 8
  %70 = load double, double* @aio_t, align 8
  %71 = call i32 @set_connection_timeout(%struct.connection* %69, double %70)
  %72 = call i32 (...) @WaitAioArrClear()
  store i32 1, i32* %2, align 4
  br label %73

73:                                               ; preds = %68, %28, %7
  %74 = load i32, i32* %2, align 4
  ret i32 %74
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
