; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_blame_git.c_pass_blame.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_blame_git.c_pass_blame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_23__*, i64, i32* }

@GIT_BLAME_FIRST_PARENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_24__*, %struct.TYPE_23__*, i32)* @pass_blame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pass_blame(%struct.TYPE_24__* %0, %struct.TYPE_23__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [16 x %struct.TYPE_23__*], align 16
  %11 = alloca %struct.TYPE_23__*, align 8
  %12 = alloca %struct.TYPE_23__**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %4, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %5, align 8
  store i32 %2, i32* %6, align 4
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %7, align 8
  %22 = getelementptr inbounds [16 x %struct.TYPE_23__*], [16 x %struct.TYPE_23__*]* %10, i64 0, i64 0
  store %struct.TYPE_23__** %22, %struct.TYPE_23__*** %12, align 8
  store i32 0, i32* %14, align 4
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @git_commit_parentcount(i32* %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32*, i32** %7, align 8
  %26 = call i32* @git_commit_id(i32* %25)
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i32 0, i32 0
  %30 = call i32 @git_oid_cmp(i32* %26, i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %43

33:                                               ; preds = %3
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @GIT_BLAME_FIRST_PARENT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i32, i32* %9, align 4
  %40 = icmp sgt i32 %39, 1
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 1, i32* %9, align 4
  br label %42

42:                                               ; preds = %41, %38, %33
  br label %43

43:                                               ; preds = %42, %32
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %43
  %47 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 0
  %50 = load i32*, i32** %7, align 8
  %51 = call i32* @git_commit_id(i32* %50)
  %52 = call i32 @git_oid_cpy(i32* %49, i32* %51)
  br label %216

53:                                               ; preds = %43
  %54 = load i32, i32* %9, align 4
  %55 = getelementptr inbounds [16 x %struct.TYPE_23__*], [16 x %struct.TYPE_23__*]* %10, i64 0, i64 0
  %56 = call i64 @ARRAY_SIZE(%struct.TYPE_23__** %55)
  %57 = trunc i64 %56 to i32
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = getelementptr inbounds [16 x %struct.TYPE_23__*], [16 x %struct.TYPE_23__*]* %10, i64 0, i64 0
  %61 = call i32 @memset(%struct.TYPE_23__** %60, i32 0, i32 128)
  br label %67

62:                                               ; preds = %53
  %63 = load i32, i32* %9, align 4
  %64 = call %struct.TYPE_23__** @git__calloc(i32 %63, i32 8)
  store %struct.TYPE_23__** %64, %struct.TYPE_23__*** %12, align 8
  %65 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %12, align 8
  %66 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_23__** %65)
  br label %67

67:                                               ; preds = %62, %59
  br label %68

68:                                               ; preds = %67
  store i32 0, i32* %8, align 4
  br label %69

69:                                               ; preds = %172, %68
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %175

73:                                               ; preds = %69
  %74 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %12, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %74, i64 %76
  %78 = load %struct.TYPE_23__*, %struct.TYPE_23__** %77, align 8
  %79 = icmp ne %struct.TYPE_23__* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  br label %172

81:                                               ; preds = %73
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @git_commit_parent(i32** %15, i32* %84, i32 %85)
  store i32 %86, i32* %14, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  br label %216

89:                                               ; preds = %81
  %90 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %91 = load i32*, i32** %15, align 8
  %92 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %93 = call %struct.TYPE_23__* @find_origin(%struct.TYPE_24__* %90, i32* %91, %struct.TYPE_23__* %92)
  store %struct.TYPE_23__* %93, %struct.TYPE_23__** %11, align 8
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %95 = icmp ne %struct.TYPE_23__* %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %89
  %97 = load i32*, i32** %15, align 8
  %98 = call i32 @git_commit_free(i32* %97)
  br label %172

99:                                               ; preds = %89
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %127

104:                                              ; preds = %99
  %105 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %127

109:                                              ; preds = %104
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = call i32* @git_blob_id(i64 %112)
  %114 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = call i32* @git_blob_id(i64 %116)
  %118 = call i32 @git_oid_cmp(i32* %113, i32* %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %127, label %120

120:                                              ; preds = %109
  %121 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %124 = call i32 @pass_whole_blame(%struct.TYPE_24__* %121, %struct.TYPE_23__* %122, %struct.TYPE_23__* %123)
  store i32 %124, i32* %14, align 4
  %125 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %126 = call i32 @origin_decref(%struct.TYPE_23__* %125)
  br label %216

127:                                              ; preds = %109, %104, %99
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %128

128:                                              ; preds = %156, %127
  %129 = load i32, i32* %16, align 4
  %130 = load i32, i32* %8, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %159

132:                                              ; preds = %128
  %133 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %12, align 8
  %134 = load i32, i32* %16, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %133, i64 %135
  %137 = load %struct.TYPE_23__*, %struct.TYPE_23__** %136, align 8
  %138 = icmp ne %struct.TYPE_23__* %137, null
  br i1 %138, label %139, label %155

139:                                              ; preds = %132
  %140 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %12, align 8
  %141 = load i32, i32* %16, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %140, i64 %142
  %144 = load %struct.TYPE_23__*, %struct.TYPE_23__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = call i32* @git_blob_id(i64 %146)
  %148 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %149 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = call i32* @git_blob_id(i64 %150)
  %152 = call i32 @git_oid_cmp(i32* %147, i32* %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %155, label %154

154:                                              ; preds = %139
  store i32 1, i32* %17, align 4
  br label %159

155:                                              ; preds = %139, %132
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %16, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %16, align 4
  br label %128

159:                                              ; preds = %154, %128
  %160 = load i32, i32* %17, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %168, label %162

162:                                              ; preds = %159
  %163 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %164 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %12, align 8
  %165 = load i32, i32* %8, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %164, i64 %166
  store %struct.TYPE_23__* %163, %struct.TYPE_23__** %167, align 8
  br label %171

168:                                              ; preds = %159
  %169 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %170 = call i32 @origin_decref(%struct.TYPE_23__* %169)
  br label %171

171:                                              ; preds = %168, %162
  br label %172

172:                                              ; preds = %171, %96, %80
  %173 = load i32, i32* %8, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %8, align 4
  br label %69

175:                                              ; preds = %69
  store i32 0, i32* %8, align 4
  br label %176

176:                                              ; preds = %212, %175
  %177 = load i32, i32* %8, align 4
  %178 = load i32, i32* %9, align 4
  %179 = icmp slt i32 %177, %178
  br i1 %179, label %180, label %215

180:                                              ; preds = %176
  %181 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %12, align 8
  %182 = load i32, i32* %8, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %181, i64 %183
  %185 = load %struct.TYPE_23__*, %struct.TYPE_23__** %184, align 8
  store %struct.TYPE_23__* %185, %struct.TYPE_23__** %18, align 8
  %186 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %187 = icmp ne %struct.TYPE_23__* %186, null
  br i1 %187, label %189, label %188

188:                                              ; preds = %180
  br label %212

189:                                              ; preds = %180
  %190 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %190, i32 0, i32 0
  %192 = load %struct.TYPE_23__*, %struct.TYPE_23__** %191, align 8
  %193 = icmp ne %struct.TYPE_23__* %192, null
  br i1 %193, label %200, label %194

194:                                              ; preds = %189
  %195 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %196 = call i32 @origin_incref(%struct.TYPE_23__* %195)
  %197 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %198 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %198, i32 0, i32 0
  store %struct.TYPE_23__* %197, %struct.TYPE_23__** %199, align 8
  br label %200

200:                                              ; preds = %194, %189
  %201 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %202 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %203 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %204 = call i32 @pass_blame_to_parent(%struct.TYPE_24__* %201, %struct.TYPE_23__* %202, %struct.TYPE_23__* %203)
  store i32 %204, i32* %13, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %211

206:                                              ; preds = %200
  %207 = load i32, i32* %13, align 4
  %208 = icmp slt i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %206
  store i32 -1, i32* %14, align 4
  br label %210

210:                                              ; preds = %209, %206
  br label %216

211:                                              ; preds = %200
  br label %212

212:                                              ; preds = %211, %188
  %213 = load i32, i32* %8, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %8, align 4
  br label %176

215:                                              ; preds = %176
  br label %216

216:                                              ; preds = %215, %210, %120, %88, %46
  store i32 0, i32* %8, align 4
  br label %217

217:                                              ; preds = %236, %216
  %218 = load i32, i32* %8, align 4
  %219 = load i32, i32* %9, align 4
  %220 = icmp slt i32 %218, %219
  br i1 %220, label %221, label %239

221:                                              ; preds = %217
  %222 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %12, align 8
  %223 = load i32, i32* %8, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %222, i64 %224
  %226 = load %struct.TYPE_23__*, %struct.TYPE_23__** %225, align 8
  %227 = icmp ne %struct.TYPE_23__* %226, null
  br i1 %227, label %228, label %235

228:                                              ; preds = %221
  %229 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %12, align 8
  %230 = load i32, i32* %8, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %229, i64 %231
  %233 = load %struct.TYPE_23__*, %struct.TYPE_23__** %232, align 8
  %234 = call i32 @origin_decref(%struct.TYPE_23__* %233)
  br label %235

235:                                              ; preds = %228, %221
  br label %236

236:                                              ; preds = %235
  %237 = load i32, i32* %8, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %8, align 4
  br label %217

239:                                              ; preds = %217
  %240 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %12, align 8
  %241 = getelementptr inbounds [16 x %struct.TYPE_23__*], [16 x %struct.TYPE_23__*]* %10, i64 0, i64 0
  %242 = icmp ne %struct.TYPE_23__** %240, %241
  br i1 %242, label %243, label %246

243:                                              ; preds = %239
  %244 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %12, align 8
  %245 = call i32 @git__free(%struct.TYPE_23__** %244)
  br label %246

246:                                              ; preds = %243, %239
  %247 = load i32, i32* %14, align 4
  ret i32 %247
}

declare dso_local i32 @git_commit_parentcount(i32*) #1

declare dso_local i32 @git_oid_cmp(i32*, i32*) #1

declare dso_local i32* @git_commit_id(i32*) #1

declare dso_local i32 @git_oid_cpy(i32*, i32*) #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_23__**) #1

declare dso_local i32 @memset(%struct.TYPE_23__**, i32, i32) #1

declare dso_local %struct.TYPE_23__** @git__calloc(i32, i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_23__**) #1

declare dso_local i32 @git_commit_parent(i32**, i32*, i32) #1

declare dso_local %struct.TYPE_23__* @find_origin(%struct.TYPE_24__*, i32*, %struct.TYPE_23__*) #1

declare dso_local i32 @git_commit_free(i32*) #1

declare dso_local i32* @git_blob_id(i64) #1

declare dso_local i32 @pass_whole_blame(%struct.TYPE_24__*, %struct.TYPE_23__*, %struct.TYPE_23__*) #1

declare dso_local i32 @origin_decref(%struct.TYPE_23__*) #1

declare dso_local i32 @origin_incref(%struct.TYPE_23__*) #1

declare dso_local i32 @pass_blame_to_parent(%struct.TYPE_24__*, %struct.TYPE_23__*, %struct.TYPE_23__*) #1

declare dso_local i32 @git__free(%struct.TYPE_23__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
