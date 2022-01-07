; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_patch.c_check_single_patch_stats.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_patch.c_check_single_patch_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64, i32, i32 }

@GIT_DELTA_MODIFIED = common dso_local global i32 0, align 4
@GIT_BUF_INIT = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@GIT_DIFF_LINE_ADD_EOFNL = common dso_local global i64 0, align 8
@GIT_DIFF_LINE_DEL_EOFNL = common dso_local global i64 0, align 8
@GIT_DIFF_LINE_CONTEXT_EOFNL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i64, i64, i64, i64*, i8*)* @check_single_patch_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_single_patch_stats(i32* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64* %5, i8* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_10__*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.TYPE_11__, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca %struct.TYPE_9__*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64* %5, i64** %13, align 8
  store i8* %6, i8** %14, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = call i32 @git_diff_index_to_workdir(i32** %15, i32* %28, i32* null, i32* null)
  %30 = call i32 @cl_git_pass(i32 %29)
  %31 = load i32*, i32** %15, align 8
  %32 = call i64 @git_diff_num_deltas(i32* %31)
  %33 = trunc i64 %32 to i32
  %34 = call i32 @cl_assert_equal_i(i32 1, i32 %33)
  %35 = load i32*, i32** %15, align 8
  %36 = call i32 @git_patch_from_diff(i32** %16, i32* %35, i32 0)
  %37 = call i32 @cl_git_pass(i32 %36)
  %38 = load i32*, i32** %16, align 8
  %39 = call %struct.TYPE_10__* @git_patch_get_delta(i32* %38)
  store %struct.TYPE_10__* %39, %struct.TYPE_10__** %17, align 8
  %40 = icmp ne %struct.TYPE_10__* %39, null
  %41 = zext i1 %40 to i32
  %42 = call i32 @cl_assert(i32 %41)
  %43 = load i32, i32* @GIT_DELTA_MODIFIED, align 4
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = call i32 @cl_assert_equal_i(i32 %43, i32 %47)
  %49 = load i64, i64* %9, align 8
  %50 = trunc i64 %49 to i32
  %51 = load i32*, i32** %16, align 8
  %52 = call i64 @git_patch_num_hunks(i32* %51)
  %53 = trunc i64 %52 to i32
  %54 = call i32 @cl_assert_equal_i(i32 %50, i32 %53)
  %55 = load i32*, i32** %16, align 8
  %56 = call i32 @git_patch_line_stats(i64* %18, i64* %19, i64* %20, i32* %55)
  %57 = call i32 @cl_git_pass(i32 %56)
  %58 = load i64, i64* %12, align 8
  %59 = load i64, i64* %18, align 8
  %60 = call i32 @cl_assert_equal_sz(i64 %58, i64 %59)
  %61 = load i64, i64* %10, align 8
  %62 = load i64, i64* %19, align 8
  %63 = call i32 @cl_assert_equal_sz(i64 %61, i64 %62)
  %64 = load i64, i64* %11, align 8
  %65 = load i64, i64* %20, align 8
  %66 = call i32 @cl_assert_equal_sz(i64 %64, i64 %65)
  %67 = load i8*, i8** %14, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %84

69:                                               ; preds = %7
  %70 = bitcast %struct.TYPE_11__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %70, i8* align 4 bitcast (%struct.TYPE_11__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %71 = load i32*, i32** %16, align 8
  %72 = call i32 @git_patch_to_buf(%struct.TYPE_11__* %21, i32* %71)
  %73 = call i32 @cl_git_pass(i32 %72)
  %74 = load i8*, i8** %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @cl_assert_equal_s(i8* %74, i32 %76)
  %78 = call i32 @git_buf_dispose(%struct.TYPE_11__* %21)
  %79 = load i8*, i8** %14, align 8
  %80 = call i64 @strlen(i8* %79)
  %81 = load i32*, i32** %16, align 8
  %82 = call i64 @git_patch_size(i32* %81, i32 1, i32 1, i32 1)
  %83 = call i32 @cl_assert_equal_sz(i64 %80, i64 %82)
  br label %84

84:                                               ; preds = %69, %7
  %85 = load i64*, i64** %13, align 8
  %86 = icmp ne i64* %85, null
  br i1 %86, label %87, label %124

87:                                               ; preds = %84
  %88 = load i64*, i64** %13, align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %87
  %93 = load i64*, i64** %13, align 8
  %94 = getelementptr inbounds i64, i64* %93, i64 0
  %95 = load i64, i64* %94, align 8
  %96 = load i32*, i32** %16, align 8
  %97 = call i64 @git_patch_size(i32* %96, i32 0, i32 0, i32 0)
  %98 = call i32 @cl_assert_equal_sz(i64 %95, i64 %97)
  br label %99

99:                                               ; preds = %92, %87
  %100 = load i64*, i64** %13, align 8
  %101 = getelementptr inbounds i64, i64* %100, i64 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %99
  %105 = load i64*, i64** %13, align 8
  %106 = getelementptr inbounds i64, i64* %105, i64 1
  %107 = load i64, i64* %106, align 8
  %108 = load i32*, i32** %16, align 8
  %109 = call i64 @git_patch_size(i32* %108, i32 1, i32 0, i32 0)
  %110 = call i32 @cl_assert_equal_sz(i64 %107, i64 %109)
  br label %111

111:                                              ; preds = %104, %99
  %112 = load i64*, i64** %13, align 8
  %113 = getelementptr inbounds i64, i64* %112, i64 2
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %111
  %117 = load i64*, i64** %13, align 8
  %118 = getelementptr inbounds i64, i64* %117, i64 2
  %119 = load i64, i64* %118, align 8
  %120 = load i32*, i32** %16, align 8
  %121 = call i64 @git_patch_size(i32* %120, i32 1, i32 1, i32 0)
  %122 = call i32 @cl_assert_equal_sz(i64 %119, i64 %121)
  br label %123

123:                                              ; preds = %116, %111
  br label %124

124:                                              ; preds = %123, %84
  br label %125

125:                                              ; preds = %207, %124
  %126 = load i64, i64* %9, align 8
  %127 = icmp ugt i64 %126, 0
  br i1 %127, label %128, label %210

128:                                              ; preds = %125
  store i32 -1, i32* %25, align 4
  store i32 -1, i32* %26, align 4
  %129 = load i32*, i32** %16, align 8
  %130 = load i64, i64* %9, align 8
  %131 = sub i64 %130, 1
  %132 = call i64 @git_patch_num_lines_in_hunk(i32* %129, i64 %131)
  store i64 %132, i64* %23, align 8
  store i64 0, i64* %22, align 8
  br label %133

133:                                              ; preds = %203, %128
  %134 = load i64, i64* %22, align 8
  %135 = load i64, i64* %23, align 8
  %136 = icmp ult i64 %134, %135
  br i1 %136, label %137, label %206

137:                                              ; preds = %133
  store i32 1, i32* %27, align 4
  %138 = load i32*, i32** %16, align 8
  %139 = load i64, i64* %9, align 8
  %140 = sub i64 %139, 1
  %141 = load i64, i64* %22, align 8
  %142 = call i32 @git_patch_get_line_in_hunk(%struct.TYPE_9__** %24, i32* %138, i64 %140, i64 %141)
  %143 = call i32 @cl_git_pass(i32 %142)
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @GIT_DIFF_LINE_ADD_EOFNL, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %161, label %149

149:                                              ; preds = %137
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @GIT_DIFF_LINE_DEL_EOFNL, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %161, label %155

155:                                              ; preds = %149
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @GIT_DIFF_LINE_CONTEXT_EOFNL, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %155, %149, %137
  store i32 0, i32* %27, align 4
  br label %162

162:                                              ; preds = %161, %155
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = icmp sge i32 %165, 0
  br i1 %166, label %167, label %182

167:                                              ; preds = %162
  %168 = load i32, i32* %26, align 4
  %169 = icmp sge i32 %168, 0
  br i1 %169, label %170, label %178

170:                                              ; preds = %167
  %171 = load i32, i32* %27, align 4
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* %26, align 4
  %176 = sub nsw i32 %174, %175
  %177 = call i32 @cl_assert_equal_i(i32 %171, i32 %176)
  br label %178

178:                                              ; preds = %170, %167
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  store i32 %181, i32* %26, align 4
  br label %182

182:                                              ; preds = %178, %162
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 4
  %186 = icmp sge i32 %185, 0
  br i1 %186, label %187, label %202

187:                                              ; preds = %182
  %188 = load i32, i32* %25, align 4
  %189 = icmp sge i32 %188, 0
  br i1 %189, label %190, label %198

190:                                              ; preds = %187
  %191 = load i32, i32* %27, align 4
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* %25, align 4
  %196 = sub nsw i32 %194, %195
  %197 = call i32 @cl_assert_equal_i(i32 %191, i32 %196)
  br label %198

198:                                              ; preds = %190, %187
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 4
  store i32 %201, i32* %25, align 4
  br label %202

202:                                              ; preds = %198, %182
  br label %203

203:                                              ; preds = %202
  %204 = load i64, i64* %22, align 8
  %205 = add i64 %204, 1
  store i64 %205, i64* %22, align 8
  br label %133

206:                                              ; preds = %133
  br label %207

207:                                              ; preds = %206
  %208 = load i64, i64* %9, align 8
  %209 = add i64 %208, -1
  store i64 %209, i64* %9, align 8
  br label %125

210:                                              ; preds = %125
  %211 = load i32*, i32** %16, align 8
  %212 = call i32 @git_patch_free(i32* %211)
  %213 = load i32*, i32** %15, align 8
  %214 = call i32 @git_diff_free(i32* %213)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_diff_index_to_workdir(i32**, i32*, i32*, i32*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i64 @git_diff_num_deltas(i32*) #1

declare dso_local i32 @git_patch_from_diff(i32**, i32*, i32) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local %struct.TYPE_10__* @git_patch_get_delta(i32*) #1

declare dso_local i64 @git_patch_num_hunks(i32*) #1

declare dso_local i32 @git_patch_line_stats(i64*, i64*, i64*, i32*) #1

declare dso_local i32 @cl_assert_equal_sz(i64, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @git_patch_to_buf(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #1

declare dso_local i32 @git_buf_dispose(%struct.TYPE_11__*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @git_patch_size(i32*, i32, i32, i32) #1

declare dso_local i64 @git_patch_num_lines_in_hunk(i32*, i64) #1

declare dso_local i32 @git_patch_get_line_in_hunk(%struct.TYPE_9__**, i32*, i64, i64) #1

declare dso_local i32 @git_patch_free(i32*) #1

declare dso_local i32 @git_diff_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
