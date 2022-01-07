; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_indexer.c_inject_object.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_indexer.c_inject_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i8*, i64 }
%struct.TYPE_16__ = type { i64, %struct.TYPE_15__*, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }
%struct.entry = type { i64, i32, i32 }
%struct.git_pack_entry = type { i64, i32, i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@GIT_ERROR_INDEXER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"missing delta bases\00", align 1
@Z_NULL = common dso_local global i8* null, align 8
@GIT_OID_RAWSZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i8*)* @inject_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inject_object(%struct.TYPE_16__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.entry*, align 8
  %8 = alloca %struct.git_pack_entry*, align 8
  %9 = alloca i8, align 1
  %10 = alloca [64 x i8], align 16
  %11 = alloca %struct.TYPE_17__, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.git_pack_entry* null, %struct.git_pack_entry** %8, align 8
  store i8 0, i8* %9, align 1
  %17 = bitcast %struct.TYPE_17__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 bitcast (%struct.TYPE_17__* @GIT_BUF_INIT to i8*), i64 16, i1 false)
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %19 = call i32 @seek_back_trailer(%struct.TYPE_16__* %18)
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %12, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = call i64 @git_odb_read(i32** %6, i32 %28, i8* %29)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %2
  %33 = load i32, i32* @GIT_ERROR_INDEXER, align 4
  %34 = call i32 @git_error_set(i32 %33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %168

35:                                               ; preds = %2
  %36 = load i32*, i32** %6, align 8
  %37 = call i8* @git_odb_object_data(i32* %36)
  store i8* %37, i8** %13, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = call i64 @git_odb_object_size(i32* %38)
  store i64 %39, i64* %14, align 8
  %40 = call %struct.git_pack_entry* @git__calloc(i32 1, i32 16)
  %41 = bitcast %struct.git_pack_entry* %40 to %struct.entry*
  store %struct.entry* %41, %struct.entry** %7, align 8
  %42 = load %struct.entry*, %struct.entry** %7, align 8
  %43 = bitcast %struct.entry* %42 to %struct.git_pack_entry*
  %44 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.git_pack_entry* %43)
  %45 = load i8*, i8** @Z_NULL, align 8
  %46 = call i8* @crc32(i64 0, i8* %45, i32 0)
  %47 = ptrtoint i8* %46 to i64
  %48 = load %struct.entry*, %struct.entry** %7, align 8
  %49 = getelementptr inbounds %struct.entry, %struct.entry* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %51 = load i64, i64* %14, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @git_odb_object_type(i32* %52)
  %54 = call i64 @git_packfile__object_header(i8* %50, i64 %51, i32 %53)
  store i64 %54, i64* %15, align 8
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %56 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %57 = load i64, i64* %15, align 8
  %58 = call i32 @append_to_pack(%struct.TYPE_16__* %55, i8* %56, i64 %57)
  store i32 %58, i32* %16, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %35
  br label %155

61:                                               ; preds = %35
  %62 = load i64, i64* %15, align 8
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = add i64 %68, %62
  store i64 %69, i64* %67, align 8
  %70 = load %struct.entry*, %struct.entry** %7, align 8
  %71 = getelementptr inbounds %struct.entry, %struct.entry* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %74 = load i64, i64* %15, align 8
  %75 = trunc i64 %74 to i32
  %76 = call i8* @crc32(i64 %72, i8* %73, i32 %75)
  %77 = ptrtoint i8* %76 to i64
  %78 = load %struct.entry*, %struct.entry** %7, align 8
  %79 = getelementptr inbounds %struct.entry, %struct.entry* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  %80 = load i8*, i8** %13, align 8
  %81 = load i64, i64* %14, align 8
  %82 = call i32 @git_zstream_deflatebuf(%struct.TYPE_17__* %11, i8* %80, i64 %81)
  store i32 %82, i32* %16, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %61
  br label %155

85:                                               ; preds = %61
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @append_to_pack(%struct.TYPE_16__* %86, i8* %88, i64 %90)
  store i32 %91, i32* %16, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %85
  br label %155

94:                                               ; preds = %85
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = add i64 %102, %96
  store i64 %103, i64* %101, align 8
  %104 = load %struct.entry*, %struct.entry** %7, align 8
  %105 = getelementptr inbounds %struct.entry, %struct.entry* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = trunc i64 %110 to i32
  %112 = call i8* @crc32(i64 %106, i8* %108, i32 %111)
  %113 = call i64 @htonl(i8* %112)
  %114 = load %struct.entry*, %struct.entry** %7, align 8
  %115 = getelementptr inbounds %struct.entry, %struct.entry* %114, i32 0, i32 0
  store i64 %113, i64* %115, align 8
  %116 = call i32 @git_buf_dispose(%struct.TYPE_17__* %11)
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %118 = load i64, i64* @GIT_OID_RAWSZ, align 8
  %119 = call i32 @append_to_pack(%struct.TYPE_16__* %117, i8* %9, i64 %118)
  store i32 %119, i32* %16, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %94
  br label %155

