; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_submodule.c_git_submodule__open.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_submodule.c_git_submodule__open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8* }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@GIT_REPOSITORY_OPEN_NO_SEARCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"open submodule repository\00", align 1
@GIT_EBAREREPO = common dso_local global i32 0, align 4
@DOT_GIT = common dso_local global i32 0, align 4
@GIT_SUBMODULE_STATUS_IN_WD = common dso_local global i32 0, align 4
@GIT_SUBMODULE_STATUS__WD_OID_VALID = common dso_local global i32 0, align 4
@GIT_SUBMODULE_STATUS__WD_SCANNED = common dso_local global i32 0, align 4
@GIT_REPOSITORY_OPEN_BARE = common dso_local global i32 0, align 4
@GIT_HEAD_FILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, %struct.TYPE_8__*, i32)* @git_submodule__open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @git_submodule__open(i32** %0, %struct.TYPE_8__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i32** %0, i32*** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = bitcast %struct.TYPE_9__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.TYPE_9__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %13 = load i32, i32* @GIT_REPOSITORY_OPEN_NO_SEARCH, align 4
  store i32 %13, i32* %10, align 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %15 = icmp ne %struct.TYPE_8__* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32**, i32*** %5, align 8
  %18 = icmp ne i32** %17, null
  br label %19

19:                                               ; preds = %16, %3
  %20 = phi i1 [ false, %3 ], [ %18, %16 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @git_repository__ensure_not_bare(i32 %25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = load i32, i32* @GIT_EBAREREPO, align 4
  store i32 %29, i32* %4, align 4
  br label %130

30:                                               ; preds = %19
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @git_repository_workdir(i32 %33)
  store i8* %34, i8** %11, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @git_buf_joinpath(%struct.TYPE_9__* %9, i8* %35, i32 %38)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %30
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load i32, i32* @DOT_GIT, align 4
  %45 = call i64 @git_buf_joinpath(%struct.TYPE_9__* %9, i8* %43, i32 %44)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41, %30
  store i32 -1, i32* %4, align 4
  br label %130

48:                                               ; preds = %41
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @GIT_SUBMODULE_STATUS_IN_WD, align 4
  %53 = load i32, i32* @GIT_SUBMODULE_STATUS__WD_OID_VALID, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @GIT_SUBMODULE_STATUS__WD_SCANNED, align 4
  %56 = or i32 %54, %55
  %57 = xor i32 %56, -1
  %58 = and i32 %51, %57
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %48
  %64 = load i32, i32* @GIT_REPOSITORY_OPEN_BARE, align 4
  %65 = load i32, i32* %10, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %10, align 4
  br label %67

67:                                               ; preds = %63, %48
  %68 = load i32**, i32*** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = load i32, i32* %10, align 4
  %72 = load i8*, i8** %11, align 8
  %73 = call i32 @git_repository_open_ext(i32** %68, i8* %70, i32 %71, i8* %72)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %100, label %76

76:                                               ; preds = %67
  %77 = load i32, i32* @GIT_SUBMODULE_STATUS_IN_WD, align 4
  %78 = load i32, i32* @GIT_SUBMODULE_STATUS__WD_SCANNED, align 4
  %79 = or i32 %77, %78
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 4
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  %86 = load i32**, i32*** %5, align 8
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* @GIT_HEAD_FILE, align 4
  %89 = call i32 @git_reference_name_to_id(i32* %85, i32* %87, i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %97, label %91

91:                                               ; preds = %76
  %92 = load i32, i32* @GIT_SUBMODULE_STATUS__WD_OID_VALID, align 4
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 4
  br label %99

97:                                               ; preds = %76
  %98 = call i32 (...) @git_error_clear()
  br label %99

99:                                               ; preds = %97, %91
  br label %127

100:                                              ; preds = %67
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = call i64 @git_path_exists(i8* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %100
  %106 = load i32, i32* @GIT_SUBMODULE_STATUS__WD_SCANNED, align 4
  %107 = load i32, i32* @GIT_SUBMODULE_STATUS_IN_WD, align 4
  %108 = or i32 %106, %107
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 4
  br label %126

113:                                              ; preds = %100
  %114 = call i32 @git_buf_rtruncate_at_char(%struct.TYPE_9__* %9, i8 signext 47)
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = call i64 @git_path_isdir(i8* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %113
  %120 = load i32, i32* @GIT_SUBMODULE_STATUS__WD_SCANNED, align 4
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = or i32 %123, %120
  store i32 %124, i32* %122, align 4
  br label %125

125:                                              ; preds = %119, %113
  br label %126

126:                                              ; preds = %125, %105
  br label %127

127:                                              ; preds = %126, %99
  %128 = call i32 @git_buf_dispose(%struct.TYPE_9__* %9)
  %129 = load i32, i32* %8, align 4
  store i32 %129, i32* %4, align 4
  br label %130

130:                                              ; preds = %127, %47, %28
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @git_repository__ensure_not_bare(i32, i8*) #2

declare dso_local i8* @git_repository_workdir(i32) #2

declare dso_local i64 @git_buf_joinpath(%struct.TYPE_9__*, i8*, i32) #2

declare dso_local i32 @git_repository_open_ext(i32**, i8*, i32, i8*) #2

declare dso_local i32 @git_reference_name_to_id(i32*, i32*, i32) #2

declare dso_local i32 @git_error_clear(...) #2

declare dso_local i64 @git_path_exists(i8*) #2

declare dso_local i32 @git_buf_rtruncate_at_char(%struct.TYPE_9__*, i8 signext) #2

declare dso_local i64 @git_path_isdir(i8*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_9__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
