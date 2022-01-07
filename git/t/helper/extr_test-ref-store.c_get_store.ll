; ModuleID = '/home/carl/AnghaBench/git/t/helper/extr_test-ref-store.c_get_store.c'
source_filename = "/home/carl/AnghaBench/git/t/helper/extr_test-ref-store.c_get_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.ref_store = type { i32 }
%struct.worktree = type { i8* }

@.str = private unnamed_addr constant [19 x i8] c"ref store required\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@the_repository = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"submodule:\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"objects/\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"strbuf_git_path_submodule failed: %d\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"worktree:\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"no such worktree: %s\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"unknown backend %s\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"no ref store\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** (i8**, %struct.ref_store**)* @get_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @get_store(i8** %0, %struct.ref_store** %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca %struct.ref_store**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.strbuf, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.worktree**, align 8
  %9 = alloca %struct.worktree**, align 8
  %10 = alloca %struct.worktree*, align 8
  store i8** %0, i8*** %3, align 8
  store %struct.ref_store** %1, %struct.ref_store*** %4, align 8
  %11 = load i8**, i8*** %3, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 0
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %109

17:                                               ; preds = %2
  %18 = load i8**, i8*** %3, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* @the_repository, align 4
  %25 = call %struct.ref_store* @get_main_ref_store(i32 %24)
  %26 = load %struct.ref_store**, %struct.ref_store*** %4, align 8
  store %struct.ref_store* %25, %struct.ref_store** %26, align 8
  br label %108

27:                                               ; preds = %17
  %28 = load i8**, i8*** %3, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i64 @skip_prefix(i8* %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %5)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %27
  %34 = bitcast %struct.strbuf* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %34, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @strbuf_git_path_submodule(%struct.strbuf* %6, i8* %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32, i32* %7, align 4
  %41 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %39, %33
  %43 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @add_to_alternates_memory(i32 %44)
  %46 = call i32 @strbuf_release(%struct.strbuf* %6)
  %47 = load i8*, i8** %5, align 8
  %48 = call %struct.ref_store* @get_submodule_ref_store(i8* %47)
  %49 = load %struct.ref_store**, %struct.ref_store*** %4, align 8
  store %struct.ref_store* %48, %struct.ref_store** %49, align 8
  br label %107

50:                                               ; preds = %27
  %51 = load i8**, i8*** %3, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i64 @skip_prefix(i8* %53, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8** %5)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %101

56:                                               ; preds = %50
  %57 = call %struct.worktree** @get_worktrees(i32 0)
  store %struct.worktree** %57, %struct.worktree*** %9, align 8
  %58 = load %struct.worktree**, %struct.worktree*** %9, align 8
  store %struct.worktree** %58, %struct.worktree*** %8, align 8
  br label %59

59:                                               ; preds = %86, %56
  %60 = load %struct.worktree**, %struct.worktree*** %8, align 8
  %61 = load %struct.worktree*, %struct.worktree** %60, align 8
  %62 = icmp ne %struct.worktree* %61, null
  br i1 %62, label %63, label %89

63:                                               ; preds = %59
  %64 = load %struct.worktree**, %struct.worktree*** %8, align 8
  %65 = load %struct.worktree*, %struct.worktree** %64, align 8
  store %struct.worktree* %65, %struct.worktree** %10, align 8
  %66 = load %struct.worktree*, %struct.worktree** %10, align 8
  %67 = getelementptr inbounds %struct.worktree, %struct.worktree* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %76, label %70

70:                                               ; preds = %63
  %71 = load i8*, i8** %5, align 8
  %72 = call i32 @strcmp(i8* %71, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %70
  br label %89

75:                                               ; preds = %70
  br label %85

76:                                               ; preds = %63
  %77 = load i8*, i8** %5, align 8
  %78 = load %struct.worktree*, %struct.worktree** %10, align 8
  %79 = getelementptr inbounds %struct.worktree, %struct.worktree* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @strcmp(i8* %77, i8* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %76
  br label %89

84:                                               ; preds = %76
  br label %85

85:                                               ; preds = %84, %75
  br label %86

86:                                               ; preds = %85
  %87 = load %struct.worktree**, %struct.worktree*** %8, align 8
  %88 = getelementptr inbounds %struct.worktree*, %struct.worktree** %87, i32 1
  store %struct.worktree** %88, %struct.worktree*** %8, align 8
  br label %59

89:                                               ; preds = %83, %74, %59
  %90 = load %struct.worktree**, %struct.worktree*** %8, align 8
  %91 = load %struct.worktree*, %struct.worktree** %90, align 8
  %92 = icmp ne %struct.worktree* %91, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %89
  %94 = load i8*, i8** %5, align 8
  %95 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8* %94)
  br label %96

96:                                               ; preds = %93, %89
  %97 = load %struct.worktree**, %struct.worktree*** %8, align 8
  %98 = load %struct.worktree*, %struct.worktree** %97, align 8
  %99 = call %struct.ref_store* @get_worktree_ref_store(%struct.worktree* %98)
  %100 = load %struct.ref_store**, %struct.ref_store*** %4, align 8
  store %struct.ref_store* %99, %struct.ref_store** %100, align 8
  br label %106

101:                                              ; preds = %50
  %102 = load i8**, i8*** %3, align 8
  %103 = getelementptr inbounds i8*, i8** %102, i64 0
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8* %104)
  br label %106

106:                                              ; preds = %101, %96
  br label %107

107:                                              ; preds = %106, %42
  br label %108

108:                                              ; preds = %107, %23
  br label %109

109:                                              ; preds = %108, %15
  %110 = load %struct.ref_store**, %struct.ref_store*** %4, align 8
  %111 = load %struct.ref_store*, %struct.ref_store** %110, align 8
  %112 = icmp ne %struct.ref_store* %111, null
  br i1 %112, label %115, label %113

113:                                              ; preds = %109
  %114 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  br label %115

115:                                              ; preds = %113, %109
  %116 = load i8**, i8*** %3, align 8
  %117 = getelementptr inbounds i8*, i8** %116, i64 1
  ret i8** %117
}

declare dso_local i32 @die(i8*, ...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local %struct.ref_store* @get_main_ref_store(i32) #1

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strbuf_git_path_submodule(%struct.strbuf*, i8*, i8*) #1

declare dso_local i32 @add_to_alternates_memory(i32) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

declare dso_local %struct.ref_store* @get_submodule_ref_store(i8*) #1

declare dso_local %struct.worktree** @get_worktrees(i32) #1

declare dso_local %struct.ref_store* @get_worktree_ref_store(%struct.worktree*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
