; ModuleID = '/home/carl/AnghaBench/libgit2/tests/object/extr_cache.c_test_object_cache__cache_counts.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/object/extr_cache.c_test_object_cache__cache_counts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i64, i64, i32* }

@GIT_OPT_SET_CACHE_OBJECT_LIMIT = common dso_local global i32 0, align 4
@object_type = common dso_local global i64 0, align 8
@cache_limit = common dso_local global i64 0, align 8
@g_repo = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"testrepo.git\00", align 1
@g_data = common dso_local global %struct.TYPE_7__* null, align 8
@GIT_OBJECT_ANY = common dso_local global i32 0, align 4
@GIT_OBJECT_BLOB = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_object_cache__cache_counts() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  %10 = load i32, i32* @GIT_OPT_SET_CACHE_OBJECT_LIMIT, align 4
  %11 = load i64, i64* @object_type, align 8
  %12 = load i64, i64* @cache_limit, align 8
  %13 = call i32 @git_libgit2_opts(i32 %10, i64 %11, i64 %12)
  %14 = call i32 @cl_fixture(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @git_repository_open(%struct.TYPE_6__** @g_repo, i32 %14)
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** @g_repo, align 8
  %18 = call i32 @git_repository_odb(i32** %7, %struct.TYPE_6__* %17)
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** @g_repo, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = call i64 @git_cache_size(i32* %21)
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %24

24:                                               ; preds = %137, %0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** @g_data, align 8
  %26 = load i32, i32* %1, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %140

32:                                               ; preds = %24
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** @g_repo, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = call i64 @git_cache_size(i32* %34)
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %8, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** @g_data, align 8
  %38 = load i32, i32* %1, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @git_oid_fromstr(i32* %4, i32* %42)
  %44 = call i32 @cl_git_pass(i32 %43)
  %45 = load i32, i32* %1, align 4
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %65

48:                                               ; preds = %32
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 @git_odb_read(i32** %5, i32* %49, i32* %4)
  %51 = call i32 @cl_git_pass(i32 %50)
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** @g_data, align 8
  %53 = load i32, i32* %1, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i32*, i32** %5, align 8
  %59 = call i64 @git_odb_object_type(i32* %58)
  %60 = icmp eq i64 %57, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @cl_assert(i32 %61)
  %63 = load i32*, i32** %5, align 8
  %64 = call i32 @git_odb_object_free(i32* %63)
  br label %83

65:                                               ; preds = %32
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** @g_repo, align 8
  %67 = load i32, i32* @GIT_OBJECT_ANY, align 4
  %68 = call i32 @git_object_lookup(i32** %6, %struct.TYPE_6__* %66, i32* %4, i32 %67)
  %69 = call i32 @cl_git_pass(i32 %68)
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** @g_data, align 8
  %71 = load i32, i32* %1, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i32*, i32** %6, align 8
  %77 = call i64 @git_object_type(i32* %76)
  %78 = icmp eq i64 %75, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 @cl_assert(i32 %79)
  %81 = load i32*, i32** %6, align 8
  %82 = call i32 @git_object_free(i32* %81)
  br label %83

83:                                               ; preds = %65, %48
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** @g_data, align 8
  %85 = load i32, i32* %1, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @object_type, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %101

92:                                               ; preds = %83
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** @g_data, align 8
  %94 = load i32, i32* %1, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @cache_limit, align 8
  %100 = icmp sge i64 %98, %99
  br i1 %100, label %119, label %101

101:                                              ; preds = %92, %83
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** @g_data, align 8
  %103 = load i32, i32* %1, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @object_type, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %126

110:                                              ; preds = %101
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** @g_data, align 8
  %112 = load i32, i32* %1, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @GIT_OBJECT_BLOB, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %126

119:                                              ; preds = %110, %92
  %120 = load i32, i32* %8, align 4
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** @g_repo, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = call i64 @git_cache_size(i32* %122)
  %124 = trunc i64 %123 to i32
  %125 = call i32 @cl_assert_equal_i(i32 %120, i32 %124)
  br label %136

126:                                              ; preds = %110, %101
  %127 = load i32, i32* %8, align 4
  %128 = add nsw i32 %127, 1
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** @g_repo, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = call i64 @git_cache_size(i32* %130)
  %132 = trunc i64 %131 to i32
  %133 = call i32 @cl_assert_equal_i(i32 %128, i32 %132)
  %134 = load i32, i32* %3, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %3, align 4
  br label %136

136:                                              ; preds = %126, %119
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %1, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %1, align 4
  br label %24

140:                                              ; preds = %24
  %141 = load i32, i32* %3, align 4
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** @g_repo, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = call i64 @git_cache_size(i32* %143)
  %145 = trunc i64 %144 to i32
  %146 = load i32, i32* %2, align 4
  %147 = sub nsw i32 %145, %146
  %148 = call i32 @cl_assert_equal_i(i32 %141, i32 %147)
  store i32 0, i32* %1, align 4
  br label %149

149:                                              ; preds = %193, %140
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** @g_data, align 8
  %151 = load i32, i32* %1, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 2
  %155 = load i32*, i32** %154, align 8
  %156 = icmp ne i32* %155, null
  br i1 %156, label %157, label %196

157:                                              ; preds = %149
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** @g_repo, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  %160 = call i64 @git_cache_size(i32* %159)
  %161 = trunc i64 %160 to i32
  store i32 %161, i32* %9, align 4
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** @g_data, align 8
  %163 = load i32, i32* %1, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 2
  %167 = load i32*, i32** %166, align 8
  %168 = call i32 @git_oid_fromstr(i32* %4, i32* %167)
  %169 = call i32 @cl_git_pass(i32 %168)
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** @g_repo, align 8
  %171 = load i32, i32* @GIT_OBJECT_ANY, align 4
  %172 = call i32 @git_object_lookup(i32** %6, %struct.TYPE_6__* %170, i32* %4, i32 %171)
  %173 = call i32 @cl_git_pass(i32 %172)
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** @g_data, align 8
  %175 = load i32, i32* %1, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i32*, i32** %6, align 8
  %181 = call i64 @git_object_type(i32* %180)
  %182 = icmp eq i64 %179, %181
  %183 = zext i1 %182 to i32
  %184 = call i32 @cl_assert(i32 %183)
  %185 = load i32*, i32** %6, align 8
  %186 = call i32 @git_object_free(i32* %185)
  %187 = load i32, i32* %9, align 4
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** @g_repo, align 8
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 0
  %190 = call i64 @git_cache_size(i32* %189)
  %191 = trunc i64 %190 to i32
  %192 = call i32 @cl_assert_equal_i(i32 %187, i32 %191)
  br label %193

193:                                              ; preds = %157
  %194 = load i32, i32* %1, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %1, align 4
  br label %149

196:                                              ; preds = %149
  %197 = load i32*, i32** %7, align 8
  %198 = call i32 @git_odb_free(i32* %197)
  ret void
}

declare dso_local i32 @git_libgit2_opts(i32, i64, i64) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_open(%struct.TYPE_6__**, i32) #1

declare dso_local i32 @cl_fixture(i8*) #1

declare dso_local i32 @git_repository_odb(i32**, %struct.TYPE_6__*) #1

declare dso_local i64 @git_cache_size(i32*) #1

declare dso_local i32 @git_oid_fromstr(i32*, i32*) #1

declare dso_local i32 @git_odb_read(i32**, i32*, i32*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i64 @git_odb_object_type(i32*) #1

declare dso_local i32 @git_odb_object_free(i32*) #1

declare dso_local i32 @git_object_lookup(i32**, %struct.TYPE_6__*, i32*, i32) #1

declare dso_local i64 @git_object_type(i32*) #1

declare dso_local i32 @git_object_free(i32*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_odb_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
