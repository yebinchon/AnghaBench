; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_blob.c_test_diff_blob__can_compare_against_null_blobs_with_patch.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_blob.c_test_diff_blob__can_compare_against_null_blobs_with_patch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64 }

@d = common dso_local global i32* null, align 8
@opts = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@GIT_DELTA_DELETED = common dso_local global i32 0, align 4
@GIT_DIFF_LINE_DELETION = common dso_local global i32 0, align 4
@GIT_DIFF_REVERSE = common dso_local global i32 0, align 4
@GIT_DELTA_ADDED = common dso_local global i32 0, align 4
@GIT_DIFF_LINE_ADDITION = common dso_local global i32 0, align 4
@alien = common dso_local global i32* null, align 8
@GIT_DIFF_FLAG_BINARY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_blob__can_compare_against_null_blobs_with_patch() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* null, i32** %1, align 8
  %7 = load i32*, i32** @d, align 8
  %8 = load i32*, i32** %1, align 8
  %9 = call i32 @git_patch_from_blobs(i32** %2, i32* %7, i32* null, i32* %8, i32* null, %struct.TYPE_13__* @opts)
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = load i32*, i32** %2, align 8
  %12 = icmp ne i32* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @cl_assert(i32 %13)
  %15 = load i32*, i32** %2, align 8
  %16 = call %struct.TYPE_12__* @git_patch_get_delta(i32* %15)
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %3, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %18 = icmp ne %struct.TYPE_12__* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @cl_assert(i32 %19)
  %21 = load i32, i32* @GIT_DELTA_DELETED, align 4
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @cl_assert_equal_i(i32 %21, i32 %24)
  %26 = load i32*, i32** @d, align 8
  %27 = call i32 @git_blob_id(i32* %26)
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %31 = call i32 @cl_assert_equal_oid(i32 %27, i32* %30)
  %32 = load i32*, i32** @d, align 8
  %33 = call i32 @git_blob_rawsize(i32* %32)
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @cl_assert_equal_sz(i32 %33, i32 %37)
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  %42 = call i32 @git_oid_is_zero(i32* %41)
  %43 = call i32 @cl_assert(i32 %42)
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @cl_assert_equal_sz(i32 0, i32 %47)
  %49 = load i32*, i32** %2, align 8
  %50 = call i64 @git_patch_num_hunks(i32* %49)
  %51 = trunc i64 %50 to i32
  %52 = call i32 @cl_assert_equal_i(i32 1, i32 %51)
  %53 = load i32*, i32** %2, align 8
  %54 = call i32 @git_patch_num_lines_in_hunk(i32* %53, i32 0)
  %55 = call i32 @cl_assert_equal_i(i32 14, i32 %54)
  %56 = load i32*, i32** %2, align 8
  %57 = call i32 @git_patch_num_lines_in_hunk(i32* %56, i32 0)
  store i32 %57, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %73, %0
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %76

62:                                               ; preds = %58
  %63 = load i32*, i32** %2, align 8
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @git_patch_get_line_in_hunk(%struct.TYPE_11__** %4, i32* %63, i32 0, i32 %64)
  %66 = call i32 @cl_git_pass(i32 %65)
  %67 = load i32, i32* @GIT_DIFF_LINE_DELETION, align 4
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = trunc i64 %70 to i32
  %72 = call i32 @cl_assert_equal_i(i32 %67, i32 %71)
  br label %73

73:                                               ; preds = %62
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %58

76:                                               ; preds = %58
  %77 = load i32*, i32** %2, align 8
  %78 = call i32 @git_patch_free(i32* %77)
  %79 = load i32, i32* @GIT_DIFF_REVERSE, align 4
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @opts, i32 0, i32 0), align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @opts, i32 0, i32 0), align 4
  %82 = load i32*, i32** @d, align 8
  %83 = load i32*, i32** %1, align 8
  %84 = call i32 @git_patch_from_blobs(i32** %2, i32* %82, i32* null, i32* %83, i32* null, %struct.TYPE_13__* @opts)
  %85 = call i32 @cl_git_pass(i32 %84)
  %86 = load i32*, i32** %2, align 8
  %87 = icmp ne i32* %86, null
  %88 = zext i1 %87 to i32
  %89 = call i32 @cl_assert(i32 %88)
  %90 = load i32*, i32** %2, align 8
  %91 = call %struct.TYPE_12__* @git_patch_get_delta(i32* %90)
  store %struct.TYPE_12__* %91, %struct.TYPE_12__** %3, align 8
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %93 = icmp ne %struct.TYPE_12__* %92, null
  %94 = zext i1 %93 to i32
  %95 = call i32 @cl_assert(i32 %94)
  %96 = load i32, i32* @GIT_DELTA_ADDED, align 4
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @cl_assert_equal_i(i32 %96, i32 %99)
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  %104 = call i32 @git_oid_is_zero(i32* %103)
  %105 = call i32 @cl_assert(i32 %104)
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @cl_assert_equal_sz(i32 0, i32 %109)
  %111 = load i32*, i32** @d, align 8
  %112 = call i32 @git_blob_id(i32* %111)
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 1
  %116 = call i32 @cl_assert_equal_oid(i32 %112, i32* %115)
  %117 = load i32*, i32** @d, align 8
  %118 = call i32 @git_blob_rawsize(i32* %117)
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @cl_assert_equal_sz(i32 %118, i32 %122)
  %124 = load i32*, i32** %2, align 8
  %125 = call i64 @git_patch_num_hunks(i32* %124)
  %126 = trunc i64 %125 to i32
  %127 = call i32 @cl_assert_equal_i(i32 1, i32 %126)
  %128 = load i32*, i32** %2, align 8
  %129 = call i32 @git_patch_num_lines_in_hunk(i32* %128, i32 0)
  %130 = call i32 @cl_assert_equal_i(i32 14, i32 %129)
  %131 = load i32*, i32** %2, align 8
  %132 = call i32 @git_patch_num_lines_in_hunk(i32* %131, i32 0)
  store i32 %132, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %133

