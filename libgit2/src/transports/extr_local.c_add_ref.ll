; ModuleID = '/home/carl/AnghaBench/libgit2/src/transports/extr_local.c_add_ref.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/transports/extr_local.c_add_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_10__*, %struct.TYPE_10__* }

@__const.add_ref.peeled = private unnamed_addr constant [4 x i8] c"^{}\00", align 1
@GIT_BUF_INIT = common dso_local global i32 0, align 4
@GIT_HEAD_FILE = common dso_local global i32 0, align 4
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@GIT_REFERENCE_SYMBOLIC = common dso_local global i64 0, align 8
@GIT_REFS_TAGS_DIR = common dso_local global i32 0, align 4
@GIT_OBJECT_ANY = common dso_local global i32 0, align 4
@GIT_OBJECT_TAG = common dso_local global i64 0, align 8
@GIT_DIRECTION_FETCH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8*)* @add_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_ref(%struct.TYPE_9__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [4 x i8], align 1
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i8* %1, i8** %5, align 8
  %15 = bitcast [4 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %15, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.add_ref.peeled, i32 0, i32 0), i64 4, i1 false)
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  %16 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %16, i32* %13, align 4
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @git_reference_lookup(i32** %7, i32 %19, i8* %20)
  store i32 %21, i32* %14, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %14, align 4
  store i32 %24, i32* %3, align 4
  br label %163

25:                                               ; preds = %2
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @git_reference_resolve(i32** %8, i32* %26)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %25
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @git_reference_free(i32* %31)
  %33 = load i8*, i8** %5, align 8
  %34 = load i32, i32* @GIT_HEAD_FILE, align 4
  %35 = call i32 @strcmp(i8* %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %30
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* @GIT_ENOTFOUND, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = call i32 (...) @git_error_clear()
  store i32 0, i32* %3, align 4
  br label %163

43:                                               ; preds = %37, %30
  %44 = load i32, i32* %14, align 4
  store i32 %44, i32* %3, align 4
  br label %163

45:                                               ; preds = %25
  %46 = load i32*, i32** %8, align 8
  %47 = call i32* @git_reference_target(i32* %46)
  %48 = call i32 @git_oid_cpy(i32* %10, i32* %47)
  %49 = load i32*, i32** %8, align 8
  %50 = call i32 @git_reference_free(i32* %49)
  %51 = call %struct.TYPE_10__* @git__calloc(i32 1, i32 24)
  store %struct.TYPE_10__* %51, %struct.TYPE_10__** %9, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %53 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_10__* %52)
  %54 = load i8*, i8** %5, align 8
  %55 = call i8* @git__strdup(i8* %54)
  %56 = bitcast i8* %55 to %struct.TYPE_10__*
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  store %struct.TYPE_10__* %56, %struct.TYPE_10__** %58, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %60, align 8
  %62 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_10__* %61)
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = call i32 @git_oid_cpy(i32* %64, i32* %10)
  %66 = load i32*, i32** %7, align 8
  %67 = call i64 @git_reference_type(i32* %66)
  %68 = load i64, i64* @GIT_REFERENCE_SYMBOLIC, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %81

70:                                               ; preds = %45
  %71 = load i32*, i32** %7, align 8
  %72 = call i8* @git_reference_symbolic_target(i32* %71)
  %73 = call i8* @git__strdup(i8* %72)
  %74 = bitcast i8* %73 to %struct.TYPE_10__*
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 2
  store %struct.TYPE_10__* %74, %struct.TYPE_10__** %76, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  %80 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_10__* %79)
  br label %81

81:                                               ; preds = %70, %45
  %82 = load i32*, i32** %7, align 8
  %83 = call i32 @git_reference_free(i32* %82)
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %87 = call i32 @git_vector_insert(i32* %85, %struct.TYPE_10__* %86)
  store i32 %87, i32* %14, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %81
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %91 = call i32 @free_head(%struct.TYPE_10__* %90)
  %92 = load i32, i32* %14, align 4
  store i32 %92, i32* %3, align 4
  br label %163

