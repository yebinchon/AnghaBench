; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_tag.c_git_tag_create_from_buffer.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_tag.c_git_tag_create_from_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@GIT_ERROR_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"the type for the given target is invalid\00", align 1
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"tag already exists\00", align 1
@GIT_EEXISTS = common dso_local global i32 0, align 4
@GIT_OBJECT_TAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_tag_create_from_buffer(i32* %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_15__, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* null, i32** %15, align 8
  %17 = bitcast %struct.TYPE_15__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 bitcast (%struct.TYPE_15__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %18 = load i32*, i32** %6, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i8*, i8** %8, align 8
  %22 = icmp ne i8* %21, null
  br label %23

23:                                               ; preds = %20, %4
  %24 = phi i1 [ false, %4 ], [ %22, %20 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = call i32 @memset(%struct.TYPE_13__* %10, i32 0, i32 24)
  %28 = load i32*, i32** %7, align 8
  %29 = call i64 @git_repository_odb__weakptr(i32** %12, i32* %28)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  store i32 -1, i32* %5, align 4
  br label %144

32:                                               ; preds = %23
  %33 = load i8*, i8** %8, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 @strlen(i8* %35)
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %34, i64 %37
  %39 = call i64 @tag_parse(%struct.TYPE_13__* %10, i8* %33, i8* %38)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  store i32 -1, i32* %5, align 4
  br label %144

42:                                               ; preds = %32
  %43 = load i32*, i32** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 4
  %45 = call i64 @git_odb_read(%struct.TYPE_14__** %14, i32* %43, i32* %44)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %132

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %50, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = load i32, i32* @GIT_ERROR_TAG, align 4
  %58 = call i32 @git_error_set(i32 %57, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %132

59:                                               ; preds = %48
  %60 = load i32*, i32** %6, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @retrieve_tag_reference_oid(i32* %60, %struct.TYPE_15__* %16, i32* %61, i32 %63)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %59
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* @GIT_ENOTFOUND, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  br label %132

72:                                               ; preds = %67, %59
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @git_signature_free(i32 %74)
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @git__free(i32 %77)
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @git__free(i32 %80)
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %83 = call i32 @git_odb_object_free(%struct.TYPE_14__* %82)
  %84 = load i32, i32* %11, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %72
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %86
  %90 = load i32, i32* @GIT_ERROR_TAG, align 4
  %91 = call i32 @git_error_set(i32 %90, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %92 = load i32, i32* @GIT_EEXISTS, align 4
  store i32 %92, i32* %5, align 4
  br label %144

93:                                               ; preds = %86, %72
  %94 = load i32*, i32** %12, align 8
  %95 = load i8*, i8** %8, align 8
  %96 = call i32 @strlen(i8* %95)
  %97 = load i32, i32* @GIT_OBJECT_TAG, align 4
  %98 = call i32 @git_odb_open_wstream(i32** %13, i32* %94, i32 %96, i32 %97)
  store i32 %98, i32* %11, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %93
  %101 = load i32, i32* %11, align 4
  store i32 %101, i32* %5, align 4
  br label %144

102:                                              ; preds = %93
  %103 = load i32*, i32** %13, align 8
  %104 = load i8*, i8** %8, align 8
  %105 = load i8*, i8** %8, align 8
  %106 = call i32 @strlen(i8* %105)
  %107 = call i32 @git_odb_stream_write(i32* %103, i8* %104, i32 %106)
  store i32 %107, i32* %11, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %102
  %110 = load i32*, i32** %6, align 8
  %111 = load i32*, i32** %13, align 8
  %112 = call i32 @git_odb_stream_finalize_write(i32* %110, i32* %111)
  store i32 %112, i32* %11, align 4
  br label %113

113:                                              ; preds = %109, %102
  %114 = load i32*, i32** %13, align 8
  %115 = call i32 @git_odb_stream_free(i32* %114)
  %116 = load i32, i32* %11, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %113
  %119 = call i32 @git_buf_dispose(%struct.TYPE_15__* %16)
  %120 = load i32, i32* %11, align 4
  store i32 %120, i32* %5, align 4
  br label %144

121:                                              ; preds = %113
  %122 = load i32*, i32** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32*, i32** %6, align 8
  %126 = load i32, i32* %9, align 4
  %127 = call i32 @git_reference_create(i32** %15, i32* %122, i32 %124, i32* %125, i32 %126, i32* null)
  store i32 %127, i32* %11, align 4
  %128 = load i32*, i32** %15, align 8
  %129 = call i32 @git_reference_free(i32* %128)
  %130 = call i32 @git_buf_dispose(%struct.TYPE_15__* %16)
  %131 = load i32, i32* %11, align 4
  store i32 %131, i32* %5, align 4
  br label %144

132:                                              ; preds = %71, %56, %47
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @git_signature_free(i32 %134)
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @git__free(i32 %137)
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @git__free(i32 %140)
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %143 = call i32 @git_odb_object_free(%struct.TYPE_14__* %142)
  store i32 -1, i32* %5, align 4
  br label %144

144:                                              ; preds = %132, %121, %118, %100, %89, %41, %31
  %145 = load i32, i32* %5, align 4
  ret i32 %145
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @memset(%struct.TYPE_13__*, i32, i32) #2

declare dso_local i64 @git_repository_odb__weakptr(i32**, i32*) #2

declare dso_local i64 @tag_parse(%struct.TYPE_13__*, i8*, i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i64 @git_odb_read(%struct.TYPE_14__**, i32*, i32*) #2

declare dso_local i32 @git_error_set(i32, i8*) #2

declare dso_local i32 @retrieve_tag_reference_oid(i32*, %struct.TYPE_15__*, i32*, i32) #2

declare dso_local i32 @git_signature_free(i32) #2

declare dso_local i32 @git__free(i32) #2

declare dso_local i32 @git_odb_object_free(%struct.TYPE_14__*) #2

declare dso_local i32 @git_odb_open_wstream(i32**, i32*, i32, i32) #2

declare dso_local i32 @git_odb_stream_write(i32*, i8*, i32) #2

declare dso_local i32 @git_odb_stream_finalize_write(i32*, i32*) #2

declare dso_local i32 @git_odb_stream_free(i32*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_15__*) #2

declare dso_local i32 @git_reference_create(i32**, i32*, i32, i32*, i32, i32*) #2

declare dso_local i32 @git_reference_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
