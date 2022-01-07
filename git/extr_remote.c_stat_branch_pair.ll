; ModuleID = '/home/carl/AnghaBench/git/extr_remote.c_stat_branch_pair.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote.c_stat_branch_pair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.argv_array = type { i32, i32 }
%struct.object_id = type { i32 }
%struct.commit = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.rev_info = type { i32 }

@ARGV_ARRAY_INIT = common dso_local global %struct.argv_array zeroinitializer, align 4
@the_repository = common dso_local global i32 0, align 4
@AHEAD_BEHIND_QUICK = common dso_local global i32 0, align 4
@AHEAD_BEHIND_FULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"stat_branch_pair: invalid abf '%d'\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"--left-right\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%s...%s\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"revision walk setup failed\00", align 1
@SYMMETRIC_LEFT = common dso_local global i32 0, align 4
@ALL_REV_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32*, i32*, i32)* @stat_branch_pair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stat_branch_pair(i8* %0, i8* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.object_id, align 4
  %13 = alloca %struct.commit*, align 8
  %14 = alloca %struct.commit*, align 8
  %15 = alloca %struct.rev_info, align 4
  %16 = alloca %struct.argv_array, align 4
  %17 = alloca %struct.commit*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = bitcast %struct.argv_array* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 bitcast (%struct.argv_array* @ARGV_ARRAY_INIT to i8*), i64 8, i1 false)
  %19 = load i8*, i8** %8, align 8
  %20 = call i64 @read_ref(i8* %19, %struct.object_id* %12)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %115

23:                                               ; preds = %5
  %24 = load i32, i32* @the_repository, align 4
  %25 = call %struct.commit* @lookup_commit_reference(i32 %24, %struct.object_id* %12)
  store %struct.commit* %25, %struct.commit** %14, align 8
  %26 = load %struct.commit*, %struct.commit** %14, align 8
  %27 = icmp ne %struct.commit* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  store i32 -1, i32* %6, align 4
  br label %115

29:                                               ; preds = %23
  %30 = load i8*, i8** %7, align 8
  %31 = call i64 @read_ref(i8* %30, %struct.object_id* %12)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 -1, i32* %6, align 4
  br label %115

34:                                               ; preds = %29
  %35 = load i32, i32* @the_repository, align 4
  %36 = call %struct.commit* @lookup_commit_reference(i32 %35, %struct.object_id* %12)
  store %struct.commit* %36, %struct.commit** %13, align 8
  %37 = load %struct.commit*, %struct.commit** %13, align 8
  %38 = icmp ne %struct.commit* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  store i32 -1, i32* %6, align 4
  br label %115

40:                                               ; preds = %34
  %41 = load i32*, i32** %9, align 8
  store i32 0, i32* %41, align 4
  %42 = load i32*, i32** %10, align 8
  store i32 0, i32* %42, align 4
  %43 = load %struct.commit*, %struct.commit** %14, align 8
  %44 = load %struct.commit*, %struct.commit** %13, align 8
  %45 = icmp eq %struct.commit* %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i32 0, i32* %6, align 4
  br label %115

47:                                               ; preds = %40
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @AHEAD_BEHIND_QUICK, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i32 1, i32* %6, align 4
  br label %115

52:                                               ; preds = %47
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @AHEAD_BEHIND_FULL, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @BUG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %56, %52
  %60 = call i32 @argv_array_push(%struct.argv_array* %16, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %61 = call i32 @argv_array_push(%struct.argv_array* %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %62 = load %struct.commit*, %struct.commit** %13, align 8
  %63 = getelementptr inbounds %struct.commit, %struct.commit* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = call i32 @oid_to_hex(i32* %64)
  %66 = load %struct.commit*, %struct.commit** %14, align 8
  %67 = getelementptr inbounds %struct.commit, %struct.commit* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = call i32 @oid_to_hex(i32* %68)
  %70 = call i32 @argv_array_pushf(%struct.argv_array* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %65, i32 %69)
  %71 = call i32 @argv_array_push(%struct.argv_array* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %72 = load i32, i32* @the_repository, align 4
  %73 = call i32 @repo_init_revisions(i32 %72, %struct.rev_info* %15, i32* null)
  %74 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %16, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %16, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @setup_revisions(i32 %75, i32 %77, %struct.rev_info* %15, i32* null)
  %79 = call i64 @prepare_revision_walk(%struct.rev_info* %15)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %59
  %82 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %83 = call i32 @die(i32 %82)
  br label %84

84:                                               ; preds = %81, %59
  br label %85

85:                                               ; preds = %84, %106
  %86 = call %struct.commit* @get_revision(%struct.rev_info* %15)
  store %struct.commit* %86, %struct.commit** %17, align 8
  %87 = load %struct.commit*, %struct.commit** %17, align 8
  %88 = icmp ne %struct.commit* %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %85
  br label %107

90:                                               ; preds = %85
  %91 = load %struct.commit*, %struct.commit** %17, align 8
  %92 = getelementptr inbounds %struct.commit, %struct.commit* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @SYMMETRIC_LEFT, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %90
  %99 = load i32*, i32** %9, align 8
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 4
  br label %106

102:                                              ; preds = %90
  %103 = load i32*, i32** %10, align 8
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 4
  br label %106

106:                                              ; preds = %102, %98
  br label %85

107:                                              ; preds = %89
  %108 = load %struct.commit*, %struct.commit** %13, align 8
  %109 = load i32, i32* @ALL_REV_FLAGS, align 4
  %110 = call i32 @clear_commit_marks(%struct.commit* %108, i32 %109)
  %111 = load %struct.commit*, %struct.commit** %14, align 8
  %112 = load i32, i32* @ALL_REV_FLAGS, align 4
  %113 = call i32 @clear_commit_marks(%struct.commit* %111, i32 %112)
  %114 = call i32 @argv_array_clear(%struct.argv_array* %16)
  store i32 1, i32* %6, align 4
  br label %115

115:                                              ; preds = %107, %51, %46, %39, %33, %28, %22
  %116 = load i32, i32* %6, align 4
  ret i32 %116
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @read_ref(i8*, %struct.object_id*) #2

declare dso_local %struct.commit* @lookup_commit_reference(i32, %struct.object_id*) #2

declare dso_local i32 @BUG(i8*, i32) #2

declare dso_local i32 @argv_array_push(%struct.argv_array*, i8*) #2

declare dso_local i32 @argv_array_pushf(%struct.argv_array*, i8*, i32, i32) #2

declare dso_local i32 @oid_to_hex(i32*) #2

declare dso_local i32 @repo_init_revisions(i32, %struct.rev_info*, i32*) #2

declare dso_local i32 @setup_revisions(i32, i32, %struct.rev_info*, i32*) #2

declare dso_local i64 @prepare_revision_walk(%struct.rev_info*) #2

declare dso_local i32 @die(i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local %struct.commit* @get_revision(%struct.rev_info*) #2

declare dso_local i32 @clear_commit_marks(%struct.commit*, i32) #2

declare dso_local i32 @argv_array_clear(%struct.argv_array*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