93:                                               ; preds = %81
  %94 = load i8*, i8** %5, align 8
  %95 = load i32, i32* @GIT_REFS_TAGS_DIR, align 4
  %96 = call i64 @git__prefixcmp(i8* %94, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  store i32 0, i32* %3, align 4
  br label %163

99:                                               ; preds = %93
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load i32, i32* @GIT_OBJECT_ANY, align 4
  %106 = call i32 @git_object_lookup(i32** %11, i32 %102, i32* %104, i32 %105)
  store i32 %106, i32* %14, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %99
  %109 = load i32, i32* %14, align 4
  store i32 %109, i32* %3, align 4
  br label %163

110:                                              ; preds = %99
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %9, align 8
  %111 = load i32*, i32** %11, align 8
  %112 = call i64 @git_object_type(i32* %111)
  %113 = load i64, i64* @GIT_OBJECT_TAG, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %121, label %115

115:                                              ; preds = %110
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @GIT_DIRECTION_FETCH, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %115, %110
  %122 = load i32*, i32** %11, align 8
  %123 = call i32 @git_object_free(i32* %122)
  store i32 0, i32* %3, align 4
  br label %163

124:                                              ; preds = %115
  %125 = call %struct.TYPE_10__* @git__calloc(i32 1, i32 24)
  store %struct.TYPE_10__* %125, %struct.TYPE_10__** %9, align 8
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %127 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_10__* %126)
  %128 = load i8*, i8** %5, align 8
  %129 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %130 = call i64 @git_buf_join(i32* %13, i32 0, i8* %128, i8* %129)
  %131 = icmp slt i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %124
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %134 = call i32 @free_head(%struct.TYPE_10__* %133)
  store i32 -1, i32* %3, align 4
  br label %163

135:                                              ; preds = %124
  %136 = call %struct.TYPE_10__* @git_buf_detach(i32* %13)
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 1
  store %struct.TYPE_10__* %136, %struct.TYPE_10__** %138, align 8
  %139 = load i32*, i32** %11, align 8
  %140 = call i32 @git_tag_peel(i32** %12, i32* %139)
  store i32 %140, i32* %14, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %157, label %142

142:                                              ; preds = %135
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 0
  %145 = load i32*, i32** %12, align 8
  %146 = call i32* @git_object_id(i32* %145)
  %147 = call i32 @git_oid_cpy(i32* %144, i32* %146)
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %151 = call i32 @git_vector_insert(i32* %149, %struct.TYPE_10__* %150)
  store i32 %151, i32* %14, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %142
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %155 = call i32 @free_head(%struct.TYPE_10__* %154)
  br label %156

156:                                              ; preds = %153, %142
  br label %157

157:                                              ; preds = %156, %135
  %158 = load i32*, i32** %11, align 8
  %159 = call i32 @git_object_free(i32* %158)
  %160 = load i32*, i32** %12, align 8
  %161 = call i32 @git_object_free(i32* %160)
  %162 = load i32, i32* %14, align 4
  store i32 %162, i32* %3, align 4
  br label %163

163:                                              ; preds = %157, %132, %121, %108, %98, %89, %43, %41, %23
  %164 = load i32, i32* %3, align 4
  ret i32 %164
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git_reference_lookup(i32**, i32, i8*) #2

declare dso_local i32 @git_reference_resolve(i32**, i32*) #2

declare dso_local i32 @git_reference_free(i32*) #2

declare dso_local i32 @strcmp(i8*, i32) #2

declare dso_local i32 @git_error_clear(...) #2

declare dso_local i32 @git_oid_cpy(i32*, i32*) #2

declare dso_local i32* @git_reference_target(i32*) #2

declare dso_local %struct.TYPE_10__* @git__calloc(i32, i32) #2

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_10__*) #2

declare dso_local i8* @git__strdup(i8*) #2

declare dso_local i64 @git_reference_type(i32*) #2

declare dso_local i8* @git_reference_symbolic_target(i32*) #2

declare dso_local i32 @git_vector_insert(i32*, %struct.TYPE_10__*) #2

declare dso_local i32 @free_head(%struct.TYPE_10__*) #2

declare dso_local i64 @git__prefixcmp(i8*, i32) #2

declare dso_local i32 @git_object_lookup(i32**, i32, i32*, i32) #2

declare dso_local i64 @git_object_type(i32*) #2

declare dso_local i32 @git_object_free(i32*) #2

declare dso_local i64 @git_buf_join(i32*, i32, i8*, i8*) #2

declare dso_local %struct.TYPE_10__* @git_buf_detach(i32*) #2

declare dso_local i32 @git_tag_peel(i32**, i32*) #2

declare dso_local i32* @git_object_id(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
