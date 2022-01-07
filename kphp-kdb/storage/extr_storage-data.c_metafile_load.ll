; ModuleID = '/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-data.c_metafile_load.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-data.c_metafile_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64 }
%struct.TYPE_16__ = type { i64, i32, i32, i64, i32*, i32, i32*, %struct.TYPE_16__*, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i32 }

@.str = private unnamed_addr constant [79 x i8] c"load_metafile (volume_id = %lld, local_id = %d, filesize = %d, offset = %lld)\0A\00", align 1
@STORAGE_ERR_OPEN = common dso_local global i32 0, align 4
@max_aio_connections_per_disk = common dso_local global i64 0, align 8
@Dirs = common dso_local global %struct.TYPE_14__* null, align 8
@STORAGE_ERR_TOO_MANY_AIO_CONNECTIONS = common dso_local global i32 0, align 4
@meta_header_size = common dso_local global i32 0, align 4
@STORAGE_ERR_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@M = common dso_local global %struct.TYPE_16__** null, align 8
@ct_metafile_aio = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @metafile_load(i32* %0, %struct.TYPE_16__** %1, %struct.TYPE_15__** %2, i64 %3, i32 %4, i32 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_16__**, align 8
  %11 = alloca %struct.TYPE_15__**, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_16__*, align 8
  %18 = alloca %struct.TYPE_15__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_16__** %1, %struct.TYPE_16__*** %10, align 8
  store %struct.TYPE_15__** %2, %struct.TYPE_15__*** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i64 %6, i64* %15, align 8
  %21 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %10, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %21, align 8
  %22 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %11, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %22, align 8
  %23 = load i64, i64* %12, align 8
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* %14, align 4
  %26 = load i64, i64* %15, align 8
  %27 = call i32 @vkprintf(i32 3, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i64 %23, i32 %24, i32 %25, i64 %26)
  %28 = load i64, i64* %12, align 8
  %29 = load i32, i32* %13, align 4
  %30 = call %struct.TYPE_16__* @get_meta_f(i64 %28, i32 %29, i32* %16, i32 0)
  store %struct.TYPE_16__* %30, %struct.TYPE_16__** %17, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %32 = icmp ne %struct.TYPE_16__* %31, null
  br i1 %32, label %33, label %44

33:                                               ; preds = %7
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %35 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %10, align 8
  store %struct.TYPE_16__* %34, %struct.TYPE_16__** %35, align 8
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %37 = call i32 @reuse(%struct.TYPE_16__* %36)
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 4
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  store i32 -2, i32* %8, align 4
  br label %157

43:                                               ; preds = %33
  store i32 0, i32* %8, align 4
  br label %157

44:                                               ; preds = %7
  %45 = load i32*, i32** %9, align 8
  %46 = load i64, i64* %15, align 8
  %47 = load i64, i64* %15, align 8
  %48 = add i64 %47, 4
  %49 = load i32, i32* %14, align 4
  %50 = sext i32 %49 to i64
  %51 = add i64 %48, %50
  %52 = call %struct.TYPE_15__* @choose_reading_binlog(i32* %45, i64 %46, i64 %51, i32 0)
  %53 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %11, align 8
  store %struct.TYPE_15__* %52, %struct.TYPE_15__** %53, align 8
  store %struct.TYPE_15__* %52, %struct.TYPE_15__** %18, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %55 = icmp eq %struct.TYPE_15__* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %44
  %57 = load i32, i32* @STORAGE_ERR_OPEN, align 4
  store i32 %57, i32* %8, align 4
  br label %157

58:                                               ; preds = %44
  %59 = load i64, i64* @max_aio_connections_per_disk, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %58
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** @Dirs, align 8
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @max_aio_connections_per_disk, align 8
  %70 = icmp sge i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %61
  %72 = load i32, i32* @STORAGE_ERR_TOO_MANY_AIO_CONNECTIONS, align 4
  store i32 %72, i32* %8, align 4
  br label %157

73:                                               ; preds = %61, %58
  %74 = call i32 @unload_metafiles(i32 0)
  %75 = call i32 @unload_metafiles(i32 1)
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* @meta_header_size, align 4
  %78 = add nsw i32 %76, %77
  store i32 %78, i32* %19, align 4
  %79 = load i32, i32* %19, align 4
  %80 = call %struct.TYPE_16__* @malloc(i32 %79)
  store %struct.TYPE_16__* %80, %struct.TYPE_16__** %17, align 8
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %82 = icmp eq %struct.TYPE_16__* %81, null
  br i1 %82, label %83, label %85

83:                                               ; preds = %73
  %84 = load i32, i32* @STORAGE_ERR_OUT_OF_MEMORY, align 4
  store i32 %84, i32* %8, align 4
  br label %157

85:                                               ; preds = %73
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %87 = call i32 @memset(%struct.TYPE_16__* %86, i32 0, i32 64)
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 8
  store %struct.TYPE_15__* %88, %struct.TYPE_15__** %90, align 8
  %91 = load i64, i64* %15, align 8
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 0
  store i64 %91, i64* %93, align 8
  %94 = load i32, i32* %13, align 4
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 8
  %97 = load i32, i32* %19, align 4
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 4
  %100 = load %struct.TYPE_16__**, %struct.TYPE_16__*** @M, align 8
  %101 = load i32, i32* %16, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %100, i64 %102
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %103, align 8
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 7
  store %struct.TYPE_16__* %104, %struct.TYPE_16__** %106, align 8
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = icmp eq i64 %109, 0
  %111 = zext i1 %110 to i32
  %112 = call i32 @assert(i32 %111)
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %114 = load %struct.TYPE_16__**, %struct.TYPE_16__*** @M, align 8
  %115 = load i32, i32* %16, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %114, i64 %116
  store %struct.TYPE_16__* %113, %struct.TYPE_16__** %117, align 8
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %119 = call i32 @add_use(%struct.TYPE_16__* %118)
  %120 = load i32, i32* %14, align 4
  %121 = sext i32 %120 to i64
  %122 = add i64 %121, 4
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %20, align 4
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 6
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 0
  %131 = load i64, i64* %15, align 8
  %132 = load i32, i32* %20, align 4
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %134 = call i32* @create_aio_read_connection(i32 %126, i32* %130, i64 %131, i32 %132, i32* @ct_metafile_aio, %struct.TYPE_16__* %133)
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 4
  store i32* %134, i32** %136, align 8
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** @Dirs, align 8
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = add nsw i64 %143, 1
  store i64 %144, i64* %142, align 8
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 8
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %146, align 8
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 4
  %151 = load i32*, i32** %150, align 8
  %152 = icmp ne i32* %151, null
  %153 = zext i1 %152 to i32
  %154 = call i32 @assert(i32 %153)
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %156 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %10, align 8
  store %struct.TYPE_16__* %155, %struct.TYPE_16__** %156, align 8
  store i32 -2, i32* %8, align 4
  br label %157

157:                                              ; preds = %85, %83, %71, %56, %43, %42
  %158 = load i32, i32* %8, align 4
  ret i32 %158
}

declare dso_local i32 @vkprintf(i32, i8*, i64, i32, i32, i64) #1

declare dso_local %struct.TYPE_16__* @get_meta_f(i64, i32, i32*, i32) #1

declare dso_local i32 @reuse(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_15__* @choose_reading_binlog(i32*, i64, i64, i32) #1

declare dso_local i32 @unload_metafiles(i32) #1

declare dso_local %struct.TYPE_16__* @malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @add_use(%struct.TYPE_16__*) #1

declare dso_local i32* @create_aio_read_connection(i32, i32*, i64, i32, i32*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
