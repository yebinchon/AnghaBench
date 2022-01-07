; ModuleID = '/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_onload_user_metafile.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_onload_user_metafile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }
%struct.aio_connection = type { i64, i64 }
%struct.TYPE_5__ = type { i32, %struct.aio_connection*, i32* }

@INIT = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"onload_user_metafile (%p,%d)\0A\00", align 1
@ct_aio = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"ERROR reading user: read %d bytes out of %d: %m\0A\00", align 1
@allocated_metafile_bytes = common dso_local global i32 0, align 4
@load_user = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"*** Read user: read %d bytes\0A\00", align 1
@cur_users = common dso_local global i32 0, align 4
@max_memory = common dso_local global i32 0, align 4
@MEMORY_USER_PERCENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @onload_user_metafile(%struct.connection* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.aio_connection*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  store %struct.connection* %0, %struct.connection** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @INIT, align 4
  %9 = load i32, i32* @verbosity, align 4
  %10 = icmp sgt i32 %9, 2
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load i32, i32* @stderr, align 4
  %13 = load %struct.connection*, %struct.connection** %4, align 8
  %14 = ptrtoint %struct.connection* %13 to i32
  %15 = load i32, i32* %5, align 4
  %16 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %12, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15)
  br label %17

17:                                               ; preds = %11, %2
  %18 = load %struct.connection*, %struct.connection** %4, align 8
  %19 = bitcast %struct.connection* %18 to %struct.aio_connection*
  store %struct.aio_connection* %19, %struct.aio_connection** %6, align 8
  %20 = load %struct.aio_connection*, %struct.aio_connection** %6, align 8
  %21 = getelementptr inbounds %struct.aio_connection, %struct.aio_connection* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %7, align 8
  %24 = load %struct.aio_connection*, %struct.aio_connection** %6, align 8
  %25 = getelementptr inbounds %struct.aio_connection, %struct.aio_connection* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ct_aio, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %32 = icmp ne %struct.TYPE_5__* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load %struct.aio_connection*, %struct.aio_connection** %36, align 8
  %38 = load %struct.aio_connection*, %struct.aio_connection** %6, align 8
  %39 = icmp eq %struct.aio_connection* %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %42, %45
  br i1 %46, label %47, label %78

47:                                               ; preds = %17
  %48 = load i32, i32* @verbosity, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load i32, i32* @stderr, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %51, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %55)
  br label %57

57:                                               ; preds = %50, %47
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @dl_free(i32* %60, i32 %63)
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @allocated_metafile_bytes, align 4
  %69 = sub nsw i32 %68, %67
  store i32 %69, i32* @allocated_metafile_bytes, align 4
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 2
  store i32* null, i32** %71, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  store i32 -1, i32* %73, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  store %struct.aio_connection* null, %struct.aio_connection** %75, align 8
  %76 = load i32, i32* @load_user, align 4
  %77 = call i32 @RETURN(i32 %76, i32 0)
  br label %78

78:                                               ; preds = %57, %17
  %79 = load i32, i32* %5, align 4
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp eq i32 %79, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 @assert(i32 %84)
  %86 = load i32, i32* @verbosity, align 4
  %87 = icmp sgt i32 %86, 2
  br i1 %87, label %88, label %92

88:                                               ; preds = %78
  %89 = load i32, i32* @stderr, align 4
  %90 = load i32, i32* %5, align 4
  %91 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %89, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %88, %78
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  store %struct.aio_connection* null, %struct.aio_connection** %94, align 8
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %96 = call i32 @bind_user_metafile(%struct.TYPE_5__* %95)
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %98 = call i32 @user_process_changes(%struct.TYPE_5__* %97)
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %100 = call i32 @add_user_used(%struct.TYPE_5__* %99)
  %101 = load i32, i32* @cur_users, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* @cur_users, align 4
  br label %103

103:                                              ; preds = %112, %92
  %104 = load i32, i32* @allocated_metafile_bytes, align 4
  %105 = load i32, i32* @max_memory, align 4
  %106 = load i32, i32* @MEMORY_USER_PERCENT, align 4
  %107 = mul nsw i32 %105, %106
  %108 = icmp sgt i32 %104, %107
  br i1 %108, label %110, label %109

109:                                              ; preds = %103
  br label %110

110:                                              ; preds = %109, %103
  %111 = phi i1 [ true, %103 ], [ false, %109 ]
  br i1 %111, label %112, label %117

112:                                              ; preds = %110
  %113 = call i32 (...) @user_LRU_unload()
  %114 = icmp ne i32 %113, -1
  %115 = zext i1 %114 to i32
  %116 = call i32 @assert(i32 %115)
  br label %103

117:                                              ; preds = %110
  %118 = load i32, i32* @load_user, align 4
  %119 = call i32 @RETURN(i32 %118, i32 1)
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @dl_free(i32*, i32) #1

declare dso_local i32 @RETURN(i32, i32) #1

declare dso_local i32 @bind_user_metafile(%struct.TYPE_5__*) #1

declare dso_local i32 @user_process_changes(%struct.TYPE_5__*) #1

declare dso_local i32 @add_user_used(%struct.TYPE_5__*) #1

declare dso_local i32 @user_LRU_unload(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
