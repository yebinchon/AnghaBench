; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_branch.c_retrieve_branch_reference.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_branch.c_retrieve_branch_reference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@GIT_REFS_REMOTES_DIR = common dso_local global i8* null, align 8
@GIT_REFS_HEADS_DIR = common dso_local global i8* null, align 8
@GIT_ERROR_REFERENCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"cannot locate %s branch '%s'\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"remote-tracking\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32*, i8*, i32)* @retrieve_branch_reference to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @retrieve_branch_reference(i32** %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_5__, align 4
  store i32** %0, i32*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32* null, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %13 = bitcast %struct.TYPE_5__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast (%struct.TYPE_5__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i8*, i8** @GIT_REFS_REMOTES_DIR, align 8
  br label %20

18:                                               ; preds = %4
  %19 = load i8*, i8** @GIT_REFS_HEADS_DIR, align 8
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i8* [ %17, %16 ], [ %19, %18 ]
  store i8* %21, i8** %11, align 8
  %22 = load i8*, i8** %11, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @git_buf_joinpath(%struct.TYPE_5__* %12, i8* %22, i8* %23)
  store i32 %24, i32* %10, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %42

27:                                               ; preds = %20
  %28 = load i32*, i32** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @git_reference_lookup(i32** %9, i32* %28, i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %27
  %34 = load i32, i32* @GIT_ERROR_REFERENCE, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 @git_error_set(i32 %34, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %38, i8* %39)
  br label %41

41:                                               ; preds = %33, %27
  br label %42

42:                                               ; preds = %41, %26
  %43 = load i32*, i32** %9, align 8
  %44 = load i32**, i32*** %5, align 8
  store i32* %43, i32** %44, align 8
  %45 = call i32 @git_buf_dispose(%struct.TYPE_5__* %12)
  %46 = load i32, i32* %10, align 4
  ret i32 %46
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git_buf_joinpath(%struct.TYPE_5__*, i8*, i8*) #2

declare dso_local i32 @git_reference_lookup(i32**, i32*, i32) #2

declare dso_local i32 @git_error_set(i32, i8*, i8*, i8*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_5__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