122:                                              ; preds = %94
  %123 = load i64, i64* @GIT_OID_RAWSZ, align 8
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = add i64 %129, %123
  store i64 %130, i64* %128, align 8
  %131 = call %struct.git_pack_entry* @git__calloc(i32 1, i32 16)
  store %struct.git_pack_entry* %131, %struct.git_pack_entry** %8, align 8
  %132 = load %struct.git_pack_entry*, %struct.git_pack_entry** %8, align 8
  %133 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.git_pack_entry* %132)
  %134 = load %struct.git_pack_entry*, %struct.git_pack_entry** %8, align 8
  %135 = getelementptr inbounds %struct.git_pack_entry, %struct.git_pack_entry* %134, i32 0, i32 2
  %136 = load i8*, i8** %5, align 8
  %137 = call i32 @git_oid_cpy(i32* %135, i8* %136)
  %138 = load %struct.entry*, %struct.entry** %7, align 8
  %139 = getelementptr inbounds %struct.entry, %struct.entry* %138, i32 0, i32 1
  %140 = load i8*, i8** %5, align 8
  %141 = call i32 @git_oid_cpy(i32* %139, i8* %140)
  %142 = load i64, i64* %12, align 8
  %143 = load i64, i64* %15, align 8
  %144 = add i64 %142, %143
  %145 = load i64, i64* %14, align 8
  %146 = add i64 %144, %145
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 0
  store i64 %146, i64* %148, align 8
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %150 = load %struct.entry*, %struct.entry** %7, align 8
  %151 = bitcast %struct.entry* %150 to %struct.git_pack_entry*
  %152 = load %struct.git_pack_entry*, %struct.git_pack_entry** %8, align 8
  %153 = load i64, i64* %12, align 8
  %154 = call i32 @save_entry(%struct.TYPE_16__* %149, %struct.git_pack_entry* %151, %struct.git_pack_entry* %152, i64 %153)
  store i32 %154, i32* %16, align 4
  br label %155

155:                                              ; preds = %122, %121, %93, %84, %60
  %156 = load i32, i32* %16, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %155
  %159 = load %struct.entry*, %struct.entry** %7, align 8
  %160 = bitcast %struct.entry* %159 to %struct.git_pack_entry*
  %161 = call i32 @git__free(%struct.git_pack_entry* %160)
  %162 = load %struct.git_pack_entry*, %struct.git_pack_entry** %8, align 8
  %163 = call i32 @git__free(%struct.git_pack_entry* %162)
  br label %164

164:                                              ; preds = %158, %155
  %165 = load i32*, i32** %6, align 8
  %166 = call i32 @git_odb_object_free(i32* %165)
  %167 = load i32, i32* %16, align 4
  store i32 %167, i32* %3, align 4
  br label %168

168:                                              ; preds = %164, %32
  %169 = load i32, i32* %3, align 4
  ret i32 %169
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @seek_back_trailer(%struct.TYPE_16__*) #2

declare dso_local i64 @git_odb_read(i32**, i32, i8*) #2

declare dso_local i32 @git_error_set(i32, i8*) #2

declare dso_local i8* @git_odb_object_data(i32*) #2

declare dso_local i64 @git_odb_object_size(i32*) #2

declare dso_local %struct.git_pack_entry* @git__calloc(i32, i32) #2

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.git_pack_entry*) #2

declare dso_local i8* @crc32(i64, i8*, i32) #2

declare dso_local i64 @git_packfile__object_header(i8*, i64, i32) #2

declare dso_local i32 @git_odb_object_type(i32*) #2

declare dso_local i32 @append_to_pack(%struct.TYPE_16__*, i8*, i64) #2

declare dso_local i32 @git_zstream_deflatebuf(%struct.TYPE_17__*, i8*, i64) #2

declare dso_local i64 @htonl(i8*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_17__*) #2

declare dso_local i32 @git_oid_cpy(i32*, i8*) #2

declare dso_local i32 @save_entry(%struct.TYPE_16__*, %struct.git_pack_entry*, %struct.git_pack_entry*, i64) #2

declare dso_local i32 @git__free(%struct.git_pack_entry*) #2

declare dso_local i32 @git_odb_object_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
