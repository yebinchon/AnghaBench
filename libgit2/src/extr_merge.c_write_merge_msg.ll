; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_merge.c_write_merge_msg.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_merge.c_write_merge_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_21__ = type { i32 }
%struct.merge_msg_entry = type { i32, %struct.TYPE_21__* }

@GIT_FILEBUF_INIT = common dso_local global i32 0, align 4
@GIT_BUF_INIT = common dso_local global %struct.TYPE_20__ zeroinitializer, align 4
@GIT_VECTOR_INIT = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@GIT_MERGE_MSG_FILE = common dso_local global i32 0, align 4
@GIT_FILEBUF_CREATE_LEADING_DIRS = common dso_local global i32 0, align 4
@GIT_MERGE_FILE_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Merge \00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"%scommit '%s'\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"; \00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@msg_entry_is_branch = common dso_local global i32 0, align 4
@msg_entry_is_tracking = common dso_local global i32 0, align 4
@msg_entry_is_tag = common dso_local global i32 0, align 4
@msg_entry_is_remote = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"; commit '%s'\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.TYPE_21__**, i64)* @write_merge_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_merge_msg(%struct.TYPE_19__* %0, %struct.TYPE_21__** %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_21__**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_20__, align 4
  %10 = alloca %struct.merge_msg_entry*, align 8
  %11 = alloca %struct.TYPE_18__, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store %struct.TYPE_21__** %1, %struct.TYPE_21__*** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load i32, i32* @GIT_FILEBUF_INIT, align 4
  store i32 %15, i32* %8, align 4
  %16 = bitcast %struct.TYPE_20__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 bitcast (%struct.TYPE_20__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %17 = bitcast %struct.TYPE_18__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 bitcast (%struct.TYPE_18__* @GIT_VECTOR_INIT to i8*), i64 8, i1 false)
  store i8 0, i8* %13, align 1
  store i32 0, i32* %14, align 4
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %19 = icmp ne %struct.TYPE_19__* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %6, align 8
  %22 = icmp ne %struct.TYPE_21__** %21, null
  br label %23

23:                                               ; preds = %20, %3
  %24 = phi i1 [ false, %3 ], [ %22, %20 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i64, i64* %7, align 8
  %28 = call %struct.merge_msg_entry* @git__calloc(i64 %27, i32 16)
  store %struct.merge_msg_entry* %28, %struct.merge_msg_entry** %10, align 8
  %29 = load %struct.merge_msg_entry*, %struct.merge_msg_entry** %10, align 8
  %30 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.merge_msg_entry* %29)
  %31 = load i64, i64* %7, align 8
  %32 = call i64 @git_vector_init(%struct.TYPE_18__* %11, i64 %31, i32* null)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %23
  %35 = load %struct.merge_msg_entry*, %struct.merge_msg_entry** %10, align 8
  %36 = call i32 @git__free(%struct.merge_msg_entry* %35)
  store i32 -1, i32* %4, align 4
  br label %227

37:                                               ; preds = %23
  store i64 0, i64* %12, align 8
  br label %38

38:                                               ; preds = %51, %37
  %39 = load i64, i64* %12, align 8
  %40 = load i64, i64* %7, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %38
  %43 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %6, align 8
  %44 = load i64, i64* %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %43, i64 %44
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %45, align 8
  %47 = load %struct.merge_msg_entry*, %struct.merge_msg_entry** %10, align 8
  %48 = load i64, i64* %12, align 8
  %49 = getelementptr inbounds %struct.merge_msg_entry, %struct.merge_msg_entry* %47, i64 %48
  %50 = getelementptr inbounds %struct.merge_msg_entry, %struct.merge_msg_entry* %49, i32 0, i32 1
  store %struct.TYPE_21__* %46, %struct.TYPE_21__** %50, align 8
  br label %51

51:                                               ; preds = %42
  %52 = load i64, i64* %12, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %12, align 8
  br label %38

54:                                               ; preds = %38
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @GIT_MERGE_MSG_FILE, align 4
  %59 = call i32 @git_buf_joinpath(%struct.TYPE_20__* %9, i32 %57, i32 %58)
  store i32 %59, i32* %14, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %71, label %61

