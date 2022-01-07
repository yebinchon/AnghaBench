; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mutual-friends/extr_mf-engine.c_memcache_get.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mutual-friends/extr_mf-engine.c_memcache_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 (%struct.connection*)* }
%struct.TYPE_3__ = type { i32 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"memcache_get: key='%s'\0A\00", align 1
@WaitAio = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"wait for aio..\0A\00", align 1
@C_INTIMEOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"memcache_get: IN TIMEOUT (%p)\0A\00", align 1
@C_WANTWR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [61 x i8] c"WaitAio=0 - no memory to load user metafile, query dropped.\0A\00", align 1
@aio_metafile_query_type = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memcache_get(%struct.connection* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.connection*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @verbosity, align 4
  %10 = icmp sgt i32 %9, 1
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load i32, i32* @stderr, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 (i32, i8*, ...) @fprintf(i32 %12, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %13)
  br label %15

15:                                               ; preds = %11, %3
  store i64 0, i64* @WaitAio, align 8
  %16 = load %struct.connection*, %struct.connection** %5, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @memcache_try_get(%struct.connection* %16, i8* %17, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp eq i32 %20, -2
  br i1 %21, label %22, label %74

22:                                               ; preds = %15
  %23 = load i32, i32* @verbosity, align 4
  %24 = icmp sgt i32 %23, 2
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* @stderr, align 4
  %27 = call i32 (i32, i8*, ...) @fprintf(i32 %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %22
  %29 = load %struct.connection*, %struct.connection** %5, align 8
  %30 = getelementptr inbounds %struct.connection, %struct.connection* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @C_INTIMEOUT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %28
  %36 = load i32, i32* @verbosity, align 4
  %37 = icmp sgt i32 %36, 1
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i32, i32* @stderr, align 4
  %40 = load %struct.connection*, %struct.connection** %5, align 8
  %41 = call i32 (i32, i8*, ...) @fprintf(i32 %39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), %struct.connection* %40)
  br label %42

42:                                               ; preds = %38, %35
  store i32 0, i32* %4, align 4
  br label %75

43:                                               ; preds = %28
  %44 = load %struct.connection*, %struct.connection** %5, align 8
  %45 = getelementptr inbounds %struct.connection, %struct.connection* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp sgt i32 %47, 8192
  br i1 %48, label %49, label %62

49:                                               ; preds = %43
  %50 = load i32, i32* @C_WANTWR, align 4
  %51 = load %struct.connection*, %struct.connection** %5, align 8
  %52 = getelementptr inbounds %struct.connection, %struct.connection* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  %55 = load %struct.connection*, %struct.connection** %5, align 8
  %56 = getelementptr inbounds %struct.connection, %struct.connection* %55, i32 0, i32 1
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32 (%struct.connection*)*, i32 (%struct.connection*)** %58, align 8
  %60 = load %struct.connection*, %struct.connection** %5, align 8
  %61 = call i32 %59(%struct.connection* %60)
  br label %62

62:                                               ; preds = %49, %43
  %63 = load i64, i64* @WaitAio, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* @stderr, align 4
  %67 = call i32 (i32, i8*, ...) @fprintf(i32 %66, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %75

68:                                               ; preds = %62
  %69 = load i64, i64* @WaitAio, align 8
  %70 = load %struct.connection*, %struct.connection** %5, align 8
  %71 = call i32 @conn_schedule_aio(i64 %69, %struct.connection* %70, double 0x3FE6666666666666, i32* @aio_metafile_query_type)
  %72 = load %struct.connection*, %struct.connection** %5, align 8
  %73 = call i32 @set_connection_timeout(%struct.connection* %72, double 5.000000e-01)
  store i32 0, i32* %4, align 4
  br label %75

74:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %74, %68, %65, %42
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @memcache_try_get(%struct.connection*, i8*, i32) #1

declare dso_local i32 @conn_schedule_aio(i64, %struct.connection*, double, i32*) #1

declare dso_local i32 @set_connection_timeout(%struct.connection*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
