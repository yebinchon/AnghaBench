; ModuleID = '/home/carl/AnghaBench/libgit2/tests/object/tree/extr_update.c_test_object_tree_update__add_blobs_unsorted.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/object/tree/extr_update.c_test_object_tree_update__add_blobs_unsorted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8*, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { i8*, i32, i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"some/deep/path\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"a/path/elsewhere\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"some/other/path\00", align 1
@__const.test_object_tree_update__add_blobs_unsorted.paths = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0)], align 16
@GIT_TREE_UPDATE_UPSERT = common dso_local global i32 0, align 4
@GIT_FILEMODE_BLOB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"c4dc1555e4d4fa0e0c9c3fc46734c7c35b3ce90b\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"fa49b077972391ad58037050f2a75f74e3671e92\00", align 1
@g_repo = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_object_tree_update__add_blobs_unsorted() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_12__, align 8
  %7 = alloca i32, align 4
  %8 = alloca [3 x i8*], align 16
  %9 = alloca [3 x %struct.TYPE_11__], align 16
  %10 = alloca i32, align 4
  %11 = bitcast %struct.TYPE_12__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 24, i1 false)
  %12 = bitcast [3 x i8*]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %12, i8* align 16 bitcast ([3 x i8*]* @__const.test_object_tree_update__add_blobs_unsorted.paths to i8*), i64 24, i1 false)
  %13 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %9, i64 0, i64 0
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load i32, i32* @GIT_TREE_UPDATE_UPSERT, align 4
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to i8*
  store i8* %17, i8** %14, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  store i32 0, i32* %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 2
  %20 = load i32, i32* @GIT_FILEMODE_BLOB, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = getelementptr inbounds [3 x i8*], [3 x i8*]* %8, i64 0, i64 0
  %25 = load i8*, i8** %24, align 16
  %26 = ptrtoint i8* %25 to i32
  store i32 %26, i32* %23, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 4
  store i32 0, i32* %27, align 4
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i64 1
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i32, i32* @GIT_TREE_UPDATE_UPSERT, align 4
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i8*
  store i8* %32, i8** %29, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  store i32 0, i32* %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 2
  %35 = load i32, i32* @GIT_FILEMODE_BLOB, align 4
  store i32 %35, i32* %34, align 4
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = getelementptr inbounds [3 x i8*], [3 x i8*]* %8, i64 0, i64 1
  %40 = load i8*, i8** %39, align 8
  %41 = ptrtoint i8* %40 to i32
  store i32 %41, i32* %38, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 4
  store i32 0, i32* %42, align 4
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i64 1
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i32, i32* @GIT_TREE_UPDATE_UPSERT, align 4
  %46 = sext i32 %45 to i64
  %47 = inttoptr i64 %46 to i8*
  store i8* %47, i8** %44, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 1
  store i32 0, i32* %48, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 2
  %50 = load i32, i32* @GIT_FILEMODE_BLOB, align 4
  store i32 %50, i32* %49, align 4
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = getelementptr inbounds [3 x i8*], [3 x i8*]* %8, i64 0, i64 2
  %55 = load i8*, i8** %54, align 16
  %56 = ptrtoint i8* %55 to i32
  store i32 %56, i32* %53, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 4
  store i32 0, i32* %57, align 4
  %58 = call i32 @git_oid_fromstr(i32* %3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %59 = call i32 @cl_git_pass(i32 %58)
  %60 = load i32, i32* @GIT_FILEMODE_BLOB, align 4
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 2
  store i32 %60, i32* %61, align 4
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 1
  %63 = call i32 @git_oid_fromstr(i32* %62, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %64 = call i32 @cl_git_pass(i32 %63)
  store i32 0, i32* %7, align 4
  br label %65

65:                                               ; preds = %75, %0
  %66 = load i32, i32* %7, align 4
  %67 = icmp slt i32 %66, 3
  br i1 %67, label %68, label %78

68:                                               ; preds = %65
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %9, i64 0, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 1
  %73 = call i32 @git_oid_fromstr(i32* %72, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %74 = call i32 @cl_git_pass(i32 %73)
  br label %75

75:                                               ; preds = %68
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %65

78:                                               ; preds = %65
  store i32 0, i32* %7, align 4
  br label %79

79:                                               ; preds = %124, %78
  %80 = load i32, i32* %7, align 4
  %81 = icmp slt i32 %80, 2
  br i1 %81, label %82, label %127

82:                                               ; preds = %79
  %83 = call i32 @git_index_new(i32** %5)
  %84 = call i32 @cl_git_pass(i32 %83)
  store i32* null, i32** %4, align 8
  %85 = load i32, i32* %7, align 4
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %87, label %95

87:                                               ; preds = %82
  %88 = load i32, i32* @g_repo, align 4
  %89 = call i32 @git_tree_lookup(i32** %4, i32 %88, i32* %3)
  %90 = call i32 @cl_git_pass(i32 %89)
  %91 = load i32*, i32** %5, align 8
  %92 = load i32*, i32** %4, align 8
  %93 = call i32 @git_index_read_tree(i32* %91, i32* %92)
  %94 = call i32 @cl_git_pass(i32 %93)
  br label %95

95:                                               ; preds = %87, %82
  store i32 0, i32* %10, align 4
  br label %96

96:                                               ; preds = %108, %95
  %97 = load i32, i32* %10, align 4
  %98 = icmp slt i32 %97, 3
  br i1 %98, label %99, label %111

99:                                               ; preds = %96
  %100 = load i32, i32* %10, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [3 x i8*], [3 x i8*]* %8, i64 0, i64 %101
  %103 = load i8*, i8** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  store i8* %103, i8** %104, align 8
  %105 = load i32*, i32** %5, align 8
  %106 = call i32 @git_index_add(i32* %105, %struct.TYPE_12__* %6)
  %107 = call i32 @cl_git_pass(i32 %106)
  br label %108

108:                                              ; preds = %99
  %109 = load i32, i32* %10, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %10, align 4
  br label %96

111:                                              ; preds = %96
  %112 = load i32*, i32** %5, align 8
  %113 = load i32, i32* @g_repo, align 4
  %114 = call i32 @git_index_write_tree_to(i32* %1, i32* %112, i32 %113)
  %115 = call i32 @cl_git_pass(i32 %114)
  %116 = load i32*, i32** %5, align 8
  %117 = call i32 @git_index_free(i32* %116)
  %118 = load i32, i32* @g_repo, align 4
  %119 = load i32*, i32** %4, align 8
  %120 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %9, i64 0, i64 0
  %121 = call i32 @git_tree_create_updated(i32* %2, i32 %118, i32* %119, i32 3, %struct.TYPE_11__* %120)
  %122 = call i32 @cl_git_pass(i32 %121)
  %123 = call i32 @cl_assert_equal_oid(i32* %1, i32* %2)
  br label %124

124:                                              ; preds = %111
  %125 = load i32, i32* %7, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %7, align 4
  br label %79

127:                                              ; preds = %79
  %128 = load i32*, i32** %4, align 8
  %129 = call i32 @git_tree_free(i32* %128)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #2

declare dso_local i32 @git_index_new(i32**) #2

declare dso_local i32 @git_tree_lookup(i32**, i32, i32*) #2

declare dso_local i32 @git_index_read_tree(i32*, i32*) #2

declare dso_local i32 @git_index_add(i32*, %struct.TYPE_12__*) #2

declare dso_local i32 @git_index_write_tree_to(i32*, i32*, i32) #2

declare dso_local i32 @git_index_free(i32*) #2

declare dso_local i32 @git_tree_create_updated(i32*, i32, i32*, i32, %struct.TYPE_11__*) #2

declare dso_local i32 @cl_assert_equal_oid(i32*, i32*) #2

declare dso_local i32 @git_tree_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
