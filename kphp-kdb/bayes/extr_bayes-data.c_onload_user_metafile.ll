; ModuleID = '/home/carl/AnghaBench/kphp-kdb/bayes/extr_bayes-data.c_onload_user_metafile.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/bayes/extr_bayes-data.c_onload_user_metafile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }
%struct.aio_connection = type { i64, i64 }
%struct.TYPE_4__ = type { i32, %struct.aio_connection*, i32* }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"onload_user_metafile (%p,%d)\0A\00", align 1
@ct_aio = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"assertion (u->aio == a) will fail\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%p != %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"ERROR reading user: read %d bytes out of %d: %m\0A\00", align 1
@allocated_metafile_bytes = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"*** Read user: read %d bytes\0A\00", align 1
@cur_users = common dso_local global i32 0, align 4
@max_memory = common dso_local global i32 0, align 4
@MEMORY_USER_PERCENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @onload_user_metafile(%struct.connection* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.aio_connection*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  store %struct.connection* %0, %struct.connection** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @verbosity, align 4
  %9 = icmp sgt i32 %8, 2
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load i32, i32* @stderr, align 4
  %12 = load %struct.connection*, %struct.connection** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 (i32, i8*, ...) @fprintf(i32 %11, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), %struct.connection* %12, i32 %13)
  br label %15

15:                                               ; preds = %10, %2
  %16 = load %struct.connection*, %struct.connection** %4, align 8
  %17 = bitcast %struct.connection* %16 to %struct.aio_connection*
  store %struct.aio_connection* %17, %struct.aio_connection** %6, align 8
  %18 = load %struct.aio_connection*, %struct.aio_connection** %6, align 8
  %19 = getelementptr inbounds %struct.aio_connection, %struct.aio_connection* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %7, align 8
  %22 = load %struct.aio_connection*, %struct.aio_connection** %6, align 8
  %23 = getelementptr inbounds %struct.aio_connection, %struct.aio_connection* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ct_aio, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %30 = icmp ne %struct.TYPE_4__* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load %struct.aio_connection*, %struct.aio_connection** %34, align 8
  %36 = load %struct.aio_connection*, %struct.aio_connection** %6, align 8
  %37 = icmp ne %struct.aio_connection* %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %15
  %39 = load i32, i32* @stderr, align 4
  %40 = call i32 (i32, i8*, ...) @fprintf(i32 %39, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @stderr, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load %struct.aio_connection*, %struct.aio_connection** %43, align 8
  %45 = load %struct.aio_connection*, %struct.aio_connection** %6, align 8
  %46 = call i32 (i32, i8*, ...) @fprintf(i32 %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), %struct.aio_connection* %44, %struct.aio_connection* %45)
  br label %47

47:                                               ; preds = %38, %15
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load %struct.aio_connection*, %struct.aio_connection** %49, align 8
  %51 = load %struct.aio_connection*, %struct.aio_connection** %6, align 8
  %52 = icmp eq %struct.aio_connection* %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %55, %58
  br i1 %59, label %60, label %89

60:                                               ; preds = %47
  %61 = load i32, i32* @verbosity, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %60
  %64 = load i32, i32* @stderr, align 4
  %65 = load i32, i32* %5, align 4
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 (i32, i8*, ...) @fprintf(i32 %64, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %65, i32 %68)
  br label %70

70:                                               ; preds = %63, %60
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @qfree(i32* %73, i32 %76)
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @allocated_metafile_bytes, align 4
  %82 = sub nsw i32 %81, %80
  store i32 %82, i32* @allocated_metafile_bytes, align 4
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 2
  store i32* null, i32** %84, align 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  store i32 -1, i32* %86, align 8
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  store %struct.aio_connection* null, %struct.aio_connection** %88, align 8
  store i32 0, i32* %3, align 4
  br label %125

89:                                               ; preds = %47
  %90 = load i32, i32* %5, align 4
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp eq i32 %90, %93
  %95 = zext i1 %94 to i32
  %96 = call i32 @assert(i32 %95)
  %97 = load i32, i32* @verbosity, align 4
  %98 = icmp sgt i32 %97, 2
  br i1 %98, label %99, label %103

99:                                               ; preds = %89
  %100 = load i32, i32* @stderr, align 4
  %101 = load i32, i32* %5, align 4
  %102 = call i32 (i32, i8*, ...) @fprintf(i32 %100, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %101)
  br label %103

103:                                              ; preds = %99, %89
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  store %struct.aio_connection* null, %struct.aio_connection** %105, align 8
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %107 = call i32 @bind_user_metafile(%struct.TYPE_4__* %106)
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %109 = call i32 @add_user_used(%struct.TYPE_4__* %108)
  %110 = load i32, i32* @cur_users, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* @cur_users, align 4
  br label %112

112:                                              ; preds = %123, %103
  %113 = load i32, i32* @allocated_metafile_bytes, align 4
  %114 = load i32, i32* @max_memory, align 4
  %115 = load i32, i32* @MEMORY_USER_PERCENT, align 4
  %116 = mul nsw i32 %114, %115
  %117 = icmp sgt i32 %113, %116
  br i1 %117, label %118, label %124

118:                                              ; preds = %112
  %119 = call i32 (...) @user_LRU_unload()
  %120 = icmp eq i32 %119, -1
  br i1 %120, label %121, label %123

121:                                              ; preds = %118
  %122 = call i32 @assert(i32 0)
  br label %123

123:                                              ; preds = %121, %118
  br label %112

124:                                              ; preds = %112
  store i32 1, i32* %3, align 4
  br label %125

125:                                              ; preds = %124, %70
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @qfree(i32*, i32) #1

declare dso_local i32 @bind_user_metafile(%struct.TYPE_4__*) #1

declare dso_local i32 @add_user_used(%struct.TYPE_4__*) #1

declare dso_local i32 @user_LRU_unload(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
