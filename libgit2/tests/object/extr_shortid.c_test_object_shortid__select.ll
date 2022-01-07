; ModuleID = '/home/carl/AnghaBench/libgit2/tests/object/extr_shortid.c_test_object_shortid__select.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/object/extr_shortid.c_test_object_shortid__select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"ce013625030ba8dba906f756967f9e9ca394464a\00", align 1
@_repo = common dso_local global i32 0, align 4
@GIT_OBJECT_ANY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"ce01362\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"038d718da6a1ebbc6a7780a96ed75a70cc2ad6e2\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"038d718\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"dea509d097ce692e167dfc6a48a7a280cc5e877e\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"dea509d09\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"dea509d0b3cb8ee0650f6ca210bc83f4678851ba\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"dea509d0b\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_object_shortid__select() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_4__, align 4
  %4 = bitcast %struct.TYPE_4__* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 12, i1 false)
  %5 = call i32 @git_oid_fromstr(i32* %1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @_repo, align 4
  %7 = load i32, i32* @GIT_OBJECT_ANY, align 4
  %8 = call i32 @git_object_lookup(i32** %2, i32 %6, i32* %1, i32 %7)
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @git_object_short_id(%struct.TYPE_4__* %3, i32* %10)
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @cl_assert_equal_i(i32 7, i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @git_object_free(i32* %19)
  %21 = call i32 @git_oid_fromstr(i32* %1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %22 = load i32, i32* @_repo, align 4
  %23 = load i32, i32* @GIT_OBJECT_ANY, align 4
  %24 = call i32 @git_object_lookup(i32** %2, i32 %22, i32* %1, i32 %23)
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = load i32*, i32** %2, align 8
  %27 = call i32 @git_object_short_id(%struct.TYPE_4__* %3, i32* %26)
  %28 = call i32 @cl_git_pass(i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @cl_assert_equal_i(i32 7, i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %33)
  %35 = load i32*, i32** %2, align 8
  %36 = call i32 @git_object_free(i32* %35)
  %37 = call i32 @git_oid_fromstr(i32* %1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %38 = load i32, i32* @_repo, align 4
  %39 = load i32, i32* @GIT_OBJECT_ANY, align 4
  %40 = call i32 @git_object_lookup(i32** %2, i32 %38, i32* %1, i32 %39)
  %41 = call i32 @cl_git_pass(i32 %40)
  %42 = load i32*, i32** %2, align 8
  %43 = call i32 @git_object_short_id(%struct.TYPE_4__* %3, i32* %42)
  %44 = call i32 @cl_git_pass(i32 %43)
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @cl_assert_equal_i(i32 9, i32 %46)
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %49)
  %51 = load i32*, i32** %2, align 8
  %52 = call i32 @git_object_free(i32* %51)
  %53 = call i32 @git_oid_fromstr(i32* %1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  %54 = load i32, i32* @_repo, align 4
  %55 = load i32, i32* @GIT_OBJECT_ANY, align 4
  %56 = call i32 @git_object_lookup(i32** %2, i32 %54, i32* %1, i32 %55)
  %57 = call i32 @cl_git_pass(i32 %56)
  %58 = load i32*, i32** %2, align 8
  %59 = call i32 @git_object_short_id(%struct.TYPE_4__* %3, i32* %58)
  %60 = call i32 @cl_git_pass(i32 %59)
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @cl_assert_equal_i(i32 9, i32 %62)
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %65)
  %67 = load i32*, i32** %2, align 8
  %68 = call i32 @git_object_free(i32* %67)
  %69 = call i32 @git_buf_dispose(%struct.TYPE_4__* %3)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_object_lookup(i32**, i32, i32*, i32) #2

declare dso_local i32 @git_object_short_id(%struct.TYPE_4__*, i32*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #2

declare dso_local i32 @git_object_free(i32*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_4__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
