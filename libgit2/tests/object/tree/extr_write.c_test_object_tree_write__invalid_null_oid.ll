; ModuleID = '/home/carl/AnghaBench/libgit2/tests/object/tree/extr_write.c_test_object_tree_write__invalid_null_oid.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/object/tree/extr_write.c_test_object_tree_write__invalid_null_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"null_oid_file\00", align 1
@GIT_FILEMODE_BLOB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"null OID\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_object_tree_write__invalid_null_oid() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_6__, align 4
  %3 = bitcast %struct.TYPE_6__* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 4, i1 false)
  %4 = load i32, i32* @g_repo, align 4
  %5 = call i32 @git_treebuilder_new(i32** %1, i32 %4, i32* null)
  %6 = call i32 @cl_git_pass(i32 %5)
  %7 = load i32*, i32** %1, align 8
  %8 = load i32, i32* @GIT_FILEMODE_BLOB, align 4
  %9 = call i32 @git_treebuilder_insert(i32* null, i32* %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* %2, i32 %8)
  %10 = call i32 @cl_git_fail(i32 %9)
  %11 = call %struct.TYPE_7__* (...) @git_error_last()
  %12 = icmp ne %struct.TYPE_7__* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %0
  %14 = call %struct.TYPE_7__* (...) @git_error_last()
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32* @strstr(i32 %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %18 = icmp ne i32* %17, null
  br label %19

19:                                               ; preds = %13, %0
  %20 = phi i1 [ false, %0 ], [ %18, %13 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @cl_assert(i32 %21)
  %23 = load i32*, i32** %1, align 8
  %24 = call i32 @git_treebuilder_free(i32* %23)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_treebuilder_new(i32**, i32, i32*) #2

declare dso_local i32 @cl_git_fail(i32) #2

declare dso_local i32 @git_treebuilder_insert(i32*, i32*, i8*, %struct.TYPE_6__*, i32) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local %struct.TYPE_7__* @git_error_last(...) #2

declare dso_local i32* @strstr(i32, i8*) #2

declare dso_local i32 @git_treebuilder_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
