; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_sortedcache.c_test_core_sortedcache__name_only.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_sortedcache.c_test_core_sortedcache__name_only.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@name_only_cmp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"aaa\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"bbb\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"zzz\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"mmm\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"iii\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"qqq\00", align 1
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"abc\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_sortedcache__name_only() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = load i32, i32* @name_only_cmp, align 4
  %5 = call i32 @git_sortedcache_new(i32** %1, i32 0, i32* null, i32* null, i32 %4, i32* null)
  %6 = call i32 @cl_git_pass(i32 %5)
  %7 = load i32*, i32** %1, align 8
  %8 = call i32 @git_sortedcache_wlock(i32* %7)
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = load i32*, i32** %1, align 8
  %11 = call i32 @git_sortedcache_upsert(i8** %2, i32* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load i32*, i32** %1, align 8
  %14 = call i32 @git_sortedcache_upsert(i8** %2, i32* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load i32*, i32** %1, align 8
  %17 = call i32 @git_sortedcache_upsert(i8** %2, i32* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = load i32*, i32** %1, align 8
  %20 = call i32 @git_sortedcache_upsert(i8** %2, i32* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = load i32*, i32** %1, align 8
  %23 = call i32 @git_sortedcache_upsert(i8** %2, i32* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = load i32*, i32** %1, align 8
  %26 = call i32 @git_sortedcache_wunlock(i32* %25)
  %27 = load i32*, i32** %1, align 8
  %28 = call i64 @git_sortedcache_entrycount(i32* %27)
  %29 = call i32 @cl_assert_equal_sz(i32 5, i64 %28)
  %30 = load i32*, i32** %1, align 8
  %31 = call i32* @git_sortedcache_lookup(i32* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %32 = bitcast i32* %31 to i8*
  store i8* %32, i8** %2, align 8
  %33 = icmp ne i8* %32, null
  %34 = zext i1 %33 to i32
  %35 = call i32 @cl_assert(i32 %34)
  %36 = load i8*, i8** %2, align 8
  %37 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %36)
  %38 = load i32*, i32** %1, align 8
  %39 = call i32* @git_sortedcache_lookup(i32* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %40 = bitcast i32* %39 to i8*
  store i8* %40, i8** %2, align 8
  %41 = icmp ne i8* %40, null
  %42 = zext i1 %41 to i32
  %43 = call i32 @cl_assert(i32 %42)
  %44 = load i8*, i8** %2, align 8
  %45 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %44)
  %46 = load i32*, i32** %1, align 8
  %47 = call i32* @git_sortedcache_lookup(i32* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %48 = bitcast i32* %47 to i8*
  store i8* %48, i8** %2, align 8
  %49 = icmp ne i8* %48, null
  %50 = zext i1 %49 to i32
  %51 = call i32 @cl_assert(i32 %50)
  %52 = load i8*, i8** %2, align 8
  %53 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %52)
  %54 = load i32*, i32** %1, align 8
  %55 = call i32* @git_sortedcache_lookup(i32* %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %56 = icmp eq i32* %55, null
  %57 = zext i1 %56 to i32
  %58 = call i32 @cl_assert(i32 %57)
  %59 = load i32*, i32** %1, align 8
  %60 = call i32* @git_sortedcache_entry(i32* %59, i32 0)
  %61 = bitcast i32* %60 to i8*
  store i8* %61, i8** %2, align 8
  %62 = icmp ne i8* %61, null
  %63 = zext i1 %62 to i32
  %64 = call i32 @cl_assert(i32 %63)
  %65 = load i8*, i8** %2, align 8
  %66 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %65)
  %67 = load i32*, i32** %1, align 8
  %68 = call i32* @git_sortedcache_entry(i32* %67, i32 1)
  %69 = bitcast i32* %68 to i8*
  store i8* %69, i8** %2, align 8
  %70 = icmp ne i8* %69, null
  %71 = zext i1 %70 to i32
  %72 = call i32 @cl_assert(i32 %71)
  %73 = load i8*, i8** %2, align 8
  %74 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %73)
  %75 = load i32*, i32** %1, align 8
  %76 = call i32* @git_sortedcache_entry(i32* %75, i32 2)
  %77 = bitcast i32* %76 to i8*
  store i8* %77, i8** %2, align 8
  %78 = icmp ne i8* %77, null
  %79 = zext i1 %78 to i32
  %80 = call i32 @cl_assert(i32 %79)
  %81 = load i8*, i8** %2, align 8
  %82 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %81)
  %83 = load i32*, i32** %1, align 8
  %84 = call i32* @git_sortedcache_entry(i32* %83, i32 3)
  %85 = bitcast i32* %84 to i8*
  store i8* %85, i8** %2, align 8
  %86 = icmp ne i8* %85, null
  %87 = zext i1 %86 to i32
  %88 = call i32 @cl_assert(i32 %87)
  %89 = load i8*, i8** %2, align 8
  %90 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %89)
  %91 = load i32*, i32** %1, align 8
  %92 = call i32* @git_sortedcache_entry(i32* %91, i32 4)
  %93 = bitcast i32* %92 to i8*
  store i8* %93, i8** %2, align 8
  %94 = icmp ne i8* %93, null
  %95 = zext i1 %94 to i32
  %96 = call i32 @cl_assert(i32 %95)
  %97 = load i8*, i8** %2, align 8
  %98 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %97)
  %99 = load i32*, i32** %1, align 8
  %100 = call i32* @git_sortedcache_entry(i32* %99, i32 5)
  %101 = icmp eq i32* %100, null
  %102 = zext i1 %101 to i32
  %103 = call i32 @cl_assert(i32 %102)
  %104 = load i32*, i32** %1, align 8
  %105 = call i32 @git_sortedcache_lookup_index(i64* %3, i32* %104, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %106 = call i32 @cl_git_pass(i32 %105)
  %107 = load i64, i64* %3, align 8
  %108 = call i32 @cl_assert_equal_sz(i32 0, i64 %107)
  %109 = load i32*, i32** %1, align 8
  %110 = call i32 @git_sortedcache_lookup_index(i64* %3, i32* %109, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %111 = call i32 @cl_git_pass(i32 %110)
  %112 = load i64, i64* %3, align 8
  %113 = call i32 @cl_assert_equal_sz(i32 2, i64 %112)
  %114 = load i32*, i32** %1, align 8
  %115 = call i32 @git_sortedcache_lookup_index(i64* %3, i32* %114, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %116 = call i32 @cl_git_pass(i32 %115)
  %117 = load i64, i64* %3, align 8
  %118 = call i32 @cl_assert_equal_sz(i32 4, i64 %117)
  %119 = load i32, i32* @GIT_ENOTFOUND, align 4
  %120 = load i32*, i32** %1, align 8
  %121 = call i32 @git_sortedcache_lookup_index(i64* %3, i32* %120, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %122 = call i32 @cl_assert_equal_i(i32 %119, i32 %121)
  %123 = load i32*, i32** %1, align 8
  %124 = call i32 @git_sortedcache_clear(i32* %123, i32 1)
  %125 = load i32*, i32** %1, align 8
  %126 = call i64 @git_sortedcache_entrycount(i32* %125)
  %127 = call i32 @cl_assert_equal_sz(i32 0, i64 %126)
  %128 = load i32*, i32** %1, align 8
  %129 = call i32* @git_sortedcache_entry(i32* %128, i32 0)
  %130 = icmp eq i32* %129, null
  %131 = zext i1 %130 to i32
  %132 = call i32 @cl_assert(i32 %131)
  %133 = load i32*, i32** %1, align 8
  %134 = call i32* @git_sortedcache_lookup(i32* %133, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %135 = icmp eq i32* %134, null
  %136 = zext i1 %135 to i32
  %137 = call i32 @cl_assert(i32 %136)
  %138 = load i32*, i32** %1, align 8
  %139 = call i32* @git_sortedcache_entry(i32* %138, i32 0)
  %140 = icmp eq i32* %139, null
  %141 = zext i1 %140 to i32
  %142 = call i32 @cl_assert(i32 %141)
  %143 = load i32*, i32** %1, align 8
  %144 = call i32 @git_sortedcache_free(i32* %143)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_sortedcache_new(i32**, i32, i32*, i32*, i32, i32*) #1

declare dso_local i32 @git_sortedcache_wlock(i32*) #1

declare dso_local i32 @git_sortedcache_upsert(i8**, i32*, i8*) #1

declare dso_local i32 @git_sortedcache_wunlock(i32*) #1

declare dso_local i32 @cl_assert_equal_sz(i32, i64) #1

declare dso_local i64 @git_sortedcache_entrycount(i32*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32* @git_sortedcache_lookup(i32*, i8*) #1

declare dso_local i32 @cl_assert_equal_s(i8*, i8*) #1

declare dso_local i32* @git_sortedcache_entry(i32*, i32) #1

declare dso_local i32 @git_sortedcache_lookup_index(i64*, i32*, i8*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_sortedcache_clear(i32*, i32) #1

declare dso_local i32 @git_sortedcache_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
