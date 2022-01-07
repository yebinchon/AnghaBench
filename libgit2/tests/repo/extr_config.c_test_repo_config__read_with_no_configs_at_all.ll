; ModuleID = '/home/carl/AnghaBench/libgit2/tests/repo/extr_config.c_test_repo_config__read_with_no_configs_at_all.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/repo/extr_config.c_test_repo_config__read_with_no_configs_at_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }

@GIT_OPT_SET_SEARCH_PATH = common dso_local global i32 0, align 4
@GIT_CONFIG_LEVEL_GLOBAL = common dso_local global i32 0, align 4
@path = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@GIT_CONFIG_LEVEL_SYSTEM = common dso_local global i32 0, align 4
@GIT_CONFIG_LEVEL_XDG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"empty_standard_repo/.git/config\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"empty_standard_repo\00", align 1
@GIT_CONFIGMAP_ABBREV = common dso_local global i32 0, align 4
@GIT_ABBREV_DEFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"alternate/1\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"alternate/1/gitconfig\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"[core]\0A\09abbrev = 10\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"alternate/2\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"alternate/2/config\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"[core]\0A\09abbrev = 20\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"alternate/3\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"alternate/3/.gitconfig\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"[core]\0A\09abbrev = 30\0A\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"[core]\0A\09abbrev = 40\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_repo_config__read_with_no_configs_at_all() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @GIT_OPT_SET_SEARCH_PATH, align 4
  %4 = load i32, i32* @GIT_CONFIG_LEVEL_GLOBAL, align 4
  %5 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @path, i32 0, i32 0), align 8
  %6 = call i32 @git_libgit2_opts(i32 %3, i32 %4, i8* %5)
  %7 = call i32 @cl_git_pass(i32 %6)
  %8 = load i32, i32* @GIT_OPT_SET_SEARCH_PATH, align 4
  %9 = load i32, i32* @GIT_CONFIG_LEVEL_SYSTEM, align 4
  %10 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @path, i32 0, i32 0), align 8
  %11 = call i32 @git_libgit2_opts(i32 %8, i32 %9, i8* %10)
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load i32, i32* @GIT_OPT_SET_SEARCH_PATH, align 4
  %14 = load i32, i32* @GIT_CONFIG_LEVEL_XDG, align 4
  %15 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @path, i32 0, i32 0), align 8
  %16 = call i32 @git_libgit2_opts(i32 %13, i32 %14, i8* %15)
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = call i32 @p_unlink(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %19 = call i32 @cl_must_pass(i32 %18)
  %20 = call i32 @git_path_isfile(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @cl_assert(i32 %23)
  %25 = call i32 @git_repository_open(i32** %1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %26 = call i32 @cl_git_pass(i32 %25)
  %27 = load i32*, i32** %1, align 8
  %28 = call i32 @git_repository__configmap_lookup_cache_clear(i32* %27)
  store i32 -1, i32* %2, align 4
  %29 = load i32*, i32** %1, align 8
  %30 = load i32, i32* @GIT_CONFIGMAP_ABBREV, align 4
  %31 = call i32 @git_repository__configmap_lookup(i32* %2, i32* %29, i32 %30)
  %32 = call i32 @cl_git_pass(i32 %31)
  %33 = load i32, i32* @GIT_ABBREV_DEFAULT, align 4
  %34 = load i32, i32* %2, align 4
  %35 = call i32 @cl_assert_equal_i(i32 %33, i32 %34)
  %36 = load i32*, i32** %1, align 8
  %37 = call i32 @git_repository_free(i32* %36)
  %38 = call i32 (...) @cl_sandbox_set_search_path_defaults()
  %39 = call i32 @p_mkdir(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 511)
  %40 = call i32 @cl_must_pass(i32 %39)
  %41 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @path, i32 0, i32 0), align 8
  %42 = call i32 @git_buf_joinpath(%struct.TYPE_3__* @path, i8* %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %43 = call i32 @cl_git_pass(i32 %42)
  %44 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %45 = load i32, i32* @GIT_OPT_SET_SEARCH_PATH, align 4
  %46 = load i32, i32* @GIT_CONFIG_LEVEL_SYSTEM, align 4
  %47 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @path, i32 0, i32 0), align 8
  %48 = call i32 @git_libgit2_opts(i32 %45, i32 %46, i8* %47)
  %49 = call i32 @cl_git_pass(i32 %48)
  %50 = call i32 @git_repository_open(i32** %1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %51 = call i32 @cl_git_pass(i32 %50)
  %52 = load i32*, i32** %1, align 8
  %53 = call i32 @git_repository__configmap_lookup_cache_clear(i32* %52)
  store i32 -1, i32* %2, align 4
  %54 = load i32*, i32** %1, align 8
  %55 = load i32, i32* @GIT_CONFIGMAP_ABBREV, align 4
  %56 = call i32 @git_repository__configmap_lookup(i32* %2, i32* %54, i32 %55)
  %57 = call i32 @cl_git_pass(i32 %56)
  %58 = load i32, i32* %2, align 4
  %59 = call i32 @cl_assert_equal_i(i32 10, i32 %58)
  %60 = load i32*, i32** %1, align 8
  %61 = call i32 @git_repository_free(i32* %60)
  %62 = call i32 @p_mkdir(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 511)
  %63 = call i32 @cl_must_pass(i32 %62)
  %64 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @path, i32 0, i32 0), align 8
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @path, i32 0, i32 1), align 8
  %66 = sub nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %64, i64 %67
  store i8 50, i8* %68, align 1
  %69 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %70 = load i32, i32* @GIT_OPT_SET_SEARCH_PATH, align 4
  %71 = load i32, i32* @GIT_CONFIG_LEVEL_XDG, align 4
  %72 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @path, i32 0, i32 0), align 8
  %73 = call i32 @git_libgit2_opts(i32 %70, i32 %71, i8* %72)
  %74 = call i32 @cl_git_pass(i32 %73)
  %75 = call i32 @git_repository_open(i32** %1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %76 = call i32 @cl_git_pass(i32 %75)
  %77 = load i32*, i32** %1, align 8
  %78 = call i32 @git_repository__configmap_lookup_cache_clear(i32* %77)
  store i32 -1, i32* %2, align 4
  %79 = load i32*, i32** %1, align 8
  %80 = load i32, i32* @GIT_CONFIGMAP_ABBREV, align 4
  %81 = call i32 @git_repository__configmap_lookup(i32* %2, i32* %79, i32 %80)
  %82 = call i32 @cl_git_pass(i32 %81)
  %83 = load i32, i32* %2, align 4
  %84 = call i32 @cl_assert_equal_i(i32 20, i32 %83)
  %85 = load i32*, i32** %1, align 8
  %86 = call i32 @git_repository_free(i32* %85)
  %87 = call i32 @p_mkdir(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32 511)
  %88 = call i32 @cl_must_pass(i32 %87)
  %89 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @path, i32 0, i32 0), align 8
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @path, i32 0, i32 1), align 8
  %91 = sub nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %89, i64 %92
  store i8 51, i8* %93, align 1
  %94 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  %95 = load i32, i32* @GIT_OPT_SET_SEARCH_PATH, align 4
  %96 = load i32, i32* @GIT_CONFIG_LEVEL_GLOBAL, align 4
  %97 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @path, i32 0, i32 0), align 8
  %98 = call i32 @git_libgit2_opts(i32 %95, i32 %96, i8* %97)
  %99 = call i32 @cl_git_pass(i32 %98)
  %100 = call i32 @git_repository_open(i32** %1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %101 = call i32 @cl_git_pass(i32 %100)
  %102 = load i32*, i32** %1, align 8
  %103 = call i32 @git_repository__configmap_lookup_cache_clear(i32* %102)
  store i32 -1, i32* %2, align 4
  %104 = load i32*, i32** %1, align 8
  %105 = load i32, i32* @GIT_CONFIGMAP_ABBREV, align 4
  %106 = call i32 @git_repository__configmap_lookup(i32* %2, i32* %104, i32 %105)
  %107 = call i32 @cl_git_pass(i32 %106)
  %108 = load i32, i32* %2, align 4
  %109 = call i32 @cl_assert_equal_i(i32 30, i32 %108)
  %110 = load i32*, i32** %1, align 8
  %111 = call i32 @git_repository_free(i32* %110)
  %112 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0))
  %113 = call i32 @git_repository_open(i32** %1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %114 = call i32 @cl_git_pass(i32 %113)
  %115 = load i32*, i32** %1, align 8
  %116 = call i32 @git_repository__configmap_lookup_cache_clear(i32* %115)
  store i32 -1, i32* %2, align 4
  %117 = load i32*, i32** %1, align 8
  %118 = load i32, i32* @GIT_CONFIGMAP_ABBREV, align 4
  %119 = call i32 @git_repository__configmap_lookup(i32* %2, i32* %117, i32 %118)
  %120 = call i32 @cl_git_pass(i32 %119)
  %121 = load i32, i32* %2, align 4
  %122 = call i32 @cl_assert_equal_i(i32 40, i32 %121)
  %123 = load i32*, i32** %1, align 8
  %124 = call i32 @git_repository_free(i32* %123)
  %125 = call i32 @git_repository_open(i32** %1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %126 = call i32 @cl_git_pass(i32 %125)
  %127 = load i32*, i32** %1, align 8
  %128 = call i32 @git_repository__configmap_lookup_cache_clear(i32* %127)
  store i32 -1, i32* %2, align 4
  %129 = load i32*, i32** %1, align 8
  %130 = load i32, i32* @GIT_CONFIGMAP_ABBREV, align 4
  %131 = call i32 @git_repository__configmap_lookup(i32* %2, i32* %129, i32 %130)
  %132 = call i32 @cl_git_pass(i32 %131)
  %133 = load i32, i32* %2, align 4
  %134 = call i32 @cl_assert_equal_i(i32 40, i32 %133)
  %135 = call i32 @p_unlink(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %136 = call i32 @cl_must_pass(i32 %135)
  %137 = call i32 @git_path_isfile(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %138 = icmp ne i32 %137, 0
  %139 = xor i1 %138, true
  %140 = zext i1 %139 to i32
  %141 = call i32 @cl_assert(i32 %140)
  %142 = call i32 @p_unlink(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %143 = call i32 @cl_must_pass(i32 %142)
  %144 = call i32 @git_path_isfile(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %145 = icmp ne i32 %144, 0
  %146 = xor i1 %145, true
  %147 = zext i1 %146 to i32
  %148 = call i32 @cl_assert(i32 %147)
  %149 = call i32 @p_unlink(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %150 = call i32 @cl_must_pass(i32 %149)
  %151 = call i32 @git_path_isfile(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %152 = icmp ne i32 %151, 0
  %153 = xor i1 %152, true
  %154 = zext i1 %153 to i32
  %155 = call i32 @cl_assert(i32 %154)
  %156 = call i32 @p_unlink(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  %157 = call i32 @cl_must_pass(i32 %156)
  %158 = call i32 @git_path_isfile(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  %159 = icmp ne i32 %158, 0
  %160 = xor i1 %159, true
  %161 = zext i1 %160 to i32
  %162 = call i32 @cl_assert(i32 %161)
  %163 = load i32*, i32** %1, align 8
  %164 = call i32 @git_repository__configmap_lookup_cache_clear(i32* %163)
  store i32 -1, i32* %2, align 4
  %165 = load i32*, i32** %1, align 8
  %166 = load i32, i32* @GIT_CONFIGMAP_ABBREV, align 4
  %167 = call i32 @git_repository__configmap_lookup(i32* %2, i32* %165, i32 %166)
  %168 = call i32 @cl_git_pass(i32 %167)
  %169 = load i32, i32* %2, align 4
  %170 = call i32 @cl_assert_equal_i(i32 40, i32 %169)
  %171 = load i32*, i32** %1, align 8
  %172 = call i32 @git_repository_free(i32* %171)
  %173 = call i32 @git_path_isfile(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %174 = icmp ne i32 %173, 0
  %175 = xor i1 %174, true
  %176 = zext i1 %175 to i32
  %177 = call i32 @cl_assert(i32 %176)
  %178 = call i32 @git_path_isfile(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  %179 = icmp ne i32 %178, 0
  %180 = xor i1 %179, true
  %181 = zext i1 %180 to i32
  %182 = call i32 @cl_assert(i32 %181)
  %183 = call i32 @git_repository_open(i32** %1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %184 = call i32 @cl_git_pass(i32 %183)
  %185 = load i32*, i32** %1, align 8
  %186 = call i32 @git_repository__configmap_lookup_cache_clear(i32* %185)
  store i32 -1, i32* %2, align 4
  %187 = load i32*, i32** %1, align 8
  %188 = load i32, i32* @GIT_CONFIGMAP_ABBREV, align 4
  %189 = call i32 @git_repository__configmap_lookup(i32* %2, i32* %187, i32 %188)
  %190 = call i32 @cl_git_pass(i32 %189)
  %191 = load i32, i32* %2, align 4
  %192 = call i32 @cl_assert_equal_i(i32 7, i32 %191)
  %193 = load i32*, i32** %1, align 8
  %194 = call i32 @git_repository_free(i32* %193)
  %195 = call i32 @git_path_exists(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %196 = icmp ne i32 %195, 0
  %197 = xor i1 %196, true
  %198 = zext i1 %197 to i32
  %199 = call i32 @cl_assert(i32 %198)
  %200 = call i32 @git_path_exists(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  %201 = icmp ne i32 %200, 0
  %202 = xor i1 %201, true
  %203 = zext i1 %202 to i32
  %204 = call i32 @cl_assert(i32 %203)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_libgit2_opts(i32, i32, i8*) #1

declare dso_local i32 @cl_must_pass(i32) #1

declare dso_local i32 @p_unlink(i8*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_path_isfile(i8*) #1

declare dso_local i32 @git_repository_open(i32**, i8*) #1

declare dso_local i32 @git_repository__configmap_lookup_cache_clear(i32*) #1

declare dso_local i32 @git_repository__configmap_lookup(i32*, i32*, i32) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_repository_free(i32*) #1

declare dso_local i32 @cl_sandbox_set_search_path_defaults(...) #1

declare dso_local i32 @p_mkdir(i8*, i32) #1

declare dso_local i32 @git_buf_joinpath(%struct.TYPE_3__*, i8*, i8*) #1

declare dso_local i32 @cl_git_rewritefile(i8*, i8*) #1

declare dso_local i32 @git_path_exists(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
