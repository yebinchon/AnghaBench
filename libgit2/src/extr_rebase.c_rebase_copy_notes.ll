; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_rebase.c_rebase_copy_notes.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_rebase.c_rebase_copy_notes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8* }
%struct.TYPE_11__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@REWRITTEN_FILE = common dso_local global i32 0, align 4
@GIT_OID_HEXSZ = common dso_local global i64 0, align 8
@GIT_ERROR_REBASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"invalid rewritten file at line %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32*)* @rebase_copy_notes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rebase_copy_notes(%struct.TYPE_11__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_12__, align 8
  %6 = alloca %struct.TYPE_12__, align 8
  %7 = alloca %struct.TYPE_12__, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32* %1, i32** %4, align 8
  %16 = bitcast %struct.TYPE_12__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 bitcast (%struct.TYPE_12__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %17 = bitcast %struct.TYPE_12__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 bitcast (%struct.TYPE_12__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %18 = bitcast %struct.TYPE_12__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 bitcast (%struct.TYPE_12__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  store i32 1, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %20 = call i32 @notes_ref_lookup(%struct.TYPE_12__* %7, %struct.TYPE_11__* %19)
  store i32 %20, i32* %15, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = load i32, i32* %15, align 4
  %24 = load i32, i32* @GIT_ENOTFOUND, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = call i32 (...) @git_error_clear()
  store i32 0, i32* %15, align 4
  br label %28

28:                                               ; preds = %26, %22
  br label %101

29:                                               ; preds = %2
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @REWRITTEN_FILE, align 4
  %34 = call i32 @git_buf_joinpath(%struct.TYPE_12__* %5, i32 %32, i32 %33)
  store i32 %34, i32* %15, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @git_futils_readbuffer(%struct.TYPE_12__* %6, i8* %38)
  store i32 %39, i32* %15, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36, %29
  br label %101

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %8, align 8
  br label %45

45:                                               ; preds = %93, %42
  %46 = load i8*, i8** %8, align 8
  %47 = load i8, i8* %46, align 1
  %48 = icmp ne i8 %47, 0
  br i1 %48, label %49, label %96

49:                                               ; preds = %45
  %50 = load i8*, i8** %8, align 8
  store i8* %50, i8** %9, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = call i8* @strchr(i8* %51, i8 signext 10)
  store i8* %52, i8** %11, align 8
  %53 = icmp eq i8* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %97

55:                                               ; preds = %49
  %56 = load i8*, i8** %11, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  store i8* %57, i8** %8, align 8
  %58 = load i8*, i8** %11, align 8
  store i8 0, i8* %58, align 1
  %59 = load i8*, i8** %9, align 8
  %60 = call i8* @strchr(i8* %59, i8 signext 32)
  store i8* %60, i8** %11, align 8
  %61 = icmp eq i8* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  br label %97

63:                                               ; preds = %55
  %64 = load i8*, i8** %11, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  store i8* %65, i8** %10, align 8
  %66 = load i8*, i8** %11, align 8
  store i8 0, i8* %66, align 1
  %67 = load i8*, i8** %9, align 8
  %68 = call i64 @strlen(i8* %67)
  %69 = load i64, i64* @GIT_OID_HEXSZ, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %84, label %71

71:                                               ; preds = %63
  %72 = load i8*, i8** %10, align 8
  %73 = call i64 @strlen(i8* %72)
  %74 = load i64, i64* @GIT_OID_HEXSZ, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %84, label %76

76:                                               ; preds = %71
  %77 = load i8*, i8** %9, align 8
  %78 = call i64 @git_oid_fromstr(i32* %12, i8* %77)
  %79 = icmp slt i64 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %76
  %81 = load i8*, i8** %10, align 8
  %82 = call i64 @git_oid_fromstr(i32* %13, i8* %81)
  %83 = icmp slt i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %80, %76, %71, %63
  br label %97

85:                                               ; preds = %80
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = load i32*, i32** %4, align 8
  %90 = call i32 @rebase_copy_note(%struct.TYPE_11__* %86, i8* %88, i32* %12, i32* %13, i32* %89)
  store i32 %90, i32* %15, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %85
  br label %101

93:                                               ; preds = %85
  %94 = load i32, i32* %14, align 4
  %95 = add i32 %94, 1
  store i32 %95, i32* %14, align 4
  br label %45

96:                                               ; preds = %45
  br label %101

97:                                               ; preds = %84, %62, %54
  %98 = load i32, i32* @GIT_ERROR_REBASE, align 4
  %99 = load i32, i32* %14, align 4
  %100 = call i32 @git_error_set(i32 %98, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %99)
  store i32 -1, i32* %15, align 4
  br label %101

101:                                              ; preds = %97, %96, %92, %41, %28
  %102 = call i32 @git_buf_dispose(%struct.TYPE_12__* %6)
  %103 = call i32 @git_buf_dispose(%struct.TYPE_12__* %5)
  %104 = call i32 @git_buf_dispose(%struct.TYPE_12__* %7)
  %105 = load i32, i32* %15, align 4
  ret i32 %105
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @notes_ref_lookup(%struct.TYPE_12__*, %struct.TYPE_11__*) #2

declare dso_local i32 @git_error_clear(...) #2

declare dso_local i32 @git_buf_joinpath(%struct.TYPE_12__*, i32, i32) #2

declare dso_local i32 @git_futils_readbuffer(%struct.TYPE_12__*, i8*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i64 @git_oid_fromstr(i32*, i8*) #2

declare dso_local i32 @rebase_copy_note(%struct.TYPE_11__*, i8*, i32*, i32*, i32*) #2

declare dso_local i32 @git_error_set(i32, i8*, i32) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_12__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
