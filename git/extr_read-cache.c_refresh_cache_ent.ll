; ModuleID = '/home/carl/AnghaBench/git/extr_read-cache.c_refresh_cache_ent.c'
source_filename = "/home/carl/AnghaBench/git/extr_read-cache.c_refresh_cache_ent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32 }
%struct.cache_entry = type { i32, i64, i32, i32 }
%struct.stat = type { i32 }

@CE_MATCH_REFRESH = common dso_local global i32 0, align 4
@CE_MATCH_IGNORE_VALID = common dso_local global i32 0, align 4
@CE_MATCH_IGNORE_SKIP_WORKTREE = common dso_local global i32 0, align 4
@CE_MATCH_IGNORE_MISSING = common dso_local global i32 0, align 4
@CE_MATCH_IGNORE_FSMONITOR = common dso_local global i32 0, align 4
@CE_VALID = common dso_local global i32 0, align 4
@CE_FSMONITOR_VALID = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@assume_unchanged = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cache_entry* (%struct.index_state*, %struct.cache_entry*, i32, i32*, i32*)* @refresh_cache_ent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cache_entry* @refresh_cache_ent(%struct.index_state* %0, %struct.cache_entry* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.cache_entry*, align 8
  %7 = alloca %struct.index_state*, align 8
  %8 = alloca %struct.cache_entry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.stat, align 4
  %13 = alloca %struct.cache_entry*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.index_state* %0, %struct.index_state** %7, align 8
  store %struct.cache_entry* %1, %struct.cache_entry** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @CE_MATCH_REFRESH, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %15, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @CE_MATCH_IGNORE_VALID, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %16, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @CE_MATCH_IGNORE_SKIP_WORKTREE, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %17, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @CE_MATCH_IGNORE_MISSING, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %18, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @CE_MATCH_IGNORE_FSMONITOR, align 4
  %34 = and i32 %32, %33
  store i32 %34, i32* %19, align 4
  %35 = load i32, i32* %15, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %5
  %38 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %39 = call i64 @ce_uptodate(%struct.cache_entry* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37, %5
  %42 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  store %struct.cache_entry* %42, %struct.cache_entry** %6, align 8
  br label %228

43:                                               ; preds = %37
  %44 = load i32, i32* %19, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = load %struct.index_state*, %struct.index_state** %7, align 8
  %48 = call i32 @refresh_fsmonitor(%struct.index_state* %47)
  br label %49

49:                                               ; preds = %46, %43
  %50 = load i32, i32* %17, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %49
  %53 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %54 = call i64 @ce_skip_worktree(%struct.cache_entry* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %58 = call i32 @ce_mark_uptodate(%struct.cache_entry* %57)
  %59 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  store %struct.cache_entry* %59, %struct.cache_entry** %6, align 8
  br label %228

60:                                               ; preds = %52, %49
  %61 = load i32, i32* %16, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %74, label %63

63:                                               ; preds = %60
  %64 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %65 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @CE_VALID, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %72 = call i32 @ce_mark_uptodate(%struct.cache_entry* %71)
  %73 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  store %struct.cache_entry* %73, %struct.cache_entry** %6, align 8
  br label %228

74:                                               ; preds = %63, %60
  %75 = load i32, i32* %19, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %88, label %77

77:                                               ; preds = %74
  %78 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %79 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @CE_FSMONITOR_VALID, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %77
  %85 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %86 = call i32 @ce_mark_uptodate(%struct.cache_entry* %85)
  %87 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  store %struct.cache_entry* %87, %struct.cache_entry** %6, align 8
  br label %228

88:                                               ; preds = %77, %74
  %89 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %90 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %93 = call i32 @ce_namelen(%struct.cache_entry* %92)
  %94 = call i64 @has_symlink_leading_path(i32 %91, i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %108

96:                                               ; preds = %88
  %97 = load i32, i32* %18, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  store %struct.cache_entry* %100, %struct.cache_entry** %6, align 8
  br label %228

101:                                              ; preds = %96
  %102 = load i32*, i32** %10, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load i32, i32* @ENOENT, align 4
  %106 = load i32*, i32** %10, align 8
  store i32 %105, i32* %106, align 4
  br label %107

107:                                              ; preds = %104, %101
  store %struct.cache_entry* null, %struct.cache_entry** %6, align 8
  br label %228

108:                                              ; preds = %88
  %109 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %110 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call i64 @lstat(i32 %111, %struct.stat* %12)
  %113 = icmp slt i64 %112, 0
  br i1 %113, label %114, label %130

114:                                              ; preds = %108
  %115 = load i32, i32* %18, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %114
  %118 = load i32, i32* @errno, align 4
  %119 = load i32, i32* @ENOENT, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %117
  %122 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  store %struct.cache_entry* %122, %struct.cache_entry** %6, align 8
  br label %228

123:                                              ; preds = %117, %114
  %124 = load i32*, i32** %10, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = load i32, i32* @errno, align 4
  %128 = load i32*, i32** %10, align 8
  store i32 %127, i32* %128, align 4
  br label %129

129:                                              ; preds = %126, %123
  store %struct.cache_entry* null, %struct.cache_entry** %6, align 8
  br label %228

130:                                              ; preds = %108
  %131 = load %struct.index_state*, %struct.index_state** %7, align 8
  %132 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %133 = load i32, i32* %9, align 4
  %134 = call i32 @ie_match_stat(%struct.index_state* %131, %struct.cache_entry* %132, %struct.stat* %12, i32 %133)
  store i32 %134, i32* %14, align 4
  %135 = load i32*, i32** %11, align 8
  %136 = icmp ne i32* %135, null
  br i1 %136, label %137, label %140

137:                                              ; preds = %130
  %138 = load i32, i32* %14, align 4
  %139 = load i32*, i32** %11, align 8
  store i32 %138, i32* %139, align 4
  br label %140

140:                                              ; preds = %137, %130
  %141 = load i32, i32* %14, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %172, label %143

143:                                              ; preds = %140
  %144 = load i32, i32* %16, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %157

146:                                              ; preds = %143
  %147 = load i64, i64* @assume_unchanged, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %157

149:                                              ; preds = %146
  %150 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %151 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @CE_VALID, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %157, label %156

156:                                              ; preds = %149
  br label %171

157:                                              ; preds = %149, %146, %143
  %158 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %159 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @S_ISGITLINK(i32 %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %169, label %163

163:                                              ; preds = %157
  %164 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %165 = call i32 @ce_mark_uptodate(%struct.cache_entry* %164)
  %166 = load %struct.index_state*, %struct.index_state** %7, align 8
  %167 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %168 = call i32 @mark_fsmonitor_valid(%struct.index_state* %166, %struct.cache_entry* %167)
  br label %169

169:                                              ; preds = %163, %157
  %170 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  store %struct.cache_entry* %170, %struct.cache_entry** %6, align 8
  br label %228

171:                                              ; preds = %156
  br label %172

172:                                              ; preds = %171, %140
  %173 = load %struct.index_state*, %struct.index_state** %7, align 8
  %174 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %175 = load i32, i32* %9, align 4
  %176 = call i64 @ie_modified(%struct.index_state* %173, %struct.cache_entry* %174, %struct.stat* %12, i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %185

178:                                              ; preds = %172
  %179 = load i32*, i32** %10, align 8
  %180 = icmp ne i32* %179, null
  br i1 %180, label %181, label %184

181:                                              ; preds = %178
  %182 = load i32, i32* @EINVAL, align 4
  %183 = load i32*, i32** %10, align 8
  store i32 %182, i32* %183, align 4
  br label %184

184:                                              ; preds = %181, %178
  store %struct.cache_entry* null, %struct.cache_entry** %6, align 8
  br label %228

185:                                              ; preds = %172
  %186 = load %struct.index_state*, %struct.index_state** %7, align 8
  %187 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %188 = call i32 @ce_namelen(%struct.cache_entry* %187)
  %189 = call %struct.cache_entry* @make_empty_cache_entry(%struct.index_state* %186, i32 %188)
  store %struct.cache_entry* %189, %struct.cache_entry** %13, align 8
  %190 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %191 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %192 = call i32 @copy_cache_entry(%struct.cache_entry* %190, %struct.cache_entry* %191)
  %193 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %194 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %197 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %200 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = add nsw i64 %201, 1
  %203 = call i32 @memcpy(i32 %195, i32 %198, i64 %202)
  %204 = load %struct.index_state*, %struct.index_state** %7, align 8
  %205 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %206 = call i32 @fill_stat_cache_info(%struct.index_state* %204, %struct.cache_entry* %205, %struct.stat* %12)
  %207 = load i32, i32* %16, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %226, label %209

209:                                              ; preds = %185
  %210 = load i64, i64* @assume_unchanged, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %226

212:                                              ; preds = %209
  %213 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %214 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* @CE_VALID, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %226, label %219

219:                                              ; preds = %212
  %220 = load i32, i32* @CE_VALID, align 4
  %221 = xor i32 %220, -1
  %222 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %223 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = and i32 %224, %221
  store i32 %225, i32* %223, align 8
  br label %226

226:                                              ; preds = %219, %212, %209, %185
  %227 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  store %struct.cache_entry* %227, %struct.cache_entry** %6, align 8
  br label %228

228:                                              ; preds = %226, %184, %169, %129, %121, %107, %99, %84, %70, %56, %41
  %229 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  ret %struct.cache_entry* %229
}

declare dso_local i64 @ce_uptodate(%struct.cache_entry*) #1

declare dso_local i32 @refresh_fsmonitor(%struct.index_state*) #1

declare dso_local i64 @ce_skip_worktree(%struct.cache_entry*) #1

declare dso_local i32 @ce_mark_uptodate(%struct.cache_entry*) #1

declare dso_local i64 @has_symlink_leading_path(i32, i32) #1

declare dso_local i32 @ce_namelen(%struct.cache_entry*) #1

declare dso_local i64 @lstat(i32, %struct.stat*) #1

declare dso_local i32 @ie_match_stat(%struct.index_state*, %struct.cache_entry*, %struct.stat*, i32) #1

declare dso_local i32 @S_ISGITLINK(i32) #1

declare dso_local i32 @mark_fsmonitor_valid(%struct.index_state*, %struct.cache_entry*) #1

declare dso_local i64 @ie_modified(%struct.index_state*, %struct.cache_entry*, %struct.stat*, i32) #1

declare dso_local %struct.cache_entry* @make_empty_cache_entry(%struct.index_state*, i32) #1

declare dso_local i32 @copy_cache_entry(%struct.cache_entry*, %struct.cache_entry*) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @fill_stat_cache_info(%struct.index_state*, %struct.cache_entry*, %struct.stat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
