; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_config_file.c_do_match_gitdir.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_config_file.c_do_match_gitdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8*, i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str = private unnamed_addr constant [3 x i8] c"**\00", align 1
@GIT_REPOSITORY_ITEM_GITDIR = common dso_local global i32 0, align 4
@WM_PATHNAME = common dso_local global i32 0, align 4
@WM_CASEFOLD = common dso_local global i32 0, align 4
@WM_MATCH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*, i8*, i32)* @do_match_gitdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_match_gitdir(i32* %0, i32* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_12__, align 8
  %12 = alloca %struct.TYPE_12__, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = bitcast %struct.TYPE_12__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 bitcast (%struct.TYPE_12__* @GIT_BUF_INIT to i8*), i64 16, i1 false)
  %15 = bitcast %struct.TYPE_12__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 bitcast (%struct.TYPE_12__* @GIT_BUF_INIT to i8*), i64 16, i1 false)
  %16 = load i8*, i8** %9, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 46
  br i1 %20, label %21, label %35

21:                                               ; preds = %5
  %22 = load i8*, i8** %9, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  %24 = load i8, i8* %23, align 1
  %25 = call i64 @git_path_is_dirsep(i8 signext %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %21
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @git_path_dirname_r(%struct.TYPE_12__* %11, i8* %28)
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 2
  %34 = call i32 @git_buf_joinpath(%struct.TYPE_12__* %11, i8* %31, i8* %33)
  br label %63

35:                                               ; preds = %21, %5
  %36 = load i8*, i8** %9, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 126
  br i1 %40, label %41, label %51

41:                                               ; preds = %35
  %42 = load i8*, i8** %9, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  %44 = load i8, i8* %43, align 1
  %45 = call i64 @git_path_is_dirsep(i8 signext %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load i8*, i8** %9, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  %50 = call i32 @git_sysdir_expand_global_file(%struct.TYPE_12__* %11, i8* %49)
  br label %62

51:                                               ; preds = %41, %35
  %52 = load i8*, i8** %9, align 8
  %53 = call i32 @git_path_is_absolute(i8* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %51
  %56 = load i8*, i8** %9, align 8
  %57 = call i32 @git_buf_joinpath(%struct.TYPE_12__* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %56)
  br label %61

58:                                               ; preds = %51
  %59 = load i8*, i8** %9, align 8
  %60 = call i32 @git_buf_sets(%struct.TYPE_12__* %11, i8* %59)
  br label %61

61:                                               ; preds = %58, %55
  br label %62

62:                                               ; preds = %61, %47
  br label %63

63:                                               ; preds = %62, %27
  %64 = load i8*, i8** %9, align 8
  %65 = load i8*, i8** %9, align 8
  %66 = call i32 @strlen(i8* %65)
  %67 = sub nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %64, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = call i64 @git_path_is_dirsep(i8 signext %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %63
  %74 = call i32 @git_buf_puts(%struct.TYPE_12__* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %75

75:                                               ; preds = %73, %63
  %76 = call i64 @git_buf_oom(%struct.TYPE_12__* %11)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  store i32 -1, i32* %13, align 4
  br label %120

79:                                               ; preds = %75
  %80 = load i32*, i32** %7, align 8
  %81 = load i32, i32* @GIT_REPOSITORY_ITEM_GITDIR, align 4
  %82 = call i32 @git_repository_item_path(%struct.TYPE_12__* %12, i32* %80, i32 %81)
  store i32 %82, i32* %13, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  br label %120

85:                                               ; preds = %79
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = sub nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %87, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = call i64 @git_path_is_dirsep(i8 signext %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %85
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = sub nsw i32 %98, 1
  %100 = call i32 @git_buf_truncate(%struct.TYPE_12__* %12, i32 %99)
  br label %101

101:                                              ; preds = %96, %85
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = load i32, i32* @WM_PATHNAME, align 4
  %107 = load i32, i32* %10, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %101
  %110 = load i32, i32* @WM_CASEFOLD, align 4
  br label %112

111:                                              ; preds = %101
  br label %112

112:                                              ; preds = %111, %109
  %113 = phi i32 [ %110, %109 ], [ 0, %111 ]
  %114 = or i32 %106, %113
  %115 = call i64 @wildmatch(i8* %103, i8* %105, i32 %114)
  %116 = load i64, i64* @WM_MATCH, align 8
  %117 = icmp eq i64 %115, %116
  %118 = zext i1 %117 to i32
  %119 = load i32*, i32** %6, align 8
  store i32 %118, i32* %119, align 4
  br label %120

120:                                              ; preds = %112, %84, %78
  %121 = call i32 @git_buf_dispose(%struct.TYPE_12__* %11)
  %122 = call i32 @git_buf_dispose(%struct.TYPE_12__* %12)
  %123 = load i32, i32* %13, align 4
  ret i32 %123
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @git_path_is_dirsep(i8 signext) #2

declare dso_local i32 @git_path_dirname_r(%struct.TYPE_12__*, i8*) #2

declare dso_local i32 @git_buf_joinpath(%struct.TYPE_12__*, i8*, i8*) #2

declare dso_local i32 @git_sysdir_expand_global_file(%struct.TYPE_12__*, i8*) #2

declare dso_local i32 @git_path_is_absolute(i8*) #2

declare dso_local i32 @git_buf_sets(%struct.TYPE_12__*, i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @git_buf_puts(%struct.TYPE_12__*, i8*) #2

declare dso_local i64 @git_buf_oom(%struct.TYPE_12__*) #2

declare dso_local i32 @git_repository_item_path(%struct.TYPE_12__*, i32*, i32) #2

declare dso_local i32 @git_buf_truncate(%struct.TYPE_12__*, i32) #2

declare dso_local i64 @wildmatch(i8*, i8*, i32) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_12__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
