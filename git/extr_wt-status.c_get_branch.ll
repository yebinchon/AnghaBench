; ModuleID = '/home/carl/AnghaBench/git/extr_wt-status.c_get_branch.c'
source_filename = "/home/carl/AnghaBench/git/extr_wt-status.c_get_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i8* }
%struct.worktree = type { i32 }
%struct.object_id = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"refs/heads/\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"refs/\00", align 1
@DEFAULT_ABBREV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"detached HEAD\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.worktree*, i8*)* @get_branch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_branch(%struct.worktree* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.worktree*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.strbuf, align 8
  %7 = alloca %struct.object_id, align 4
  %8 = alloca i8*, align 8
  store %struct.worktree* %0, %struct.worktree** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = bitcast %struct.strbuf* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %10 = load %struct.worktree*, %struct.worktree** %4, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @worktree_git_path(%struct.worktree* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %11)
  %13 = call i64 @strbuf_read_file(%struct.strbuf* %6, i32 %12, i32 0)
  %14 = icmp sle i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %85

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %34, %16
  %18 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sub nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %23, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 10
  br label %32

32:                                               ; preds = %21, %17
  %33 = phi i1 [ false, %17 ], [ %31, %21 ]
  br i1 %33, label %34, label %39

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 %36, 1
  %38 = call i32 @strbuf_setlen(%struct.strbuf* %6, i32 %37)
  br label %17

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  br label %85

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = call i64 @skip_prefix(i8* %46, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %8)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %44
  %50 = load i8*, i8** %8, align 8
  %51 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = ptrtoint i8* %50 to i64
  %54 = ptrtoint i8* %52 to i64
  %55 = sub i64 %53, %54
  %56 = trunc i64 %55 to i32
  %57 = call i32 @strbuf_remove(%struct.strbuf* %6, i32 0, i32 %56)
  br label %83

58:                                               ; preds = %44
  %59 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = call i64 @starts_with(i8* %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %82

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @get_oid_hex(i8* %66, %struct.object_id* %7)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %64
  %70 = call i32 @strbuf_reset(%struct.strbuf* %6)
  %71 = load i32, i32* @DEFAULT_ABBREV, align 4
  %72 = call i32 @strbuf_add_unique_abbrev(%struct.strbuf* %6, %struct.object_id* %7, i32 %71)
  br label %81

73:                                               ; preds = %64
  %74 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @strcmp(i8* %75, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %73
  br label %85

79:                                               ; preds = %73
  br label %80

80:                                               ; preds = %79
  br label %81

81:                                               ; preds = %80, %69
  br label %82

82:                                               ; preds = %81, %63
  br label %83

83:                                               ; preds = %82, %49
  %84 = call i8* @strbuf_detach(%struct.strbuf* %6, i32* null)
  store i8* %84, i8** %3, align 8
  br label %87

85:                                               ; preds = %78, %43, %15
  %86 = call i32 @strbuf_release(%struct.strbuf* %6)
  store i8* null, i8** %3, align 8
  br label %87

87:                                               ; preds = %85, %83
  %88 = load i8*, i8** %3, align 8
  ret i8* %88
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @strbuf_read_file(%struct.strbuf*, i32, i32) #2

declare dso_local i32 @worktree_git_path(%struct.worktree*, i8*, i8*) #2

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i32) #2

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #2

declare dso_local i32 @strbuf_remove(%struct.strbuf*, i32, i32) #2

declare dso_local i64 @starts_with(i8*, i8*) #2

declare dso_local i32 @get_oid_hex(i8*, %struct.object_id*) #2

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #2

declare dso_local i32 @strbuf_add_unique_abbrev(%struct.strbuf*, %struct.object_id*, i32) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i8* @strbuf_detach(%struct.strbuf*, i32*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
