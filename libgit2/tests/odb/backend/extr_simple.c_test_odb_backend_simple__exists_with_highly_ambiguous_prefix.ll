; ModuleID = '/home/carl/AnghaBench/libgit2/tests/odb/backend/extr_simple.c_test_odb_backend_simple__exists_with_highly_ambiguous_prefix.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/odb/backend/extr_simple.c_test_odb_backend_simple__exists_with_highly_ambiguous_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i32 }

@.str = private unnamed_addr constant [41 x i8] c"1234567890111111111111111111111111111111\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"first content\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"1234567890111111111111111111111111111112\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"second content\00", align 1
@_oid = common dso_local global i32 0, align 4
@GIT_OPT_ENABLE_STRICT_HASH_VERIFICATION = common dso_local global i32 0, align 4
@GIT_EAMBIGUOUS = common dso_local global i32 0, align 4
@_odb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_odb_backend_simple__exists_with_highly_ambiguous_prefix() #0 {
  %1 = alloca [3 x %struct.TYPE_3__], align 16
  %2 = alloca i32, align 4
  %3 = bitcast [3 x %struct.TYPE_3__]* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %3, i8 0, i64 72, i1 false)
  %4 = bitcast i8* %3 to [3 x %struct.TYPE_3__]*
  %5 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i32 0, i32 0), i8** %6, align 16
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8** %7, align 8
  %8 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %4, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i32 0, i32 0), i8** %9, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i8** %10, align 8
  %11 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %1, i64 0, i64 0
  %12 = call i32 @setup_backend(%struct.TYPE_3__* %11)
  %13 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %1, i64 0, i64 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 16
  %16 = call i32 @git_oid_fromstr(i32* @_oid, i32 %15)
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = load i32, i32* @GIT_OPT_ENABLE_STRICT_HASH_VERIFICATION, align 4
  %19 = call i32 @git_libgit2_opts(i32 %18, i32 0)
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = load i32, i32* @GIT_EAMBIGUOUS, align 4
  %22 = load i32, i32* @_odb, align 4
  %23 = call i32 @git_odb_exists_prefix(i32* %2, i32 %22, i32* @_oid, i32 39)
  %24 = call i32 @cl_git_fail_with(i32 %21, i32 %23)
  %25 = load i32, i32* @_odb, align 4
  %26 = call i32 @git_odb_exists_prefix(i32* %2, i32 %25, i32* @_oid, i32 40)
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = call i32 @git_oid_equal(i32* %2, i32* @_oid)
  %29 = call i32 @cl_assert(i32 %28)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @setup_backend(%struct.TYPE_3__*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_oid_fromstr(i32*, i32) #2

declare dso_local i32 @git_libgit2_opts(i32, i32) #2

declare dso_local i32 @cl_git_fail_with(i32, i32) #2

declare dso_local i32 @git_odb_exists_prefix(i32*, i32, i32*, i32) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @git_oid_equal(i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
