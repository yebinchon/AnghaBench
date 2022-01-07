; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_patch.c_test_diff_patch__hunks_have_correct_line_numbers.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_patch.c_test_diff_patch__hunks_have_correct_line_numbers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i8* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i64, i64, i64, i64 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i64 }

@GIT_DIFF_OPTIONS_INIT = common dso_local global i32 0, align 4
@GIT_BUF_INIT = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@.str = private unnamed_addr constant [1388 x i8] c"The Song of Seven Cities\0A------------------------\0A\0AI WAS Lord of Cities very sumptuously builded.\0ASeven roaring Cities paid me tribute from afar.\0AIvory their outposts were--the guardrooms of them gilded,\0AAnd garrisoned with Amazons invincible in war.\0A\0AThis is some new text;\0ANot as good as the old text;\0ABut here it is.\0A\0ASo they warred and trafficked only yesterday, my Cities.\0ATo-day there is no mark or mound of where my Cities stood.\0AFor the River rose at midnight and it washed away my Cities.\0AThey are evened with Atlantis and the towns before the Flood.\0A\0ARain on rain-gorged channels raised the water-levels round them,\0AFreshet backed on freshet swelled and swept their world from sight,\0ATill the emboldened floods linked arms and, flashing forward, drowned them--\0ADrowned my Seven Cities and their peoples in one night!\0A\0ALow among the alders lie their derelict foundations,\0AThe beams wherein they trusted and the plinths whereon they built--\0AMy rulers and their treasure and their unborn populations,\0ADead, destroyed, aborted, and defiled with mud and silt!\0A\0AAnother replacement;\0ABreaking up the poem;\0AGenerating some hunks.\0A\0ATo the sound of trumpets shall their seed restore my Cities\0AWealthy and well-weaponed, that once more may I behold\0AAll the world go softly when it walks before my Cities,\0AAnd the horses and the chariots fleeing from them as of old!\0A\0A  -- Rudyard Kipling\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"renames\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"renames/songof7cities.txt\00", align 1
@GIT_DELTA_MODIFIED = common dso_local global i32 0, align 4
@GIT_DIFF_LINE_CONTEXT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [59 x i8] c"Ivory their outposts were--the guardrooms of them gilded,\0A\00", align 1
@GIT_DIFF_LINE_DELETION = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [61 x i8] c"All the world went softly when it walked before my Cities--\0A\00", align 1
@GIT_DIFF_LINE_ADDITION = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"This is some new text;\0A\00", align 1
@.str.6 = private unnamed_addr constant [60 x i8] c"My rulers and their treasure and their unborn populations,\0A\00", align 1
@.str.7 = private unnamed_addr constant [63 x i8] c"The Daughters of the Palace whom they cherished in my Cities,\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"Another replacement;\0A\00", align 1
@.str.9 = private unnamed_addr constant [62 x i8] c"And the horses and the chariots fleeing from them as of old!\0A\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"  -- Rudyard Kipling\0A\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"  -- Rudyard Kipling\00", align 1
@GIT_DIFF_LINE_DEL_EOFNL = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [30 x i8] c"\0A\\ No newline at end of file\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_patch__hunks_have_correct_line_numbers() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_16__, align 8
  %11 = alloca %struct.TYPE_16__, align 8
  %12 = alloca i8*, align 8
  %13 = load i32, i32* @GIT_DIFF_OPTIONS_INIT, align 4
  store i32 %13, i32* %3, align 4
  %14 = bitcast %struct.TYPE_16__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 bitcast (%struct.TYPE_16__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %15 = bitcast %struct.TYPE_16__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 bitcast (%struct.TYPE_16__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  store i8* getelementptr inbounds ([1388 x i8], [1388 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  %16 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 %16, i32* @g_repo, align 4
  %17 = call i32 @git_config_new(i32** %1)
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = load i32, i32* @g_repo, align 4
  %20 = load i32*, i32** %1, align 8
  %21 = call i32 @git_repository_set_config(i32 %19, i32* %20)
  %22 = load i32*, i32** %1, align 8
  %23 = call i32 @git_config_free(i32* %22)
  %24 = load i32, i32* @g_repo, align 4
  %25 = call i32 @git_repository_reinit_filesystem(i32 %24, i32 0)
  %26 = call i32 @git_futils_readbuffer(%struct.TYPE_16__* %10, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = load i8*, i8** %12, align 8
  %29 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %28)
  %30 = load i32, i32* @g_repo, align 4
  %31 = call i32 @git_repository_head_tree(i32** %2, i32 %30)
  %32 = call i32 @cl_git_pass(i32 %31)
  %33 = load i32, i32* @g_repo, align 4
  %34 = load i32*, i32** %2, align 8
  %35 = call i32 @git_diff_tree_to_workdir(i32** %4, i32 %33, i32* %34, i32* %3)
  %36 = call i32 @cl_git_pass(i32 %35)
  %37 = load i32*, i32** %4, align 8
  %38 = call i64 @git_diff_num_deltas(i32* %37)
  %39 = trunc i64 %38 to i32
  %40 = call i32 @cl_assert_equal_i(i32 1, i32 %39)
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @git_patch_from_diff(i32** %5, i32* %41, i32 0)
  %43 = call i32 @cl_git_pass(i32 %42)
  %44 = load i32*, i32** %5, align 8
  %45 = call %struct.TYPE_15__* @git_patch_get_delta(i32* %44)
  store %struct.TYPE_15__* %45, %struct.TYPE_15__** %6, align 8
  %46 = icmp ne %struct.TYPE_15__* %45, null
  %47 = zext i1 %46 to i32
  %48 = call i32 @cl_assert(i32 %47)
  %49 = load i32, i32* @GIT_DELTA_MODIFIED, align 4
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = call i32 @cl_assert_equal_i(i32 %49, i32 %53)
  %55 = load i32*, i32** %5, align 8
  %56 = call i64 @git_patch_num_hunks(i32* %55)
  %57 = trunc i64 %56 to i32
  %58 = call i32 @cl_assert_equal_i(i32 2, i32 %57)
  %59 = load i32*, i32** %5, align 8
  %60 = call i32 @git_patch_get_hunk(%struct.TYPE_14__** %7, i64* %9, i32* %59, i32 0)
  %61 = call i32 @cl_git_pass(i32 %60)
  %62 = load i64, i64* %9, align 8
  %63 = trunc i64 %62 to i32
  %64 = call i32 @cl_assert_equal_i(i32 18, i32 %63)
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = call i32 @cl_assert_equal_i(i32 6, i32 %68)
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = trunc i64 %72 to i32
  %74 = call i32 @cl_assert_equal_i(i32 15, i32 %73)
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = trunc i64 %77 to i32
  %79 = call i32 @cl_assert_equal_i(i32 6, i32 %78)
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = trunc i64 %82 to i32
  %84 = call i32 @cl_assert_equal_i(i32 9, i32 %83)
  %85 = load i32*, i32** %5, align 8
  %86 = call i64 @git_patch_num_lines_in_hunk(i32* %85, i32 0)
  %87 = trunc i64 %86 to i32
  %88 = call i32 @cl_assert_equal_i(i32 18, i32 %87)
  %89 = load i32*, i32** %5, align 8
  %90 = call i32 @git_patch_get_line_in_hunk(%struct.TYPE_13__** %8, i32* %89, i32 0, i32 0)
  %91 = call i32 @cl_git_pass(i32 %90)
  %92 = load i32, i32* @GIT_DIFF_LINE_CONTEXT, align 4
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 5
  %95 = load i64, i64* %94, align 8
  %96 = trunc i64 %95 to i32
  %97 = call i32 @cl_assert_equal_i(i32 %92, i32 %96)
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @git_buf_set(%struct.TYPE_16__* %11, i32 %100, i32 %103)
  %105 = call i32 @cl_git_pass(i32 %104)
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0), i8* %107)
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @cl_assert_equal_i(i32 6, i32 %111)
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @cl_assert_equal_i(i32 6, i32 %115)
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @cl_assert_equal_i(i32 -1, i32 %119)
  %121 = load i32*, i32** %5, align 8
  %122 = call i32 @git_patch_get_line_in_hunk(%struct.TYPE_13__** %8, i32* %121, i32 0, i32 3)
  %123 = call i32 @cl_git_pass(i32 %122)
  %124 = load i32, i32* @GIT_DIFF_LINE_DELETION, align 4
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 5
  %127 = load i64, i64* %126, align 8
  %128 = trunc i64 %127 to i32
  %129 = call i32 @cl_assert_equal_i(i32 %124, i32 %128)
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @git_buf_set(%struct.TYPE_16__* %11, i32 %132, i32 %135)
  %137 = call i32 @cl_git_pass(i32 %136)
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0), i8* %139)
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @cl_assert_equal_i(i32 9, i32 %143)
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @cl_assert_equal_i(i32 -1, i32 %147)
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @cl_assert_equal_i(i32 252, i32 %151)
  %153 = load i32*, i32** %5, align 8
  %154 = call i32 @git_patch_get_line_in_hunk(%struct.TYPE_13__** %8, i32* %153, i32 0, i32 12)
  %155 = call i32 @cl_git_pass(i32 %154)
  %156 = load i32, i32* @GIT_DIFF_LINE_ADDITION, align 4
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 5
  %159 = load i64, i64* %158, align 8
  %160 = trunc i64 %159 to i32
  %161 = call i32 @cl_assert_equal_i(i32 %156, i32 %160)
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @git_buf_set(%struct.TYPE_16__* %11, i32 %164, i32 %167)
  %169 = call i32 @cl_git_pass(i32 %168)
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %171 = load i8*, i8** %170, align 8
  %172 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i8* %171)
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @cl_assert_equal_i(i32 -1, i32 %175)
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @cl_assert_equal_i(i32 9, i32 %179)
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @cl_assert_equal_i(i32 252, i32 %183)
  %185 = load i32*, i32** %5, align 8
  %186 = call i32 @git_patch_get_hunk(%struct.TYPE_14__** %7, i64* %9, i32* %185, i32 1)
  %187 = call i32 @cl_git_pass(i32 %186)
  %188 = load i64, i64* %9, align 8
  %189 = trunc i64 %188 to i32
  %190 = call i32 @cl_assert_equal_i(i32 18, i32 %189)
  %191 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 3
  %193 = load i64, i64* %192, align 8
  %194 = trunc i64 %193 to i32
  %195 = call i32 @cl_assert_equal_i(i32 31, i32 %194)
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 2
  %198 = load i64, i64* %197, align 8
  %199 = trunc i64 %198 to i32
  %200 = call i32 @cl_assert_equal_i(i32 15, i32 %199)
  %201 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = trunc i64 %203 to i32
  %205 = call i32 @cl_assert_equal_i(i32 25, i32 %204)
  %206 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = trunc i64 %208 to i32
  %210 = call i32 @cl_assert_equal_i(i32 9, i32 %209)
  %211 = load i32*, i32** %5, align 8
  %212 = call i64 @git_patch_num_lines_in_hunk(i32* %211, i32 1)
  %213 = trunc i64 %212 to i32
  %214 = call i32 @cl_assert_equal_i(i32 18, i32 %213)
  %215 = load i32*, i32** %5, align 8
  %216 = call i32 @git_patch_get_line_in_hunk(%struct.TYPE_13__** %8, i32* %215, i32 1, i32 0)
  %217 = call i32 @cl_git_pass(i32 %216)
  %218 = load i32, i32* @GIT_DIFF_LINE_CONTEXT, align 4
  %219 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i32 0, i32 5
  %221 = load i64, i64* %220, align 8
  %222 = trunc i64 %221 to i32
  %223 = call i32 @cl_assert_equal_i(i32 %218, i32 %222)
  %224 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %225 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %224, i32 0, i32 4
  %226 = load i32, i32* %225, align 8
  %227 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %228 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %227, i32 0, i32 3
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @git_buf_set(%struct.TYPE_16__* %11, i32 %226, i32 %229)
  %231 = call i32 @cl_git_pass(i32 %230)
  %232 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %233 = load i8*, i8** %232, align 8
  %234 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.6, i64 0, i64 0), i8* %233)
  %235 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %236 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = call i32 @cl_assert_equal_i(i32 31, i32 %237)
  %239 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %240 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @cl_assert_equal_i(i32 25, i32 %241)
  %243 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %244 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 8
  %246 = call i32 @cl_assert_equal_i(i32 -1, i32 %245)
  %247 = load i32*, i32** %5, align 8
  %248 = call i32 @git_patch_get_line_in_hunk(%struct.TYPE_13__** %8, i32* %247, i32 1, i32 3)
  %249 = call i32 @cl_git_pass(i32 %248)
  %250 = load i32, i32* @GIT_DIFF_LINE_DELETION, align 4
  %251 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %252 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %251, i32 0, i32 5
  %253 = load i64, i64* %252, align 8
  %254 = trunc i64 %253 to i32
  %255 = call i32 @cl_assert_equal_i(i32 %250, i32 %254)
  %256 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %257 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %256, i32 0, i32 4
  %258 = load i32, i32* %257, align 8
  %259 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %260 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %259, i32 0, i32 3
  %261 = load i32, i32* %260, align 4
  %262 = call i32 @git_buf_set(%struct.TYPE_16__* %11, i32 %258, i32 %261)
  %263 = call i32 @cl_git_pass(i32 %262)
  %264 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %265 = load i8*, i8** %264, align 8
  %266 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.7, i64 0, i64 0), i8* %265)
  %267 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %268 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = call i32 @cl_assert_equal_i(i32 34, i32 %269)
  %271 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %272 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = call i32 @cl_assert_equal_i(i32 -1, i32 %273)
  %275 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %276 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 8
  %278 = call i32 @cl_assert_equal_i(i32 1468, i32 %277)
  %279 = load i32*, i32** %5, align 8
  %280 = call i32 @git_patch_get_line_in_hunk(%struct.TYPE_13__** %8, i32* %279, i32 1, i32 12)
  %281 = call i32 @cl_git_pass(i32 %280)
  %282 = load i32, i32* @GIT_DIFF_LINE_ADDITION, align 4
  %283 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %284 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %283, i32 0, i32 5
  %285 = load i64, i64* %284, align 8
  %286 = trunc i64 %285 to i32
  %287 = call i32 @cl_assert_equal_i(i32 %282, i32 %286)
  %288 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %289 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %288, i32 0, i32 4
  %290 = load i32, i32* %289, align 8
  %291 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %292 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %291, i32 0, i32 3
  %293 = load i32, i32* %292, align 4
  %294 = call i32 @git_buf_set(%struct.TYPE_16__* %11, i32 %290, i32 %293)
  %295 = call i32 @cl_git_pass(i32 %294)
  %296 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %297 = load i8*, i8** %296, align 8
  %298 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i8* %297)
  %299 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %300 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = call i32 @cl_assert_equal_i(i32 -1, i32 %301)
  %303 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %304 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = call i32 @cl_assert_equal_i(i32 28, i32 %305)
  %307 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %308 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %307, i32 0, i32 2
  %309 = load i32, i32* %308, align 8
  %310 = call i32 @cl_assert_equal_i(i32 1066, i32 %309)
  %311 = load i32*, i32** %5, align 8
  %312 = call i32 @git_patch_free(i32* %311)
  %313 = load i32*, i32** %4, align 8
  %314 = call i32 @git_diff_free(i32* %313)
  %315 = call i32 @git_buf_rtrim(%struct.TYPE_16__* %10)
  %316 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %317 = load i8*, i8** %316, align 8
  %318 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %317)
  %319 = load i32, i32* @g_repo, align 4
  %320 = load i32*, i32** %2, align 8
  %321 = call i32 @git_diff_tree_to_workdir(i32** %4, i32 %319, i32* %320, i32* %3)
  %322 = call i32 @cl_git_pass(i32 %321)
  %323 = load i32*, i32** %4, align 8
  %324 = call i64 @git_diff_num_deltas(i32* %323)
  %325 = trunc i64 %324 to i32
  %326 = call i32 @cl_assert_equal_i(i32 1, i32 %325)
  %327 = load i32*, i32** %4, align 8
  %328 = call i32 @git_patch_from_diff(i32** %5, i32* %327, i32 0)
  %329 = call i32 @cl_git_pass(i32 %328)
  %330 = load i32*, i32** %5, align 8
  %331 = call %struct.TYPE_15__* @git_patch_get_delta(i32* %330)
  store %struct.TYPE_15__* %331, %struct.TYPE_15__** %6, align 8
  %332 = icmp ne %struct.TYPE_15__* %331, null
  %333 = zext i1 %332 to i32
  %334 = call i32 @cl_assert(i32 %333)
  %335 = load i32, i32* @GIT_DELTA_MODIFIED, align 4
  %336 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %337 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %336, i32 0, i32 0
  %338 = load i64, i64* %337, align 8
  %339 = trunc i64 %338 to i32
  %340 = call i32 @cl_assert_equal_i(i32 %335, i32 %339)
  %341 = load i32*, i32** %5, align 8
  %342 = call i64 @git_patch_num_hunks(i32* %341)
  %343 = trunc i64 %342 to i32
  %344 = call i32 @cl_assert_equal_i(i32 1, i32 %343)
  %345 = load i32*, i32** %5, align 8
  %346 = call i32 @git_patch_get_hunk(%struct.TYPE_14__** %7, i64* %9, i32* %345, i32 0)
  %347 = call i32 @cl_git_pass(i32 %346)
  %348 = load i64, i64* %9, align 8
  %349 = trunc i64 %348 to i32
  %350 = call i32 @cl_assert_equal_i(i32 6, i32 %349)
  %351 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %352 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %351, i32 0, i32 3
  %353 = load i64, i64* %352, align 8
  %354 = trunc i64 %353 to i32
  %355 = call i32 @cl_assert_equal_i(i32 46, i32 %354)
  %356 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %357 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %356, i32 0, i32 2
  %358 = load i64, i64* %357, align 8
  %359 = trunc i64 %358 to i32
  %360 = call i32 @cl_assert_equal_i(i32 4, i32 %359)
  %361 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %362 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %361, i32 0, i32 1
  %363 = load i64, i64* %362, align 8
  %364 = trunc i64 %363 to i32
  %365 = call i32 @cl_assert_equal_i(i32 46, i32 %364)
  %366 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %367 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %366, i32 0, i32 0
  %368 = load i64, i64* %367, align 8
  %369 = trunc i64 %368 to i32
  %370 = call i32 @cl_assert_equal_i(i32 4, i32 %369)
  %371 = load i32*, i32** %5, align 8
  %372 = call i64 @git_patch_num_lines_in_hunk(i32* %371, i32 0)
  %373 = trunc i64 %372 to i32
  %374 = call i32 @cl_assert_equal_i(i32 6, i32 %373)
  %375 = load i32*, i32** %5, align 8
  %376 = call i32 @git_patch_get_line_in_hunk(%struct.TYPE_13__** %8, i32* %375, i32 0, i32 1)
  %377 = call i32 @cl_git_pass(i32 %376)
  %378 = load i32, i32* @GIT_DIFF_LINE_CONTEXT, align 4
  %379 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %380 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %379, i32 0, i32 5
  %381 = load i64, i64* %380, align 8
  %382 = trunc i64 %381 to i32
  %383 = call i32 @cl_assert_equal_i(i32 %378, i32 %382)
  %384 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %385 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %384, i32 0, i32 4
  %386 = load i32, i32* %385, align 8
  %387 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %388 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %387, i32 0, i32 3
  %389 = load i32, i32* %388, align 4
  %390 = call i32 @git_buf_set(%struct.TYPE_16__* %11, i32 %386, i32 %389)
  %391 = call i32 @cl_git_pass(i32 %390)
  %392 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %393 = load i8*, i8** %392, align 8
  %394 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.9, i64 0, i64 0), i8* %393)
  %395 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %396 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %395, i32 0, i32 0
  %397 = load i32, i32* %396, align 8
  %398 = call i32 @cl_assert_equal_i(i32 47, i32 %397)
  %399 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %400 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %399, i32 0, i32 1
  %401 = load i32, i32* %400, align 4
  %402 = call i32 @cl_assert_equal_i(i32 47, i32 %401)
  %403 = load i32*, i32** %5, align 8
  %404 = call i32 @git_patch_get_line_in_hunk(%struct.TYPE_13__** %8, i32* %403, i32 0, i32 2)
  %405 = call i32 @cl_git_pass(i32 %404)
  %406 = load i32, i32* @GIT_DIFF_LINE_CONTEXT, align 4
  %407 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %408 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %407, i32 0, i32 5
  %409 = load i64, i64* %408, align 8
  %410 = trunc i64 %409 to i32
  %411 = call i32 @cl_assert_equal_i(i32 %406, i32 %410)
  %412 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %413 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %412, i32 0, i32 4
  %414 = load i32, i32* %413, align 8
  %415 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %416 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %415, i32 0, i32 3
  %417 = load i32, i32* %416, align 4
  %418 = call i32 @git_buf_set(%struct.TYPE_16__* %11, i32 %414, i32 %417)
  %419 = call i32 @cl_git_pass(i32 %418)
  %420 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %421 = load i8*, i8** %420, align 8
  %422 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i8* %421)
  %423 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %424 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %423, i32 0, i32 0
  %425 = load i32, i32* %424, align 8
  %426 = call i32 @cl_assert_equal_i(i32 48, i32 %425)
  %427 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %428 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %427, i32 0, i32 1
  %429 = load i32, i32* %428, align 4
  %430 = call i32 @cl_assert_equal_i(i32 48, i32 %429)
  %431 = load i32*, i32** %5, align 8
  %432 = call i32 @git_patch_get_line_in_hunk(%struct.TYPE_13__** %8, i32* %431, i32 0, i32 3)
  %433 = call i32 @cl_git_pass(i32 %432)
  %434 = load i32, i32* @GIT_DIFF_LINE_DELETION, align 4
  %435 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %436 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %435, i32 0, i32 5
  %437 = load i64, i64* %436, align 8
  %438 = trunc i64 %437 to i32
  %439 = call i32 @cl_assert_equal_i(i32 %434, i32 %438)
  %440 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %441 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %440, i32 0, i32 4
  %442 = load i32, i32* %441, align 8
  %443 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %444 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %443, i32 0, i32 3
  %445 = load i32, i32* %444, align 4
  %446 = call i32 @git_buf_set(%struct.TYPE_16__* %11, i32 %442, i32 %445)
  %447 = call i32 @cl_git_pass(i32 %446)
  %448 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %449 = load i8*, i8** %448, align 8
  %450 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i8* %449)
  %451 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %452 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %451, i32 0, i32 0
  %453 = load i32, i32* %452, align 8
  %454 = call i32 @cl_assert_equal_i(i32 49, i32 %453)
  %455 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %456 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %455, i32 0, i32 1
  %457 = load i32, i32* %456, align 4
  %458 = call i32 @cl_assert_equal_i(i32 -1, i32 %457)
  %459 = load i32*, i32** %5, align 8
  %460 = call i32 @git_patch_get_line_in_hunk(%struct.TYPE_13__** %8, i32* %459, i32 0, i32 4)
  %461 = call i32 @cl_git_pass(i32 %460)
  %462 = load i32, i32* @GIT_DIFF_LINE_ADDITION, align 4
  %463 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %464 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %463, i32 0, i32 5
  %465 = load i64, i64* %464, align 8
  %466 = trunc i64 %465 to i32
  %467 = call i32 @cl_assert_equal_i(i32 %462, i32 %466)
  %468 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %469 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %468, i32 0, i32 4
  %470 = load i32, i32* %469, align 8
  %471 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %472 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %471, i32 0, i32 3
  %473 = load i32, i32* %472, align 4
  %474 = call i32 @git_buf_set(%struct.TYPE_16__* %11, i32 %470, i32 %473)
  %475 = call i32 @cl_git_pass(i32 %474)
  %476 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %477 = load i8*, i8** %476, align 8
  %478 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i8* %477)
  %479 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %480 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %479, i32 0, i32 0
  %481 = load i32, i32* %480, align 8
  %482 = call i32 @cl_assert_equal_i(i32 -1, i32 %481)
  %483 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %484 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %483, i32 0, i32 1
  %485 = load i32, i32* %484, align 4
  %486 = call i32 @cl_assert_equal_i(i32 49, i32 %485)
  %487 = load i32*, i32** %5, align 8
  %488 = call i32 @git_patch_get_line_in_hunk(%struct.TYPE_13__** %8, i32* %487, i32 0, i32 5)
  %489 = call i32 @cl_git_pass(i32 %488)
  %490 = load i32, i32* @GIT_DIFF_LINE_DEL_EOFNL, align 4
  %491 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %492 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %491, i32 0, i32 5
  %493 = load i64, i64* %492, align 8
  %494 = trunc i64 %493 to i32
  %495 = call i32 @cl_assert_equal_i(i32 %490, i32 %494)
  %496 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %497 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %496, i32 0, i32 4
  %498 = load i32, i32* %497, align 8
  %499 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %500 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %499, i32 0, i32 3
  %501 = load i32, i32* %500, align 4
  %502 = call i32 @git_buf_set(%struct.TYPE_16__* %11, i32 %498, i32 %501)
  %503 = call i32 @cl_git_pass(i32 %502)
  %504 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %505 = load i8*, i8** %504, align 8
  %506 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0), i8* %505)
  %507 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %508 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %507, i32 0, i32 0
  %509 = load i32, i32* %508, align 8
  %510 = call i32 @cl_assert_equal_i(i32 -1, i32 %509)
  %511 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %512 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %511, i32 0, i32 1
  %513 = load i32, i32* %512, align 4
  %514 = call i32 @cl_assert_equal_i(i32 49, i32 %513)
  %515 = load i32*, i32** %5, align 8
  %516 = call i32 @git_patch_free(i32* %515)
  %517 = load i32*, i32** %4, align 8
  %518 = call i32 @git_diff_free(i32* %517)
  %519 = call i32 @git_buf_dispose(%struct.TYPE_16__* %11)
  %520 = call i32 @git_buf_dispose(%struct.TYPE_16__* %10)
  %521 = load i32*, i32** %2, align 8
  %522 = call i32 @git_tree_free(i32* %521)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_sandbox_init(i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_config_new(i32**) #2

declare dso_local i32 @git_repository_set_config(i32, i32*) #2

declare dso_local i32 @git_config_free(i32*) #2

declare dso_local i32 @git_repository_reinit_filesystem(i32, i32) #2

declare dso_local i32 @git_futils_readbuffer(%struct.TYPE_16__*, i8*) #2

declare dso_local i32 @cl_git_rewritefile(i8*, i8*) #2

declare dso_local i32 @git_repository_head_tree(i32**, i32) #2

declare dso_local i32 @git_diff_tree_to_workdir(i32**, i32, i32*, i32*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i64 @git_diff_num_deltas(i32*) #2

declare dso_local i32 @git_patch_from_diff(i32**, i32*, i32) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local %struct.TYPE_15__* @git_patch_get_delta(i32*) #2

declare dso_local i64 @git_patch_num_hunks(i32*) #2

declare dso_local i32 @git_patch_get_hunk(%struct.TYPE_14__**, i64*, i32*, i32) #2

declare dso_local i64 @git_patch_num_lines_in_hunk(i32*, i32) #2

declare dso_local i32 @git_patch_get_line_in_hunk(%struct.TYPE_13__**, i32*, i32, i32) #2

declare dso_local i32 @git_buf_set(%struct.TYPE_16__*, i32, i32) #2

declare dso_local i32 @cl_assert_equal_s(i8*, i8*) #2

declare dso_local i32 @git_patch_free(i32*) #2

declare dso_local i32 @git_diff_free(i32*) #2

declare dso_local i32 @git_buf_rtrim(%struct.TYPE_16__*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_16__*) #2

declare dso_local i32 @git_tree_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
