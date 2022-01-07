; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_remote.c_update_tips_for_spec.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_remote.c_update_tips_for_spec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_36__ = type { i32 }
%struct.TYPE_34__ = type { i32 }
%struct.TYPE_33__ = type { i64 (i32, i32*, i32*, i32)*, i32 }
%struct.TYPE_35__ = type { i64 }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_32__ = type { i32, i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_36__ zeroinitializer, align 4
@GIT_REFSPEC_TAGS = common dso_local global i32 0, align 4
@GIT_REMOTE_DOWNLOAD_TAGS_NONE = common dso_local global i64 0, align 8
@GIT_REMOTE_DOWNLOAD_TAGS_AUTO = common dso_local global i64 0, align 8
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@GIT_OID_RAWSZ = common dso_local global i32 0, align 4
@GIT_EEXISTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_34__*, %struct.TYPE_33__*, i32, i64, %struct.TYPE_35__*, %struct.TYPE_31__*, i8*)* @update_tips_for_spec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_tips_for_spec(%struct.TYPE_34__* %0, %struct.TYPE_33__* %1, i32 %2, i64 %3, %struct.TYPE_35__* %4, %struct.TYPE_31__* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_34__*, align 8
  %10 = alloca %struct.TYPE_33__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_35__*, align 8
  %14 = alloca %struct.TYPE_31__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_36__, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca %struct.TYPE_32__*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca %struct.TYPE_35__, align 8
  %25 = alloca %struct.TYPE_31__, align 4
  store %struct.TYPE_34__* %0, %struct.TYPE_34__** %9, align 8
  store %struct.TYPE_33__* %1, %struct.TYPE_33__** %10, align 8
  store i32 %2, i32* %11, align 4
  store i64 %3, i64* %12, align 8
  store %struct.TYPE_35__* %4, %struct.TYPE_35__** %13, align 8
  store %struct.TYPE_31__* %5, %struct.TYPE_31__** %14, align 8
  store i8* %6, i8** %15, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %18, align 4
  %26 = bitcast %struct.TYPE_36__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 bitcast (%struct.TYPE_36__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %27 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %28 = call i32 @assert(%struct.TYPE_34__* %27)
  %29 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @git_repository_odb__weakptr(i32** %21, i32 %31)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %7
  store i32 -1, i32* %8, align 4
  br label %243

35:                                               ; preds = %7
  %36 = load i32, i32* @GIT_REFSPEC_TAGS, align 4
  %37 = call i64 @git_refspec__parse(%struct.TYPE_35__* %24, i32 %36, i32 1)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 -1, i32* %8, align 4
  br label %243

40:                                               ; preds = %35
  %41 = call i64 @git_vector_init(%struct.TYPE_31__* %25, i32 16, i32* null)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 -1, i32* %8, align 4
  br label %243

44:                                               ; preds = %40
  br label %45

45:                                               ; preds = %223, %44
  %46 = load i32, i32* %18, align 4
  %47 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ult i32 %46, %49
  br i1 %50, label %51, label %226

51:                                               ; preds = %45
  %52 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %53 = load i32, i32* %18, align 4
  %54 = call %struct.TYPE_32__* @git_vector_get(%struct.TYPE_31__* %52, i32 %53)
  store %struct.TYPE_32__* %54, %struct.TYPE_32__** %22, align 8
  store i32 0, i32* %17, align 4
  %55 = call i32 @git_buf_clear(%struct.TYPE_36__* %19)
  %56 = load %struct.TYPE_32__*, %struct.TYPE_32__** %22, align 8
  %57 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @git_reference_is_valid_name(i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %51
  br label %223

62:                                               ; preds = %51
  %63 = load %struct.TYPE_32__*, %struct.TYPE_32__** %22, align 8
  %64 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @git_refspec_src_matches(%struct.TYPE_35__* %24, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %87

68:                                               ; preds = %62
  %69 = load i64, i64* %12, align 8
  %70 = load i64, i64* @GIT_REMOTE_DOWNLOAD_TAGS_NONE, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %86

72:                                               ; preds = %68
  %73 = load i64, i64* %12, align 8
  %74 = load i64, i64* @GIT_REMOTE_DOWNLOAD_TAGS_AUTO, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  store i32 1, i32* %17, align 4
  br label %77

77:                                               ; preds = %76, %72
  %78 = call i32 @git_buf_clear(%struct.TYPE_36__* %19)
  %79 = load %struct.TYPE_32__*, %struct.TYPE_32__** %22, align 8
  %80 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @git_buf_puts(%struct.TYPE_36__* %19, i32 %81)
  %83 = icmp slt i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  br label %239

85:                                               ; preds = %77
  br label %86

86:                                               ; preds = %85, %68
  br label %87

87:                                               ; preds = %86, %62
  %88 = load i32, i32* %17, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %118, label %90

90:                                               ; preds = %87
  %91 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %92 = load %struct.TYPE_32__*, %struct.TYPE_32__** %22, align 8
  %93 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @git_refspec_src_matches(%struct.TYPE_35__* %91, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %118

97:                                               ; preds = %90
  %98 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %99 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %97
  %103 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %104 = load %struct.TYPE_32__*, %struct.TYPE_32__** %22, align 8
  %105 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i64 @git_refspec_transform(%struct.TYPE_36__* %19, %struct.TYPE_35__* %103, i32 %106)
  %108 = icmp slt i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %102
  br label %239

110:                                              ; preds = %102
  br label %117

111:                                              ; preds = %97
  %112 = load %struct.TYPE_32__*, %struct.TYPE_32__** %22, align 8
  %113 = call i32 @git_vector_insert(%struct.TYPE_31__* %25, %struct.TYPE_32__* %112)
  store i32 %113, i32* %16, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %111
  br label %239

116:                                              ; preds = %111
  br label %223

117:                                              ; preds = %110
  br label %118

118:                                              ; preds = %117, %90, %87
  %119 = call i64 @git_buf_len(%struct.TYPE_36__* %19)
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  br label %223

122:                                              ; preds = %118
  %123 = load i32, i32* %17, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %122
  %126 = load i32*, i32** %21, align 8
  %127 = load %struct.TYPE_32__*, %struct.TYPE_32__** %22, align 8
  %128 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %127, i32 0, i32 0
  %129 = call i32 @git_odb_exists(i32* %126, i32* %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %125
  br label %223

132:                                              ; preds = %125, %122
  %133 = load i32, i32* %17, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %140, label %135

135:                                              ; preds = %132
  %136 = load %struct.TYPE_32__*, %struct.TYPE_32__** %22, align 8
  %137 = call i32 @git_vector_insert(%struct.TYPE_31__* %25, %struct.TYPE_32__* %136)
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %135
  br label %239

140:                                              ; preds = %135, %132
  %141 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %19, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @git_reference_name_to_id(i32* %20, i32 %143, i32 %145)
  store i32 %146, i32* %16, align 4
  %147 = load i32, i32* %16, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %140
  %150 = load i32, i32* %16, align 4
  %151 = load i32, i32* @GIT_ENOTFOUND, align 4
  %152 = icmp ne i32 %150, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %149
  br label %239

154:                                              ; preds = %149, %140
  %155 = load i32, i32* %16, align 4
  %156 = load i32, i32* @GIT_ENOTFOUND, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %169

158:                                              ; preds = %154
  %159 = load i32, i32* @GIT_OID_RAWSZ, align 4
  %160 = call i32 @memset(i32* %20, i32 0, i32 %159)
  %161 = load i32, i32* %17, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %158
  %164 = load %struct.TYPE_32__*, %struct.TYPE_32__** %22, align 8
  %165 = call i32 @git_vector_insert(%struct.TYPE_31__* %25, %struct.TYPE_32__* %164)
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %163
  br label %239

168:                                              ; preds = %163, %158
  br label %169

169:                                              ; preds = %168, %154
  %170 = load %struct.TYPE_32__*, %struct.TYPE_32__** %22, align 8
  %171 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %170, i32 0, i32 0
  %172 = call i32 @git_oid__cmp(i32* %20, i32* %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %175, label %174

174:                                              ; preds = %169
  br label %223

175:                                              ; preds = %169
  %176 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %177 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %19, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.TYPE_32__*, %struct.TYPE_32__** %22, align 8
  %182 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %181, i32 0, i32 0
  %183 = load i32, i32* %17, align 4
  %184 = icmp ne i32 %183, 0
  %185 = xor i1 %184, true
  %186 = zext i1 %185 to i32
  %187 = load i8*, i8** %15, align 8
  %188 = call i32 @git_reference_create(i32** %23, i32 %178, i32 %180, i32* %182, i32 %186, i8* %187)
  store i32 %188, i32* %16, align 4
  %189 = load i32, i32* %16, align 4
  %190 = load i32, i32* @GIT_EEXISTS, align 4
  %191 = icmp eq i32 %189, %190
  br i1 %191, label %192, label %193

192:                                              ; preds = %175
  br label %223

193:                                              ; preds = %175
  %194 = load i32, i32* %16, align 4
  %195 = icmp slt i32 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %193
  br label %239

197:                                              ; preds = %193
  %198 = load i32*, i32** %23, align 8
  %199 = call i32 @git_reference_free(i32* %198)
  %200 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %201 = icmp ne %struct.TYPE_33__* %200, null
  br i1 %201, label %202, label %222

202:                                              ; preds = %197
  %203 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %204 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %203, i32 0, i32 0
  %205 = load i64 (i32, i32*, i32*, i32)*, i64 (i32, i32*, i32*, i32)** %204, align 8
  %206 = icmp ne i64 (i32, i32*, i32*, i32)* %205, null
  br i1 %206, label %207, label %222

207:                                              ; preds = %202
  %208 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %209 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %208, i32 0, i32 0
  %210 = load i64 (i32, i32*, i32*, i32)*, i64 (i32, i32*, i32*, i32)** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %19, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.TYPE_32__*, %struct.TYPE_32__** %22, align 8
  %214 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %213, i32 0, i32 0
  %215 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %216 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 8
  %218 = call i64 %210(i32 %212, i32* %20, i32* %214, i32 %217)
  %219 = icmp slt i64 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %207
  br label %239

221:                                              ; preds = %207
  br label %222

222:                                              ; preds = %221, %202, %197
  br label %223

223:                                              ; preds = %222, %192, %174, %131, %121, %116, %61
  %224 = load i32, i32* %18, align 4
  %225 = add i32 %224, 1
  store i32 %225, i32* %18, align 4
  br label %45

226:                                              ; preds = %45
  %227 = load i32, i32* %11, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %235

229:                                              ; preds = %226
  %230 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %231 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %232 = call i32 @git_remote_write_fetchhead(%struct.TYPE_34__* %230, %struct.TYPE_35__* %231, %struct.TYPE_31__* %25)
  store i32 %232, i32* %16, align 4
  %233 = icmp slt i32 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %229
  br label %239

235:                                              ; preds = %229, %226
  %236 = call i32 @git_vector_free(%struct.TYPE_31__* %25)
  %237 = call i32 @git_refspec__dispose(%struct.TYPE_35__* %24)
  %238 = call i32 @git_buf_dispose(%struct.TYPE_36__* %19)
  store i32 0, i32* %8, align 4
  br label %243

239:                                              ; preds = %234, %220, %196, %167, %153, %139, %115, %109, %84
  %240 = call i32 @git_vector_free(%struct.TYPE_31__* %25)
  %241 = call i32 @git_refspec__dispose(%struct.TYPE_35__* %24)
  %242 = call i32 @git_buf_dispose(%struct.TYPE_36__* %19)
  store i32 -1, i32* %8, align 4
  br label %243

243:                                              ; preds = %239, %235, %43, %39, %34
  %244 = load i32, i32* %8, align 4
  ret i32 %244
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(%struct.TYPE_34__*) #2

declare dso_local i64 @git_repository_odb__weakptr(i32**, i32) #2

declare dso_local i64 @git_refspec__parse(%struct.TYPE_35__*, i32, i32) #2

declare dso_local i64 @git_vector_init(%struct.TYPE_31__*, i32, i32*) #2

declare dso_local %struct.TYPE_32__* @git_vector_get(%struct.TYPE_31__*, i32) #2

declare dso_local i32 @git_buf_clear(%struct.TYPE_36__*) #2

declare dso_local i32 @git_reference_is_valid_name(i32) #2

declare dso_local i64 @git_refspec_src_matches(%struct.TYPE_35__*, i32) #2

declare dso_local i64 @git_buf_puts(%struct.TYPE_36__*, i32) #2

declare dso_local i64 @git_refspec_transform(%struct.TYPE_36__*, %struct.TYPE_35__*, i32) #2

declare dso_local i32 @git_vector_insert(%struct.TYPE_31__*, %struct.TYPE_32__*) #2

declare dso_local i64 @git_buf_len(%struct.TYPE_36__*) #2

declare dso_local i32 @git_odb_exists(i32*, i32*) #2

declare dso_local i32 @git_reference_name_to_id(i32*, i32, i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @git_oid__cmp(i32*, i32*) #2

declare dso_local i32 @git_reference_create(i32**, i32, i32, i32*, i32, i8*) #2

declare dso_local i32 @git_reference_free(i32*) #2

declare dso_local i32 @git_remote_write_fetchhead(%struct.TYPE_34__*, %struct.TYPE_35__*, %struct.TYPE_31__*) #2

declare dso_local i32 @git_vector_free(%struct.TYPE_31__*) #2

declare dso_local i32 @git_refspec__dispose(%struct.TYPE_35__*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_36__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