61:                                               ; preds = %54
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @GIT_FILEBUF_CREATE_LEADING_DIRS, align 4
  %65 = load i32, i32* @GIT_MERGE_FILE_MODE, align 4
  %66 = call i32 @git_filebuf_open(i32* %8, i32 %63, i32 %64, i32 %65)
  store i32 %66, i32* %14, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %61
  %69 = call i32 @git_filebuf_write(i32* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  store i32 %69, i32* %14, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %68, %61, %54
  br label %216

72:                                               ; preds = %68
  store i64 0, i64* %12, align 8
  br label %73

73:                                               ; preds = %104, %72
  %74 = load i64, i64* %12, align 8
  %75 = load i64, i64* %7, align 8
  %76 = icmp ult i64 %74, %75
  br i1 %76, label %77, label %107

77:                                               ; preds = %73
  %78 = load %struct.merge_msg_entry*, %struct.merge_msg_entry** %10, align 8
  %79 = load i64, i64* %12, align 8
  %80 = getelementptr inbounds %struct.merge_msg_entry, %struct.merge_msg_entry* %78, i64 %79
  %81 = call i32 @msg_entry_is_oid(%struct.merge_msg_entry* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %77
  br label %107

84:                                               ; preds = %77
  %85 = load i64, i64* %12, align 8
  %86 = icmp ugt i64 %85, 0
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %89 = load %struct.merge_msg_entry*, %struct.merge_msg_entry** %10, align 8
  %90 = load i64, i64* %12, align 8
  %91 = getelementptr inbounds %struct.merge_msg_entry, %struct.merge_msg_entry* %89, i64 %90
  %92 = getelementptr inbounds %struct.merge_msg_entry, %struct.merge_msg_entry* %91, i32 0, i32 1
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 (i32*, i8*, ...) @git_filebuf_printf(i32* %8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %88, i32 %95)
  store i32 %96, i32* %14, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %84
  br label %216

99:                                               ; preds = %84
  %100 = load %struct.merge_msg_entry*, %struct.merge_msg_entry** %10, align 8
  %101 = load i64, i64* %12, align 8
  %102 = getelementptr inbounds %struct.merge_msg_entry, %struct.merge_msg_entry* %100, i64 %101
  %103 = getelementptr inbounds %struct.merge_msg_entry, %struct.merge_msg_entry* %102, i32 0, i32 0
  store i32 1, i32* %103, align 8
  br label %104

104:                                              ; preds = %99
  %105 = load i64, i64* %12, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %12, align 8
  br label %73

107:                                              ; preds = %83, %73
  %108 = load i64, i64* %12, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  store i8 59, i8* %13, align 1
  br label %111

111:                                              ; preds = %110, %107
  %112 = load %struct.merge_msg_entry*, %struct.merge_msg_entry** %10, align 8
  %113 = load i64, i64* %7, align 8
  %114 = load i32, i32* @msg_entry_is_branch, align 4
  %115 = call i32 @merge_msg_entries(%struct.TYPE_18__* %11, %struct.merge_msg_entry* %112, i64 %113, i32 %114)
  store i32 %115, i32* %14, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %121, label %117

117:                                              ; preds = %111
  %118 = load i8, i8* %13, align 1
  %119 = call i32 @merge_msg_write_branches(i32* %8, %struct.TYPE_18__* %11, i8 signext %118)
  store i32 %119, i32* %14, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %117, %111
  br label %216

122:                                              ; preds = %117
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %122
  store i8 44, i8* %13, align 1
  br label %127

127:                                              ; preds = %126, %122
  %128 = load %struct.merge_msg_entry*, %struct.merge_msg_entry** %10, align 8
  %129 = load i64, i64* %7, align 8
  %130 = load i32, i32* @msg_entry_is_tracking, align 4
  %131 = call i32 @merge_msg_entries(%struct.TYPE_18__* %11, %struct.merge_msg_entry* %128, i64 %129, i32 %130)
  store i32 %131, i32* %14, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %137, label %133

133:                                              ; preds = %127
  %134 = load i8, i8* %13, align 1
  %135 = call i32 @merge_msg_write_tracking(i32* %8, %struct.TYPE_18__* %11, i8 signext %134)
  store i32 %135, i32* %14, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %133, %127
  br label %216

138:                                              ; preds = %133
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %138
  store i8 44, i8* %13, align 1
  br label %143

143:                                              ; preds = %142, %138
  %144 = load %struct.merge_msg_entry*, %struct.merge_msg_entry** %10, align 8
  %145 = load i64, i64* %7, align 8
  %146 = load i32, i32* @msg_entry_is_tag, align 4
  %147 = call i32 @merge_msg_entries(%struct.TYPE_18__* %11, %struct.merge_msg_entry* %144, i64 %145, i32 %146)
  store i32 %147, i32* %14, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %153, label %149

149:                                              ; preds = %143
  %150 = load i8, i8* %13, align 1
  %151 = call i32 @merge_msg_write_tags(i32* %8, %struct.TYPE_18__* %11, i8 signext %150)
  store i32 %151, i32* %14, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %149, %143
  br label %216

154:                                              ; preds = %149
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %154
  store i8 44, i8* %13, align 1
  br label %159

159:                                              ; preds = %158, %154
  br label %160

160:                                              ; preds = %176, %159
  %161 = load %struct.merge_msg_entry*, %struct.merge_msg_entry** %10, align 8
  %162 = load i64, i64* %7, align 8
  %163 = load i32, i32* @msg_entry_is_remote, align 4
  %164 = call i32 @merge_msg_entries(%struct.TYPE_18__* %11, %struct.merge_msg_entry* %161, i64 %162, i32 %163)
  store i32 %164, i32* %14, align 4
  %165 = icmp sgt i32 %164, 0
  br i1 %165, label %166, label %177

166:                                              ; preds = %160
  %167 = load i8, i8* %13, align 1
  %168 = call i32 @merge_msg_write_remotes(i32* %8, %struct.TYPE_18__* %11, i8 signext %167)
  store i32 %168, i32* %14, align 4
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %166
  br label %216

171:                                              ; preds = %166
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %171
  store i8 44, i8* %13, align 1
  br label %176

176:                                              ; preds = %175, %171
  br label %160

177:                                              ; preds = %160
  %178 = load i32, i32* %14, align 4
  %179 = icmp slt i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %177
  br label %216

181:                                              ; preds = %177
  store i64 0, i64* %12, align 8
  br label %182

182:                                              ; preds = %205, %181
  %183 = load i64, i64* %12, align 8
  %184 = load i64, i64* %7, align 8
  %185 = icmp ult i64 %183, %184
  br i1 %185, label %186, label %208

186:                                              ; preds = %182
  %187 = load %struct.merge_msg_entry*, %struct.merge_msg_entry** %10, align 8
  %188 = load i64, i64* %12, align 8
  %189 = getelementptr inbounds %struct.merge_msg_entry, %struct.merge_msg_entry* %187, i64 %188
  %190 = call i64 @merge_msg_entry_written(%struct.merge_msg_entry* %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %186
  br label %205

193:                                              ; preds = %186
  %194 = load %struct.merge_msg_entry*, %struct.merge_msg_entry** %10, align 8
  %195 = load i64, i64* %12, align 8
  %196 = getelementptr inbounds %struct.merge_msg_entry, %struct.merge_msg_entry* %194, i64 %195
  %197 = getelementptr inbounds %struct.merge_msg_entry, %struct.merge_msg_entry* %196, i32 0, i32 1
  %198 = load %struct.TYPE_21__*, %struct.TYPE_21__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = call i32 (i32*, i8*, ...) @git_filebuf_printf(i32* %8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %200)
  store i32 %201, i32* %14, align 4
  %202 = icmp slt i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %193
  br label %216

204:                                              ; preds = %193
  br label %205

205:                                              ; preds = %204, %192
  %206 = load i64, i64* %12, align 8
  %207 = add i64 %206, 1
  store i64 %207, i64* %12, align 8
  br label %182

208:                                              ; preds = %182
  %209 = call i32 (i32*, i8*, ...) @git_filebuf_printf(i32* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i32 %209, i32* %14, align 4
  %210 = icmp slt i32 %209, 0
  br i1 %210, label %214, label %211

211:                                              ; preds = %208
  %212 = call i32 @git_filebuf_commit(i32* %8)
  store i32 %212, i32* %14, align 4
  %213 = icmp slt i32 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %211, %208
  br label %216

215:                                              ; preds = %211
  br label %216

216:                                              ; preds = %215, %214, %203, %180, %170, %153, %137, %121, %98, %71
  %217 = load i32, i32* %14, align 4
  %218 = icmp slt i32 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %216
  %220 = call i32 @git_filebuf_cleanup(i32* %8)
  br label %221

221:                                              ; preds = %219, %216
  %222 = call i32 @git_buf_dispose(%struct.TYPE_20__* %9)
  %223 = call i32 @git_vector_free(%struct.TYPE_18__* %11)
  %224 = load %struct.merge_msg_entry*, %struct.merge_msg_entry** %10, align 8
  %225 = call i32 @git__free(%struct.merge_msg_entry* %224)
  %226 = load i32, i32* %14, align 4
  store i32 %226, i32* %4, align 4
  br label %227

227:                                              ; preds = %221, %34
  %228 = load i32, i32* %4, align 4
  ret i32 %228
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local %struct.merge_msg_entry* @git__calloc(i64, i32) #2

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.merge_msg_entry*) #2

declare dso_local i64 @git_vector_init(%struct.TYPE_18__*, i64, i32*) #2

declare dso_local i32 @git__free(%struct.merge_msg_entry*) #2

declare dso_local i32 @git_buf_joinpath(%struct.TYPE_20__*, i32, i32) #2

declare dso_local i32 @git_filebuf_open(i32*, i32, i32, i32) #2

declare dso_local i32 @git_filebuf_write(i32*, i8*, i32) #2

declare dso_local i32 @msg_entry_is_oid(%struct.merge_msg_entry*) #2

declare dso_local i32 @git_filebuf_printf(i32*, i8*, ...) #2

declare dso_local i32 @merge_msg_entries(%struct.TYPE_18__*, %struct.merge_msg_entry*, i64, i32) #2

declare dso_local i32 @merge_msg_write_branches(i32*, %struct.TYPE_18__*, i8 signext) #2

declare dso_local i32 @merge_msg_write_tracking(i32*, %struct.TYPE_18__*, i8 signext) #2

declare dso_local i32 @merge_msg_write_tags(i32*, %struct.TYPE_18__*, i8 signext) #2

declare dso_local i32 @merge_msg_write_remotes(i32*, %struct.TYPE_18__*, i8 signext) #2

declare dso_local i64 @merge_msg_entry_written(%struct.merge_msg_entry*) #2

declare dso_local i32 @git_filebuf_commit(i32*) #2

declare dso_local i32 @git_filebuf_cleanup(i32*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_20__*) #2

declare dso_local i32 @git_vector_free(%struct.TYPE_18__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
