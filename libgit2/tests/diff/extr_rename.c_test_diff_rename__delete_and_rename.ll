; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_rename.c_test_diff_rename__delete_and_rename.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_rename.c_test_diff_rename__delete_and_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@RENAME_MODIFICATION_COMMIT = common dso_local global i8* null, align 8
@DELETE_RENAME_COMMIT = common dso_local global i8* null, align 8
@GIT_DIFF_FIND_OPTIONS_INIT = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@GIT_BUF_INIT = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@.str = private unnamed_addr constant [1067 x i8] c"diff --git a/sixserving.txt b/sixserving.txt\0Adeleted file mode 100644\0Aindex f90d4fc..0000000\0A--- a/sixserving.txt\0A+++ /dev/null\0A@@ -1,25 +0,0 @@\0A-I  KEEP  six  honest  serving-men\0A-  (They  taught  me  all  I  knew);\0A-Their  names  are  What  and  Why  and  When\0A-  And  How  and  Where  and  Who.\0A-I  send  them  over  land  and  sea,\0A-  I  send  them  east  and  west;\0A-But  after  they  have  worked  for  me,\0A-  I  give  them  all  a  rest.\0A-\0A-I  let  them  rest  from  nine  till  five,\0A-  For  I  am  busy  then,\0A-As  well  as  breakfast,  lunch,  and  tea,\0A-  For  they  are  hungry  men.\0A-But  different  folk  have  different  views;\0A-I  know  a  person  small\E2\80\94\0A-She  keeps  ten  million  serving-men,\0A-Who  get  no  rest  at  all!\0A-\0A-She  sends'em  abroad  on  her  own  affairs,\0A-  From  the  second  she  opens  her  eyes\E2\80\94\0A-One  million  Hows,  two  million  Wheres,\0A-And  seven  million  Whys!\0A-\0A-    --  Rudyard  Kipling\0A-\0Adiff --git a/songof7cities.txt b/sixserving.txt\0Asimilarity index 100%\0Arename from songof7cities.txt\0Arename to sixserving.txt\0A\00", align 1
@g_repo = common dso_local global i32 0, align 4
@GIT_DIFF_FIND_RENAMES_FROM_REWRITES = common dso_local global i32 0, align 4
@GIT_DIFF_FORMAT_PATCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_rename__delete_and_rename() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__, align 4
  %7 = alloca %struct.TYPE_9__, align 4
  %8 = alloca i8*, align 8
  %9 = load i8*, i8** @RENAME_MODIFICATION_COMMIT, align 8
  store i8* %9, i8** %1, align 8
  %10 = load i8*, i8** @DELETE_RENAME_COMMIT, align 8
  store i8* %10, i8** %2, align 8
  %11 = bitcast %struct.TYPE_8__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast (%struct.TYPE_8__* @GIT_DIFF_FIND_OPTIONS_INIT to i8*), i64 4, i1 false)
  %12 = bitcast %struct.TYPE_9__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast (%struct.TYPE_9__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  store i8* getelementptr inbounds ([1067 x i8], [1067 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %13 = load i32, i32* @g_repo, align 4
  %14 = load i8*, i8** %1, align 8
  %15 = call i32* @resolve_commit_oid_to_tree(i32 %13, i8* %14)
  store i32* %15, i32** %3, align 8
  %16 = load i32, i32* @g_repo, align 4
  %17 = load i8*, i8** %2, align 8
  %18 = call i32* @resolve_commit_oid_to_tree(i32 %16, i8* %17)
  store i32* %18, i32** %4, align 8
  %19 = load i32, i32* @GIT_DIFF_FIND_RENAMES_FROM_REWRITES, align 4
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @g_repo, align 4
  %22 = load i32*, i32** %3, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @git_diff_tree_to_tree(i32** %5, i32 %21, i32* %22, i32* %23, i32* null)
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @git_diff_find_similar(i32* %26, %struct.TYPE_8__* %6)
  %28 = call i32 @cl_git_pass(i32 %27)
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* @GIT_DIFF_FORMAT_PATCH, align 4
  %31 = call i32 @git_diff_to_buf(%struct.TYPE_9__* %7, i32* %29, i32 %30)
  %32 = call i32 @cl_git_pass(i32 %31)
  %33 = load i8*, i8** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @cl_assert_equal_s(i8* %33, i32 %35)
  %37 = call i32 @git_buf_dispose(%struct.TYPE_9__* %7)
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @git_diff_free(i32* %38)
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @git_tree_free(i32* %40)
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @git_tree_free(i32* %42)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @resolve_commit_oid_to_tree(i32, i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_diff_tree_to_tree(i32**, i32, i32*, i32*, i32*) #2

declare dso_local i32 @git_diff_find_similar(i32*, %struct.TYPE_8__*) #2

declare dso_local i32 @git_diff_to_buf(%struct.TYPE_9__*, i32*, i32) #2

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_9__*) #2

declare dso_local i32 @git_diff_free(i32*) #2

declare dso_local i32 @git_tree_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
