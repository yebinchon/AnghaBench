; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_binary.c_test_diff_binary__delta.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_binary.c_test_diff_binary__delta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32* }
%struct.TYPE_8__ = type { i32, i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@GIT_DIFF_OPTIONS_INIT = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str = private unnamed_addr constant [489 x i8] c"diff --git a/songof7cities.txt b/songof7cities.txt\0Aindex 4210ffd5c390b21dd5483375e75288dea9ede512..cc84ec183351c9944ed90a619ca08911924055b5 100644\0AGIT binary patch\0Adelta 198\0Azc$}LmI8{(0BqLQJI6p64AwNwaIJGP_Pa)Ye#M3o+qJ$<Jl;sX*mF<MGCYv&*L7AHu\0AzGA1*^gt?gYVN82wTbPO_W)+x<&1+cP;HrPHR>PQ;Y(X&QMK*C5^Br3bjG4d=XI^5@\0AJfH567LIG)KJdFSV\0A\0Adelta 198\0Azc$}LmI8{(0BqLQJI6p64AwNwaIJGP_Pr*5}Br~;mqJ$<Jl;sX*mF<MGCYv&*L7AHu\0AzGA1*^gt?gYVN82wTbPO_W)+x<&1+cP;HrPHR>PQ;Y(X&QMK*C5^Br3bjG4d=XI^5@\0AJfH567LIF3FM2!Fd\0A\0A\00", align 1
@GIT_DIFF_SHOW_BINARY = common dso_local global i32 0, align 4
@GIT_DIFF_FORCE_BINARY = common dso_local global i32 0, align 4
@GIT_OID_HEXSZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"renames\00", align 1
@repo = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"renames/songof7cities.txt\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Cities\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"cITIES\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"songof7cities.txt\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"19dd32dfb1520a64e5bbaae8dce6ef423dfa2f13\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_binary__delta() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_9__, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_8__, align 4
  %5 = alloca i8*, align 8
  %6 = bitcast %struct.TYPE_9__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 bitcast (%struct.TYPE_9__* @GIT_BUF_INIT to i8*), i64 16, i1 false)
  %7 = bitcast %struct.TYPE_8__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.TYPE_8__* @GIT_DIFF_OPTIONS_INIT to i8*), i64 8, i1 false)
  store i8* getelementptr inbounds ([489 x i8], [489 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %8 = load i32, i32* @GIT_DIFF_SHOW_BINARY, align 4
  %9 = load i32, i32* @GIT_DIFF_FORCE_BINARY, align 4
  %10 = or i32 %8, %9
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  store i32 %12, i32* %13, align 4
  %14 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 %14, i32* @repo, align 4
  %15 = load i32, i32* @repo, align 4
  %16 = call i32 @git_repository_index(i32** %1, i32 %15)
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = call i32 @git_futils_readbuffer(%struct.TYPE_9__* %2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %19 = call i32 @cl_git_pass(i32 %18)
  store i64 0, i64* %3, align 8
  br label %20

20:                                               ; preds = %41, %0
  %21 = load i64, i64* %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sub nsw i32 %23, 6
  %25 = sext i32 %24 to i64
  %26 = icmp ult i64 %21, %25
  br i1 %26, label %27, label %44

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* %3, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = call i64 @strncmp(i32* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 6)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* %3, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = call i32 @memcpy(i32* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 6)
  br label %40

40:                                               ; preds = %34, %27
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %3, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %3, align 8
  br label %20

44:                                               ; preds = %20
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32* %46)
  %48 = load i32*, i32** %1, align 8
  %49 = call i32 @git_index_add_bypath(i32* %48, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %50 = call i32 @cl_git_pass(i32 %49)
  %51 = load i32*, i32** %1, align 8
  %52 = call i32 @git_index_write(i32* %51)
  %53 = call i32 @cl_git_pass(i32 %52)
  %54 = load i8*, i8** %5, align 8
  %55 = call i32 @test_patch(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i32* null, %struct.TYPE_8__* %4, i8* %54)
  %56 = load i32*, i32** %1, align 8
  %57 = call i32 @git_index_free(i32* %56)
  %58 = call i32 @git_buf_dispose(%struct.TYPE_9__* %2)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_sandbox_init(i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_index(i32**, i32) #2

declare dso_local i32 @git_futils_readbuffer(%struct.TYPE_9__*, i8*) #2

declare dso_local i64 @strncmp(i32*, i8*, i32) #2

declare dso_local i32 @memcpy(i32*, i8*, i32) #2

declare dso_local i32 @cl_git_rewritefile(i8*, i32*) #2

declare dso_local i32 @git_index_add_bypath(i32*, i8*) #2

declare dso_local i32 @git_index_write(i32*) #2

declare dso_local i32 @test_patch(i8*, i32*, %struct.TYPE_8__*, i8*) #2

declare dso_local i32 @git_index_free(i32*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_9__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
