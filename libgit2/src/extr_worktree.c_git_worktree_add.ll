; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_worktree.c_git_worktree_add.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_worktree.c_git_worktree_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_40__ = type { i8* }
%struct.TYPE_39__ = type { i32 }
%struct.TYPE_36__ = type { i64, i64 }
%struct.TYPE_37__ = type { i8* }
%struct.TYPE_38__ = type { %struct.TYPE_35__ }
%struct.TYPE_35__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_40__ zeroinitializer, align 8
@GIT_CHECKOUT_OPTIONS_INIT = common dso_local global %struct.TYPE_39__ zeroinitializer, align 4
@GIT_WORKTREE_ADD_OPTIONS_INIT = common dso_local global %struct.TYPE_36__ zeroinitializer, align 8
@GIT_WORKTREE_ADD_OPTIONS_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"git_worktree_add_options\00", align 1
@GIT_ERROR_WORKTREE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"reference is not a branch\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"reference is already checked out\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"worktrees\00", align 1
@GIT_MKDIR_EXCL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"locked\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"gitdir: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c".git\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"commondir\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"gitdir\00", align 1
@GIT_CHECKOUT_FORCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_worktree_add(i32** %0, %struct.TYPE_37__* %1, i8* %2, i8* %3, %struct.TYPE_36__* %4) #0 {
  %6 = alloca i32**, align 8
  %7 = alloca %struct.TYPE_37__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_36__*, align 8
  %11 = alloca %struct.TYPE_40__, align 8
  %12 = alloca %struct.TYPE_40__, align 8
  %13 = alloca %struct.TYPE_40__, align 8
  %14 = alloca %struct.TYPE_38__*, align 8
  %15 = alloca %struct.TYPE_38__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_37__*, align 8
  %18 = alloca %struct.TYPE_39__, align 4
  %19 = alloca %struct.TYPE_36__, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32** %0, i32*** %6, align 8
  store %struct.TYPE_37__* %1, %struct.TYPE_37__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.TYPE_36__* %4, %struct.TYPE_36__** %10, align 8
  %22 = bitcast %struct.TYPE_40__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 bitcast (%struct.TYPE_40__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %23 = bitcast %struct.TYPE_40__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.TYPE_40__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %24 = bitcast %struct.TYPE_40__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 bitcast (%struct.TYPE_40__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  store %struct.TYPE_38__* null, %struct.TYPE_38__** %14, align 8
  store %struct.TYPE_38__* null, %struct.TYPE_38__** %15, align 8
  store i32* null, i32** %16, align 8
  store %struct.TYPE_37__* null, %struct.TYPE_37__** %17, align 8
  %25 = bitcast %struct.TYPE_39__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 bitcast (%struct.TYPE_39__* @GIT_CHECKOUT_OPTIONS_INIT to i8*), i64 4, i1 false)
  %26 = bitcast %struct.TYPE_36__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 bitcast (%struct.TYPE_36__* @GIT_WORKTREE_ADD_OPTIONS_INIT to i8*), i64 16, i1 false)
  %27 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %28 = load i32, i32* @GIT_WORKTREE_ADD_OPTIONS_VERSION, align 4
  %29 = call i32 @GIT_ERROR_CHECK_VERSION(%struct.TYPE_36__* %27, i32 %28, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %31 = icmp ne %struct.TYPE_36__* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %5
  %33 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %34 = call i32 @memcpy(%struct.TYPE_36__* %19, %struct.TYPE_36__* %33, i32 16)
  br label %35

35:                                               ; preds = %32, %5
  %36 = load i32**, i32*** %6, align 8
  %37 = icmp ne i32** %36, null
  br i1 %37, label %38, label %47

38:                                               ; preds = %35
  %39 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %40 = icmp ne %struct.TYPE_37__* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load i8*, i8** %8, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i8*, i8** %9, align 8
  %46 = icmp ne i8* %45, null
  br label %47

47:                                               ; preds = %44, %41, %38, %35
  %48 = phi i1 [ false, %41 ], [ false, %38 ], [ false, %35 ], [ %46, %44 ]
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load i32**, i32*** %6, align 8
  store i32* null, i32** %51, align 8
  %52 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %19, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %72

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %19, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @git_reference_is_branch(i64 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* @GIT_ERROR_WORKTREE, align 4
  %62 = call i32 @git_error_set(i32 %61, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %20, align 4
  br label %247

63:                                               ; preds = %55
  %64 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %19, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i64 @git_branch_is_checked_out(i64 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load i32, i32* @GIT_ERROR_WORKTREE, align 4
  %70 = call i32 @git_error_set(i32 %69, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %20, align 4
  br label %247

71:                                               ; preds = %63
  br label %72

72:                                               ; preds = %71, %47
  %73 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @git_buf_joinpath(%struct.TYPE_40__* %11, i8* %75, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  store i32 %76, i32* %20, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  br label %247

79:                                               ; preds = %72
  %80 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %11, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @git_path_exists(i8* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %92, label %84

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %11, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = load i32, i32* @GIT_MKDIR_EXCL, align 4
  %88 = call i32 @git_futils_mkdir(i8* %86, i32 493, i32 %87)
  store i32 %88, i32* %20, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  br label %247

91:                                               ; preds = %84
  br label %92

92:                                               ; preds = %91, %79
  %93 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %11, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = load i8*, i8** %8, align 8
  %96 = call i32 @git_buf_joinpath(%struct.TYPE_40__* %11, i8* %94, i8* %95)
  store i32 %96, i32* %20, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  br label %247

99:                                               ; preds = %92
  %100 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %11, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = load i32, i32* @GIT_MKDIR_EXCL, align 4
  %103 = call i32 @git_futils_mkdir(i8* %101, i32 493, i32 %102)
  store i32 %103, i32* %20, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %99
  br label %247

106:                                              ; preds = %99
  %107 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %11, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 @git_path_prettify_dir(%struct.TYPE_40__* %11, i8* %108, i32* null)
  store i32 %109, i32* %20, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  br label %247

112:                                              ; preds = %106
  %113 = load i8*, i8** %9, align 8
  %114 = load i32, i32* @GIT_MKDIR_EXCL, align 4
  %115 = call i32 @git_futils_mkdir(i8* %113, i32 493, i32 %114)
  store i32 %115, i32* %20, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  br label %247

118:                                              ; preds = %112
  %119 = load i8*, i8** %9, align 8
  %120 = call i32 @git_path_prettify_dir(%struct.TYPE_40__* %12, i8* %119, i32* null)
  store i32 %120, i32* %20, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %118
  br label %247

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %19, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %144

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %11, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  %130 = call i32 @git_buf_joinpath(%struct.TYPE_40__* %13, i8* %129, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store i32 %130, i32* %20, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %127
  br label %247

133:                                              ; preds = %127
  %134 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %13, i32 0, i32 0
  %135 = load i8*, i8** %134, align 8
  %136 = call i32 @p_creat(i8* %135, i32 420)
  store i32 %136, i32* %21, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %133
  %139 = load i32, i32* %21, align 4
  store i32 %139, i32* %20, align 4
  br label %247

140:                                              ; preds = %133
  %141 = load i32, i32* %21, align 4
  %142 = call i32 @p_close(i32 %141)
  %143 = call i32 @git_buf_clear(%struct.TYPE_40__* %13)
  br label %144

144:                                              ; preds = %140, %123
  %145 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %11, i32 0, i32 0
  %146 = load i8*, i8** %145, align 8
  %147 = call i32 @git_buf_printf(%struct.TYPE_40__* %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* %146)
  store i32 %147, i32* %20, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %144
  br label %247

150:                                              ; preds = %144
  %151 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %12, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8
  %153 = call i32 @write_wtfile(i8* %152, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_40__* %13)
  store i32 %153, i32* %20, align 4
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %150
  br label %247

156:                                              ; preds = %150
  %157 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %157, i32 0, i32 0
  %159 = load i8*, i8** %158, align 8
  %160 = call i32 @git_path_prettify_dir(%struct.TYPE_40__* %13, i8* %159, i32* null)
  %161 = icmp slt i32 %160, 0
  %162 = zext i1 %161 to i32
  store i32 %162, i32* %20, align 4
  br i1 %161, label %171, label %163

163:                                              ; preds = %156
  %164 = call i32 @git_buf_putc(%struct.TYPE_40__* %13, i8 signext 10)
  store i32 %164, i32* %20, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %171, label %166

166:                                              ; preds = %163
  %167 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %11, i32 0, i32 0
  %168 = load i8*, i8** %167, align 8
  %169 = call i32 @write_wtfile(i8* %168, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), %struct.TYPE_40__* %13)
  store i32 %169, i32* %20, align 4
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %166, %163, %156
  br label %247

172:                                              ; preds = %166
  %173 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %12, i32 0, i32 0
  %174 = load i8*, i8** %173, align 8
  %175 = call i32 @git_buf_joinpath(%struct.TYPE_40__* %13, i8* %174, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  store i32 %175, i32* %20, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %185, label %177

177:                                              ; preds = %172
  %178 = call i32 @git_buf_putc(%struct.TYPE_40__* %13, i8 signext 10)
  store i32 %178, i32* %20, align 4
  %179 = icmp slt i32 %178, 0
  br i1 %179, label %185, label %180

180:                                              ; preds = %177
  %181 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %11, i32 0, i32 0
  %182 = load i8*, i8** %181, align 8
  %183 = call i32 @write_wtfile(i8* %182, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), %struct.TYPE_40__* %13)
  store i32 %183, i32* %20, align 4
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %180, %177, %172
  br label %247

186:                                              ; preds = %180
  %187 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %19, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %197

190:                                              ; preds = %186
  %191 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %19, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = call i32 @git_reference_dup(%struct.TYPE_38__** %14, i64 %192)
  store i32 %193, i32* %20, align 4
  %194 = icmp slt i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %190
  br label %247

196:                                              ; preds = %190
  br label %218

197:                                              ; preds = %186
  %198 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %199 = call i32 @git_repository_head(%struct.TYPE_38__** %15, %struct.TYPE_37__* %198)
  store i32 %199, i32* %20, align 4
  %200 = icmp slt i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %197
  br label %247

202:                                              ; preds = %197
  %203 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %204 = load %struct.TYPE_38__*, %struct.TYPE_38__** %15, align 8
  %205 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %205, i32 0, i32 0
  %207 = call i32 @git_commit_lookup(i32** %16, %struct.TYPE_37__* %203, i32* %206)
  store i32 %207, i32* %20, align 4
  %208 = icmp slt i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %202
  br label %247

210:                                              ; preds = %202
  %211 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %212 = load i8*, i8** %8, align 8
  %213 = load i32*, i32** %16, align 8
  %214 = call i32 @git_branch_create(%struct.TYPE_38__** %14, %struct.TYPE_37__* %211, i8* %212, i32* %213, i32 0)
  store i32 %214, i32* %20, align 4
  %215 = icmp slt i32 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %210
  br label %247

217:                                              ; preds = %210
  br label %218

218:                                              ; preds = %217, %196
  %219 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %11, i32 0, i32 0
  %220 = load i8*, i8** %219, align 8
  %221 = load %struct.TYPE_38__*, %struct.TYPE_38__** %14, align 8
  %222 = call i32 @git_reference_name(%struct.TYPE_38__* %221)
  %223 = call i32 @git_repository_create_head(i8* %220, i32 %222)
  store i32 %223, i32* %20, align 4
  %224 = icmp slt i32 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %218
  br label %247

226:                                              ; preds = %218
  %227 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %12, i32 0, i32 0
  %228 = load i8*, i8** %227, align 8
  %229 = call i32 @git_repository_open(%struct.TYPE_37__** %17, i8* %228)
  store i32 %229, i32* %20, align 4
  %230 = icmp slt i32 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %226
  br label %247

232:                                              ; preds = %226
  %233 = load i32, i32* @GIT_CHECKOUT_FORCE, align 4
  %234 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %18, i32 0, i32 0
  store i32 %233, i32* %234, align 4
  %235 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %236 = call i32 @git_checkout_head(%struct.TYPE_37__* %235, %struct.TYPE_39__* %18)
  store i32 %236, i32* %20, align 4
  %237 = icmp slt i32 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %232
  br label %247

239:                                              ; preds = %232
  %240 = load i32**, i32*** %6, align 8
  %241 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %242 = load i8*, i8** %8, align 8
  %243 = call i32 @git_worktree_lookup(i32** %240, %struct.TYPE_37__* %241, i8* %242)
  store i32 %243, i32* %20, align 4
  %244 = icmp slt i32 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %239
  br label %247

246:                                              ; preds = %239
  br label %247

247:                                              ; preds = %246, %245, %238, %231, %225, %216, %209, %201, %195, %185, %171, %155, %149, %138, %132, %122, %117, %111, %105, %98, %90, %78, %68, %60
  %248 = call i32 @git_buf_dispose(%struct.TYPE_40__* %11)
  %249 = call i32 @git_buf_dispose(%struct.TYPE_40__* %12)
  %250 = call i32 @git_buf_dispose(%struct.TYPE_40__* %13)
  %251 = load %struct.TYPE_38__*, %struct.TYPE_38__** %14, align 8
  %252 = call i32 @git_reference_free(%struct.TYPE_38__* %251)
  %253 = load %struct.TYPE_38__*, %struct.TYPE_38__** %15, align 8
  %254 = call i32 @git_reference_free(%struct.TYPE_38__* %253)
  %255 = load i32*, i32** %16, align 8
  %256 = call i32 @git_commit_free(i32* %255)
  %257 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %258 = call i32 @git_repository_free(%struct.TYPE_37__* %257)
  %259 = load i32, i32* %20, align 4
  ret i32 %259
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @GIT_ERROR_CHECK_VERSION(%struct.TYPE_36__*, i32, i8*) #2

declare dso_local i32 @memcpy(%struct.TYPE_36__*, %struct.TYPE_36__*, i32) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @git_reference_is_branch(i64) #2

declare dso_local i32 @git_error_set(i32, i8*) #2

declare dso_local i64 @git_branch_is_checked_out(i64) #2

declare dso_local i32 @git_buf_joinpath(%struct.TYPE_40__*, i8*, i8*) #2

declare dso_local i32 @git_path_exists(i8*) #2

declare dso_local i32 @git_futils_mkdir(i8*, i32, i32) #2

declare dso_local i32 @git_path_prettify_dir(%struct.TYPE_40__*, i8*, i32*) #2

declare dso_local i32 @p_creat(i8*, i32) #2

declare dso_local i32 @p_close(i32) #2

declare dso_local i32 @git_buf_clear(%struct.TYPE_40__*) #2

declare dso_local i32 @git_buf_printf(%struct.TYPE_40__*, i8*, i8*) #2

declare dso_local i32 @write_wtfile(i8*, i8*, %struct.TYPE_40__*) #2

declare dso_local i32 @git_buf_putc(%struct.TYPE_40__*, i8 signext) #2

declare dso_local i32 @git_reference_dup(%struct.TYPE_38__**, i64) #2

declare dso_local i32 @git_repository_head(%struct.TYPE_38__**, %struct.TYPE_37__*) #2

declare dso_local i32 @git_commit_lookup(i32**, %struct.TYPE_37__*, i32*) #2

declare dso_local i32 @git_branch_create(%struct.TYPE_38__**, %struct.TYPE_37__*, i8*, i32*, i32) #2

declare dso_local i32 @git_repository_create_head(i8*, i32) #2

declare dso_local i32 @git_reference_name(%struct.TYPE_38__*) #2

declare dso_local i32 @git_repository_open(%struct.TYPE_37__**, i8*) #2

declare dso_local i32 @git_checkout_head(%struct.TYPE_37__*, %struct.TYPE_39__*) #2

declare dso_local i32 @git_worktree_lookup(i32**, %struct.TYPE_37__*, i8*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_40__*) #2

declare dso_local i32 @git_reference_free(%struct.TYPE_38__*) #2

declare dso_local i32 @git_commit_free(i32*) #2

declare dso_local i32 @git_repository_free(%struct.TYPE_37__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