133:                                              ; preds = %148, %76
  %134 = load i32, i32* %5, align 4
  %135 = load i32, i32* %6, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %151

137:                                              ; preds = %133
  %138 = load i32*, i32** %2, align 8
  %139 = load i32, i32* %5, align 4
  %140 = call i32 @git_patch_get_line_in_hunk(%struct.TYPE_11__** %4, i32* %138, i32 0, i32 %139)
  %141 = call i32 @cl_git_pass(i32 %140)
  %142 = load i32, i32* @GIT_DIFF_LINE_ADDITION, align 4
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = trunc i64 %145 to i32
  %147 = call i32 @cl_assert_equal_i(i32 %142, i32 %146)
  br label %148

148:                                              ; preds = %137
  %149 = load i32, i32* %5, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %5, align 4
  br label %133

151:                                              ; preds = %133
  %152 = load i32*, i32** %2, align 8
  %153 = call i32 @git_patch_free(i32* %152)
  %154 = load i32, i32* @GIT_DIFF_REVERSE, align 4
  %155 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @opts, i32 0, i32 0), align 4
  %156 = xor i32 %155, %154
  store i32 %156, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @opts, i32 0, i32 0), align 4
  %157 = load i32*, i32** @alien, align 8
  %158 = call i32 @git_patch_from_blobs(i32** %2, i32* %157, i32* null, i32* null, i32* null, %struct.TYPE_13__* @opts)
  %159 = call i32 @cl_git_pass(i32 %158)
  %160 = load i32*, i32** %2, align 8
  %161 = icmp ne i32* %160, null
  %162 = zext i1 %161 to i32
  %163 = call i32 @cl_assert(i32 %162)
  %164 = load i32*, i32** %2, align 8
  %165 = call %struct.TYPE_12__* @git_patch_get_delta(i32* %164)
  store %struct.TYPE_12__* %165, %struct.TYPE_12__** %3, align 8
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %167 = icmp ne %struct.TYPE_12__* %166, null
  %168 = zext i1 %167 to i32
  %169 = call i32 @cl_assert(i32 %168)
  %170 = load i32, i32* @GIT_DELTA_DELETED, align 4
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @cl_assert_equal_i(i32 %170, i32 %173)
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @GIT_DIFF_FLAG_BINARY, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  %181 = zext i1 %180 to i32
  %182 = call i32 @cl_assert(i32 %181)
  %183 = load i32*, i32** %2, align 8
  %184 = call i64 @git_patch_num_hunks(i32* %183)
  %185 = trunc i64 %184 to i32
  %186 = call i32 @cl_assert_equal_i(i32 0, i32 %185)
  %187 = load i32*, i32** %2, align 8
  %188 = call i32 @git_patch_free(i32* %187)
  %189 = load i32*, i32** @alien, align 8
  %190 = call i32 @git_patch_from_blobs(i32** %2, i32* null, i32* null, i32* %189, i32* null, %struct.TYPE_13__* @opts)
  %191 = call i32 @cl_git_pass(i32 %190)
  %192 = load i32*, i32** %2, align 8
  %193 = icmp ne i32* %192, null
  %194 = zext i1 %193 to i32
  %195 = call i32 @cl_assert(i32 %194)
  %196 = load i32*, i32** %2, align 8
  %197 = call %struct.TYPE_12__* @git_patch_get_delta(i32* %196)
  store %struct.TYPE_12__* %197, %struct.TYPE_12__** %3, align 8
  %198 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %199 = icmp ne %struct.TYPE_12__* %198, null
  %200 = zext i1 %199 to i32
  %201 = call i32 @cl_assert(i32 %200)
  %202 = load i32, i32* @GIT_DELTA_ADDED, align 4
  %203 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @cl_assert_equal_i(i32 %202, i32 %205)
  %207 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @GIT_DIFF_FLAG_BINARY, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  %213 = zext i1 %212 to i32
  %214 = call i32 @cl_assert(i32 %213)
  %215 = load i32*, i32** %2, align 8
  %216 = call i64 @git_patch_num_hunks(i32* %215)
  %217 = trunc i64 %216 to i32
  %218 = call i32 @cl_assert_equal_i(i32 0, i32 %217)
  %219 = load i32*, i32** %2, align 8
  %220 = call i32 @git_patch_free(i32* %219)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_patch_from_blobs(i32**, i32*, i32*, i32*, i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local %struct.TYPE_12__* @git_patch_get_delta(i32*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @cl_assert_equal_oid(i32, i32*) #1

declare dso_local i32 @git_blob_id(i32*) #1

declare dso_local i32 @cl_assert_equal_sz(i32, i32) #1

declare dso_local i32 @git_blob_rawsize(i32*) #1

declare dso_local i32 @git_oid_is_zero(i32*) #1

declare dso_local i64 @git_patch_num_hunks(i32*) #1

declare dso_local i32 @git_patch_num_lines_in_hunk(i32*, i32) #1

declare dso_local i32 @git_patch_get_line_in_hunk(%struct.TYPE_11__**, i32*, i32, i32) #1

declare dso_local i32 @git_patch_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
