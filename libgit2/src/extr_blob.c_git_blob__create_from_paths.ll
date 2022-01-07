; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_blob.c_git_blob__create_from_paths.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_blob.c_git_blob__create_from_paths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* }
%struct.stat = type { i64, i64 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str = private unnamed_addr constant [22 x i8] c"create blob from file\00", align 1
@GIT_EBAREREPO = common dso_local global i32 0, align 4
@GIT_ERROR_ODB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"cannot create blob from '%s': it is a directory\00", align 1
@GIT_EDIRECTORY = common dso_local global i32 0, align 4
@GIT_FILTER_TO_ODB = common dso_local global i32 0, align 4
@GIT_FILTER_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_blob__create_from_paths(i32* %0, %struct.stat* %1, i32* %2, i8* %3, i8* %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.stat*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.stat, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.TYPE_5__, align 8
  %22 = alloca i32*, align 8
  store i32* %0, i32** %9, align 8
  store %struct.stat* %1, %struct.stat** %10, align 8
  store i32* %2, i32** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  store i32* null, i32** %18, align 8
  %23 = bitcast %struct.TYPE_5__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.TYPE_5__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %24 = load i8*, i8** %13, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %7
  %27 = load i32, i32* %15, align 4
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  br label %30

30:                                               ; preds = %26, %7
  %31 = phi i1 [ true, %7 ], [ %29, %26 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load i8*, i8** %12, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %52, label %36

36:                                               ; preds = %30
  %37 = load i32*, i32** %11, align 8
  %38 = call i64 @git_repository__ensure_not_bare(i32* %37, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* @GIT_EBAREREPO, align 4
  store i32 %41, i32* %8, align 4
  br label %136

42:                                               ; preds = %36
  %43 = load i32*, i32** %11, align 8
  %44 = call i32 @git_repository_workdir(i32* %43)
  %45 = load i8*, i8** %13, align 8
  %46 = call i64 @git_buf_joinpath(%struct.TYPE_5__* %21, i32 %44, i8* %45)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  store i32 -1, i32* %8, align 4
  br label %136

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  store i8* %51, i8** %12, align 8
  br label %52

52:                                               ; preds = %49, %30
  %53 = load i8*, i8** %12, align 8
  %54 = call i32 @git_path_lstat(i8* %53, %struct.stat* %17)
  store i32 %54, i32* %16, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = load i32*, i32** %11, align 8
  %58 = call i32 @git_repository_odb(i32** %18, i32* %57)
  store i32 %58, i32* %16, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %56, %52
  br label %131

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.stat, %struct.stat* %17, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i64 @S_ISDIR(i64 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load i32, i32* @GIT_ERROR_ODB, align 4
  %68 = load i8*, i8** %12, align 8
  %69 = call i32 @git_error_set(i32 %67, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8* %68)
  %70 = load i32, i32* @GIT_EDIRECTORY, align 4
  store i32 %70, i32* %16, align 4
  br label %131

71:                                               ; preds = %61
  %72 = load %struct.stat*, %struct.stat** %10, align 8
  %73 = icmp ne %struct.stat* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load %struct.stat*, %struct.stat** %10, align 8
  %76 = call i32 @memcpy(%struct.stat* %75, %struct.stat* %17, i32 16)
  br label %77

77:                                               ; preds = %74, %71
  %78 = getelementptr inbounds %struct.stat, %struct.stat* %17, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %19, align 8
  %80 = load i64, i64* %14, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = load i64, i64* %14, align 8
  br label %87

84:                                               ; preds = %77
  %85 = getelementptr inbounds %struct.stat, %struct.stat* %17, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  br label %87

87:                                               ; preds = %84, %82
  %88 = phi i64 [ %83, %82 ], [ %86, %84 ]
  store i64 %88, i64* %20, align 8
  %89 = load i64, i64* %20, align 8
  %90 = call i64 @S_ISLNK(i64 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %87
  %93 = load i32*, i32** %9, align 8
  %94 = load i32*, i32** %18, align 8
  %95 = load i8*, i8** %12, align 8
  %96 = load i64, i64* %19, align 8
  %97 = call i32 @write_symlink(i32* %93, i32* %94, i8* %95, i64 %96)
  store i32 %97, i32* %16, align 4
  br label %130

98:                                               ; preds = %87
  store i32* null, i32** %22, align 8
  %99 = load i32, i32* %15, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %98
  %102 = load i32*, i32** %11, align 8
  %103 = load i8*, i8** %13, align 8
  %104 = load i32, i32* @GIT_FILTER_TO_ODB, align 4
  %105 = load i32, i32* @GIT_FILTER_DEFAULT, align 4
  %106 = call i32 @git_filter_list_load(i32** %22, i32* %102, i32* null, i8* %103, i32 %104, i32 %105)
  store i32 %106, i32* %16, align 4
  br label %107

107:                                              ; preds = %101, %98
  %108 = load i32, i32* %16, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  br label %129

111:                                              ; preds = %107
  %112 = load i32*, i32** %22, align 8
  %113 = icmp eq i32* %112, null
  br i1 %113, label %114, label %120

114:                                              ; preds = %111
  %115 = load i32*, i32** %9, align 8
  %116 = load i32*, i32** %18, align 8
  %117 = load i8*, i8** %12, align 8
  %118 = load i64, i64* %19, align 8
  %119 = call i32 @write_file_stream(i32* %115, i32* %116, i8* %117, i64 %118)
  store i32 %119, i32* %16, align 4
  br label %128

120:                                              ; preds = %111
  %121 = load i32*, i32** %9, align 8
  %122 = load i32*, i32** %18, align 8
  %123 = load i8*, i8** %12, align 8
  %124 = load i32*, i32** %22, align 8
  %125 = call i32 @write_file_filtered(i32* %121, i64* %19, i32* %122, i8* %123, i32* %124)
  store i32 %125, i32* %16, align 4
  %126 = load i32*, i32** %22, align 8
  %127 = call i32 @git_filter_list_free(i32* %126)
  br label %128

128:                                              ; preds = %120, %114
  br label %129

129:                                              ; preds = %128, %110
  br label %130

130:                                              ; preds = %129, %92
  br label %131

131:                                              ; preds = %130, %66, %60
  %132 = load i32*, i32** %18, align 8
  %133 = call i32 @git_odb_free(i32* %132)
  %134 = call i32 @git_buf_dispose(%struct.TYPE_5__* %21)
  %135 = load i32, i32* %16, align 4
  store i32 %135, i32* %8, align 4
  br label %136

136:                                              ; preds = %131, %48, %40
  %137 = load i32, i32* %8, align 4
  ret i32 %137
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @git_repository__ensure_not_bare(i32*, i8*) #2

declare dso_local i64 @git_buf_joinpath(%struct.TYPE_5__*, i32, i8*) #2

declare dso_local i32 @git_repository_workdir(i32*) #2

declare dso_local i32 @git_path_lstat(i8*, %struct.stat*) #2

declare dso_local i32 @git_repository_odb(i32**, i32*) #2

declare dso_local i64 @S_ISDIR(i64) #2

declare dso_local i32 @git_error_set(i32, i8*, i8*) #2

declare dso_local i32 @memcpy(%struct.stat*, %struct.stat*, i32) #2

declare dso_local i64 @S_ISLNK(i64) #2

declare dso_local i32 @write_symlink(i32*, i32*, i8*, i64) #2

declare dso_local i32 @git_filter_list_load(i32**, i32*, i32*, i8*, i32, i32) #2

declare dso_local i32 @write_file_stream(i32*, i32*, i8*, i64) #2

declare dso_local i32 @write_file_filtered(i32*, i64*, i32*, i8*, i32*) #2

declare dso_local i32 @git_filter_list_free(i32*) #2

declare dso_local i32 @git_odb_free(i32*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_5__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
