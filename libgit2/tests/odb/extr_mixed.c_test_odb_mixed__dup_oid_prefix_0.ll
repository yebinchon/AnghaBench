; ModuleID = '/home/carl/AnghaBench/libgit2/tests/odb/extr_mixed.c_test_odb_mixed__dup_oid_prefix_0.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/odb/extr_mixed.c_test_odb_mixed__dup_oid_prefix_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"dea509d0\00", align 1
@GIT_EAMBIGUOUS = common dso_local global i32 0, align 4
@_odb = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"dea509d09\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"dea509d0b\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"81b5bff5\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"81b5bff5b\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"81b5bff5f\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"0ddeaded\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"0ddeaded9\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"0ddeadede\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_odb_mixed__dup_oid_prefix_0() #0 {
  %1 = alloca [10 x i8], align 1
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %6 = call i32 @strncpy(i8* %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 10)
  %7 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %8 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %9 = call i32 @strlen(i8* %8)
  %10 = call i32 @git_oid_fromstrn(i32* %2, i8* %7, i32 %9)
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = load i32, i32* @GIT_EAMBIGUOUS, align 4
  %13 = load i32, i32* @_odb, align 4
  %14 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %15 = call i32 @strlen(i8* %14)
  %16 = call i32 @git_odb_read_prefix(i32** %4, i32 %13, i32* %2, i32 %15)
  %17 = call i32 @cl_assert_equal_i(i32 %12, i32 %16)
  %18 = load i32, i32* @GIT_EAMBIGUOUS, align 4
  %19 = load i32, i32* @_odb, align 4
  %20 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %21 = call i32 @strlen(i8* %20)
  %22 = call i32 @git_odb_exists_prefix(i32* %3, i32 %19, i32* %2, i32 %21)
  %23 = call i32 @cl_assert_equal_i(i32 %18, i32 %22)
  %24 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %25 = call i32 @strncpy(i8* %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 10)
  %26 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %27 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %28 = call i32 @strlen(i8* %27)
  %29 = call i32 @git_oid_fromstrn(i32* %2, i8* %26, i32 %28)
  %30 = call i32 @cl_git_pass(i32 %29)
  %31 = load i32, i32* @_odb, align 4
  %32 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %33 = call i32 @strlen(i8* %32)
  %34 = call i32 @git_odb_read_prefix(i32** %4, i32 %31, i32* %2, i32 %33)
  %35 = call i32 @cl_git_pass(i32 %34)
  %36 = load i32, i32* @_odb, align 4
  %37 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %38 = call i32 @strlen(i8* %37)
  %39 = call i32 @git_odb_exists_prefix(i32* %3, i32 %36, i32* %2, i32 %38)
  %40 = call i32 @cl_git_pass(i32 %39)
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @git_odb_object_id(i32* %41)
  %43 = call i32 @cl_assert_equal_oid(i32* %3, i32 %42)
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @git_odb_object_free(i32* %44)
  %46 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %47 = call i32 @strncpy(i8* %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 10)
  %48 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %49 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %50 = call i32 @strlen(i8* %49)
  %51 = call i32 @git_oid_fromstrn(i32* %2, i8* %48, i32 %50)
  %52 = call i32 @cl_git_pass(i32 %51)
  %53 = load i32, i32* @_odb, align 4
  %54 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %55 = call i32 @strlen(i8* %54)
  %56 = call i32 @git_odb_read_prefix(i32** %4, i32 %53, i32* %2, i32 %55)
  %57 = call i32 @cl_git_pass(i32 %56)
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @git_odb_object_free(i32* %58)
  %60 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %61 = call i32 @strncpy(i8* %60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 10)
  %62 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %63 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %64 = call i32 @strlen(i8* %63)
  %65 = call i32 @git_oid_fromstrn(i32* %2, i8* %62, i32 %64)
  %66 = call i32 @cl_git_pass(i32 %65)
  %67 = load i32, i32* @GIT_EAMBIGUOUS, align 4
  %68 = load i32, i32* @_odb, align 4
  %69 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %70 = call i32 @strlen(i8* %69)
  %71 = call i32 @git_odb_read_prefix(i32** %4, i32 %68, i32* %2, i32 %70)
  %72 = call i32 @cl_assert_equal_i(i32 %67, i32 %71)
  %73 = load i32, i32* @GIT_EAMBIGUOUS, align 4
  %74 = load i32, i32* @_odb, align 4
  %75 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %76 = call i32 @strlen(i8* %75)
  %77 = call i32 @git_odb_exists_prefix(i32* %3, i32 %74, i32* %2, i32 %76)
  %78 = call i32 @cl_assert_equal_i(i32 %73, i32 %77)
  %79 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %80 = call i32 @strncpy(i8* %79, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 10)
  %81 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %82 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %83 = call i32 @strlen(i8* %82)
  %84 = call i32 @git_oid_fromstrn(i32* %2, i8* %81, i32 %83)
  %85 = call i32 @cl_git_pass(i32 %84)
  %86 = load i32, i32* @_odb, align 4
  %87 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %88 = call i32 @strlen(i8* %87)
  %89 = call i32 @git_odb_read_prefix(i32** %4, i32 %86, i32* %2, i32 %88)
  %90 = call i32 @cl_git_pass(i32 %89)
  %91 = load i32, i32* @_odb, align 4
  %92 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %93 = call i32 @strlen(i8* %92)
  %94 = call i32 @git_odb_exists_prefix(i32* %3, i32 %91, i32* %2, i32 %93)
  %95 = call i32 @cl_git_pass(i32 %94)
  %96 = load i32*, i32** %4, align 8
  %97 = call i32 @git_odb_object_id(i32* %96)
  %98 = call i32 @cl_assert_equal_oid(i32* %3, i32 %97)
  %99 = load i32*, i32** %4, align 8
  %100 = call i32 @git_odb_object_free(i32* %99)
  %101 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %102 = call i32 @strncpy(i8* %101, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 10)
  %103 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %104 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %105 = call i32 @strlen(i8* %104)
  %106 = call i32 @git_oid_fromstrn(i32* %2, i8* %103, i32 %105)
  %107 = call i32 @cl_git_pass(i32 %106)
  %108 = load i32, i32* @_odb, align 4
  %109 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %110 = call i32 @strlen(i8* %109)
  %111 = call i32 @git_odb_read_prefix(i32** %4, i32 %108, i32* %2, i32 %110)
  %112 = call i32 @cl_git_pass(i32 %111)
  %113 = load i32*, i32** %4, align 8
  %114 = call i32 @git_odb_object_free(i32* %113)
  %115 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %116 = call i32 @strncpy(i8* %115, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 10)
  %117 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %118 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %119 = call i32 @strlen(i8* %118)
  %120 = call i32 @git_oid_fromstrn(i32* %2, i8* %117, i32 %119)
  %121 = call i32 @cl_git_pass(i32 %120)
  %122 = load i32, i32* @GIT_EAMBIGUOUS, align 4
  %123 = load i32, i32* @_odb, align 4
  %124 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %125 = call i32 @strlen(i8* %124)
  %126 = call i32 @git_odb_read_prefix(i32** %4, i32 %123, i32* %2, i32 %125)
  %127 = call i32 @cl_assert_equal_i(i32 %122, i32 %126)
  %128 = load i32, i32* @GIT_EAMBIGUOUS, align 4
  %129 = load i32, i32* @_odb, align 4
  %130 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %131 = call i32 @strlen(i8* %130)
  %132 = call i32 @git_odb_exists_prefix(i32* %3, i32 %129, i32* %2, i32 %131)
  %133 = call i32 @cl_assert_equal_i(i32 %128, i32 %132)
  %134 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %135 = call i32 @strncpy(i8* %134, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 10)
  %136 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %137 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %138 = call i32 @strlen(i8* %137)
  %139 = call i32 @git_oid_fromstrn(i32* %2, i8* %136, i32 %138)
  %140 = call i32 @cl_git_pass(i32 %139)
  %141 = load i32, i32* @_odb, align 4
  %142 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %143 = call i32 @strlen(i8* %142)
  %144 = call i32 @git_odb_read_prefix(i32** %4, i32 %141, i32* %2, i32 %143)
  %145 = call i32 @cl_git_pass(i32 %144)
  %146 = load i32, i32* @_odb, align 4
  %147 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %148 = call i32 @strlen(i8* %147)
  %149 = call i32 @git_odb_exists_prefix(i32* %3, i32 %146, i32* %2, i32 %148)
  %150 = call i32 @cl_git_pass(i32 %149)
  %151 = load i32*, i32** %4, align 8
  %152 = call i32 @git_odb_object_id(i32* %151)
  %153 = call i32 @cl_assert_equal_oid(i32* %3, i32 %152)
  %154 = load i32*, i32** %4, align 8
  %155 = call i32 @git_odb_object_free(i32* %154)
  %156 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %157 = call i32 @strncpy(i8* %156, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 10)
  %158 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %159 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %160 = call i32 @strlen(i8* %159)
  %161 = call i32 @git_oid_fromstrn(i32* %2, i8* %158, i32 %160)
  %162 = call i32 @cl_git_pass(i32 %161)
  %163 = load i32, i32* @_odb, align 4
  %164 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %165 = call i32 @strlen(i8* %164)
  %166 = call i32 @git_odb_read_prefix(i32** %4, i32 %163, i32* %2, i32 %165)
  %167 = call i32 @cl_git_pass(i32 %166)
  %168 = load i32*, i32** %4, align 8
  %169 = call i32 @git_odb_object_free(i32* %168)
  ret void
}

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_oid_fromstrn(i32*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_odb_read_prefix(i32**, i32, i32*, i32) #1

declare dso_local i32 @git_odb_exists_prefix(i32*, i32, i32*, i32) #1

declare dso_local i32 @cl_assert_equal_oid(i32*, i32) #1

declare dso_local i32 @git_odb_object_id(i32*) #1

declare dso_local i32 @git_odb_object_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
