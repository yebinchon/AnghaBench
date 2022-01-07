; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_odb_loose.c_loose_backend__readstream.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_odb_loose.c_loose_backend__readstream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_21__, %struct.TYPE_22__ }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32*, i32*, %struct.TYPE_24__*, i32* }
%struct.TYPE_23__ = type { i64, i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_25__ zeroinitializer, align 4
@GIT_OBJECT_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"no matching loose object\00", align 1
@GIT_OID_HEXSZ = common dso_local global i32 0, align 4
@GIT_ZSTREAM_INFLATE = common dso_local global i32 0, align 4
@loose_backend__readstream_read = common dso_local global i32 0, align 4
@loose_backend__readstream_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i64*, i32*, i32*, i32*)* @loose_backend__readstream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loose_backend__readstream(i32** %0, i64* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_24__*, align 8
  %13 = alloca %struct.TYPE_24__*, align 8
  %14 = alloca %struct.TYPE_25__, align 4
  %15 = alloca %struct.TYPE_23__, align 8
  %16 = alloca i32, align 4
  store i32** %0, i32*** %6, align 8
  store i64* %1, i64** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %12, align 8
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %13, align 8
  %17 = bitcast %struct.TYPE_25__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 bitcast (%struct.TYPE_25__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  store i32 0, i32* %16, align 4
  %18 = load i32**, i32*** %6, align 8
  %19 = icmp ne i32** %18, null
  br i1 %19, label %20, label %32

20:                                               ; preds = %5
  %21 = load i64*, i64** %7, align 8
  %22 = icmp ne i64* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %20
  %24 = load i32*, i32** %8, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load i32*, i32** %9, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32*, i32** %10, align 8
  %31 = icmp ne i32* %30, null
  br label %32

32:                                               ; preds = %29, %26, %23, %20, %5
  %33 = phi i1 [ false, %26 ], [ false, %23 ], [ false, %20 ], [ false, %5 ], [ %31, %29 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load i32*, i32** %9, align 8
  store i32* %36, i32** %11, align 8
  %37 = load i32**, i32*** %6, align 8
  store i32* null, i32** %37, align 8
  %38 = load i64*, i64** %7, align 8
  store i64 0, i64* %38, align 8
  %39 = load i32, i32* @GIT_OBJECT_INVALID, align 4
  %40 = load i32*, i32** %8, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i32*, i32** %11, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = call i64 @locate_object(%struct.TYPE_25__* %14, i32* %41, i32* %42)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %32
  %46 = load i32*, i32** %10, align 8
  %47 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %48 = call i32 @git_odb__error_notfound(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32* %46, i32 %47)
  store i32 %48, i32* %16, align 4
  br label %118

49:                                               ; preds = %32
  %50 = call %struct.TYPE_24__* @git__calloc(i32 1, i32 48)
  store %struct.TYPE_24__* %50, %struct.TYPE_24__** %12, align 8
  %51 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %52 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_24__* %51)
  %53 = call %struct.TYPE_24__* @git__malloc(i32 48)
  store %struct.TYPE_24__* %53, %struct.TYPE_24__** %13, align 8
  %54 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %55 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_24__* %54)
  %56 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %57 = call i32 @git_hash_ctx_init(%struct.TYPE_24__* %56)
  store i32 %57, i32* %16, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %72, label %59

59:                                               ; preds = %49
  %60 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @git_futils_mmap_ro_file(%struct.TYPE_21__* %61, i32 %63)
  store i32 %64, i32* %16, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %59
  %67 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %67, i32 0, i32 0
  %69 = load i32, i32* @GIT_ZSTREAM_INFLATE, align 4
  %70 = call i32 @git_zstream_init(i32* %68, i32 %69)
  store i32 %70, i32* %16, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %66, %59, %49
  br label %118

73:                                               ; preds = %66
  %74 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @is_zlib_compressed_data(i32 %77, i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %73
  %85 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %86 = call i32 @loose_backend__readstream_packlike(%struct.TYPE_23__* %15, %struct.TYPE_24__* %85)
  store i32 %86, i32* %16, align 4
  br label %90

87:                                               ; preds = %73
  %88 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %89 = call i32 @loose_backend__readstream_standard(%struct.TYPE_23__* %15, %struct.TYPE_24__* %88)
  store i32 %89, i32* %16, align 4
  br label %90

90:                                               ; preds = %87, %84
  %91 = load i32, i32* %16, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  br label %118

94:                                               ; preds = %90
  %95 = load i32*, i32** %9, align 8
  %96 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 3
  store i32* %95, i32** %98, align 8
  %99 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %100 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 0, i32 2
  store %struct.TYPE_24__* %99, %struct.TYPE_24__** %102, align 8
  %103 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %104, i32 0, i32 1
  store i32* @loose_backend__readstream_read, i32** %105, align 8
  %106 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i32 0, i32 0
  store i32* @loose_backend__readstream_free, i32** %108, align 8
  %109 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %110 = bitcast %struct.TYPE_24__* %109 to i32*
  %111 = load i32**, i32*** %6, align 8
  store i32* %110, i32** %111, align 8
  %112 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64*, i64** %7, align 8
  store i64 %113, i64* %114, align 8
  %115 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load i32*, i32** %8, align 8
  store i32 %116, i32* %117, align 4
  br label %118

118:                                              ; preds = %94, %93, %72, %45
  %119 = load i32, i32* %16, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %142

121:                                              ; preds = %118
  %122 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %123 = icmp ne %struct.TYPE_24__* %122, null
  br i1 %123, label %124, label %133

124:                                              ; preds = %121
  %125 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %125, i32 0, i32 1
  %127 = call i32 @git_futils_mmap_free(%struct.TYPE_21__* %126)
  %128 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %129 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %128, i32 0, i32 0
  %130 = call i32 @git_zstream_free(i32* %129)
  %131 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %132 = call i32 @git__free(%struct.TYPE_24__* %131)
  br label %133

133:                                              ; preds = %124, %121
  %134 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %135 = icmp ne %struct.TYPE_24__* %134, null
  br i1 %135, label %136, label %141

136:                                              ; preds = %133
  %137 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %138 = call i32 @git_hash_ctx_cleanup(%struct.TYPE_24__* %137)
  %139 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %140 = call i32 @git__free(%struct.TYPE_24__* %139)
  br label %141

141:                                              ; preds = %136, %133
  br label %142

142:                                              ; preds = %141, %118
  %143 = call i32 @git_buf_dispose(%struct.TYPE_25__* %14)
  %144 = load i32, i32* %16, align 4
  ret i32 %144
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @locate_object(%struct.TYPE_25__*, i32*, i32*) #2

declare dso_local i32 @git_odb__error_notfound(i8*, i32*, i32) #2

declare dso_local %struct.TYPE_24__* @git__calloc(i32, i32) #2

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_24__*) #2

declare dso_local %struct.TYPE_24__* @git__malloc(i32) #2

declare dso_local i32 @git_hash_ctx_init(%struct.TYPE_24__*) #2

declare dso_local i32 @git_futils_mmap_ro_file(%struct.TYPE_21__*, i32) #2

declare dso_local i32 @git_zstream_init(i32*, i32) #2

declare dso_local i32 @is_zlib_compressed_data(i32, i32) #2

declare dso_local i32 @loose_backend__readstream_packlike(%struct.TYPE_23__*, %struct.TYPE_24__*) #2

declare dso_local i32 @loose_backend__readstream_standard(%struct.TYPE_23__*, %struct.TYPE_24__*) #2

declare dso_local i32 @git_futils_mmap_free(%struct.TYPE_21__*) #2

declare dso_local i32 @git_zstream_free(i32*) #2

declare dso_local i32 @git__free(%struct.TYPE_24__*) #2

declare dso_local i32 @git_hash_ctx_cleanup(%struct.TYPE_24__*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_25__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
