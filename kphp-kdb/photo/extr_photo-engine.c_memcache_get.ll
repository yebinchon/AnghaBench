; ModuleID = '/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-engine.c_memcache_get.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-engine.c_memcache_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 (%struct.connection*)* }
%struct.TYPE_3__ = type { i32 }

@C_INTIMEOUT = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"memcache_get: IN TIMEOUT (%p)\0A\00", align 1
@C_WANTWR = common dso_local global i32 0, align 4
@WaitAioArrPos = common dso_local global i32 0, align 4
@WaitAioArr = common dso_local global i32* null, align 8
@aio_metafile_query_type = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memcache_get(%struct.connection* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.connection*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = call i32 (...) @WaitAioArrClear()
  %11 = load %struct.connection*, %struct.connection** %5, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @memcache_try_get(%struct.connection* %11, i8* %12, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp eq i32 %15, -2
  br i1 %16, label %17, label %78

17:                                               ; preds = %3
  %18 = load %struct.connection*, %struct.connection** %5, align 8
  %19 = getelementptr inbounds %struct.connection, %struct.connection* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @C_INTIMEOUT, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %17
  %25 = load i32, i32* @verbosity, align 4
  %26 = icmp sgt i32 %25, 1
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32, i32* @stderr, align 4
  %29 = load %struct.connection*, %struct.connection** %5, align 8
  %30 = call i32 @fprintf(i32 %28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.connection* %29)
  br label %31

31:                                               ; preds = %27, %24
  store i32 0, i32* %4, align 4
  br label %83

32:                                               ; preds = %17
  %33 = load %struct.connection*, %struct.connection** %5, align 8
  %34 = getelementptr inbounds %struct.connection, %struct.connection* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp sgt i32 %36, 8192
  br i1 %37, label %38, label %51

38:                                               ; preds = %32
  %39 = load i32, i32* @C_WANTWR, align 4
  %40 = load %struct.connection*, %struct.connection** %5, align 8
  %41 = getelementptr inbounds %struct.connection, %struct.connection* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 8
  %44 = load %struct.connection*, %struct.connection** %5, align 8
  %45 = getelementptr inbounds %struct.connection, %struct.connection* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32 (%struct.connection*)*, i32 (%struct.connection*)** %47, align 8
  %49 = load %struct.connection*, %struct.connection** %5, align 8
  %50 = call i32 %48(%struct.connection* %49)
  br label %51

51:                                               ; preds = %38, %32
  %52 = load i32, i32* @WaitAioArrPos, align 4
  %53 = call i32 @assert(i32 %52)
  store i32 0, i32* %9, align 4
  br label %54

54:                                               ; preds = %72, %51
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @WaitAioArrPos, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %75

58:                                               ; preds = %54
  %59 = load i32*, i32** @WaitAioArr, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @assert(i32 %63)
  %65 = load i32*, i32** @WaitAioArr, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.connection*, %struct.connection** %5, align 8
  %71 = call i32 @conn_schedule_aio(i32 %69, %struct.connection* %70, double 0x3FE6666666666666, i32* @aio_metafile_query_type)
  br label %72

72:                                               ; preds = %58
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %9, align 4
  br label %54

75:                                               ; preds = %54
  %76 = load %struct.connection*, %struct.connection** %5, align 8
  %77 = call i32 @set_connection_timeout(%struct.connection* %76, double 5.000000e-01)
  store i32 0, i32* %4, align 4
  br label %83

78:                                               ; preds = %3
  %79 = load i32, i32* %8, align 4
  %80 = icmp eq i32 %79, 0
  %81 = zext i1 %80 to i32
  %82 = call i32 @assert(i32 %81)
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %78, %75, %31
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @WaitAioArrClear(...) #1

declare dso_local i32 @memcache_try_get(%struct.connection*, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, %struct.connection*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @conn_schedule_aio(i32, %struct.connection*, double, i32*) #1

declare dso_local i32 @set_connection_timeout(%struct.connection*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
