; ModuleID = '/home/carl/AnghaBench/git/extr_shallow.c_get_shallow_commits.c'
source_filename = "/home/carl/AnghaBench/git/extr_shallow.c_get_shallow_commits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_array = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.commit_list = type { %struct.commit*, %struct.commit_list* }
%struct.commit = type { %struct.TYPE_4__, %struct.commit_list* }
%struct.TYPE_4__ = type { i64, i32, i32 }
%struct.commit_graft = type { i64 }
%struct.commit_depth = type { i32, i32, i32** }

@OBJECT_ARRAY_INIT = common dso_local global %struct.object_array zeroinitializer, align 8
@the_repository = common dso_local global i32 0, align 4
@OBJ_COMMIT = common dso_local global i64 0, align 8
@INFINITE_DEPTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.commit_list* @get_shallow_commits(%struct.object_array* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.object_array*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.commit_list*, align 8
  %12 = alloca %struct.object_array, align 8
  %13 = alloca %struct.commit*, align 8
  %14 = alloca %struct.commit_graft*, align 8
  %15 = alloca %struct.commit_depth, align 8
  %16 = alloca %struct.commit_list*, align 8
  %17 = alloca i32**, align 8
  %18 = alloca i32**, align 8
  %19 = alloca i32, align 4
  store %struct.object_array* %0, %struct.object_array** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store %struct.commit_list* null, %struct.commit_list** %11, align 8
  %20 = bitcast %struct.object_array* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 bitcast (%struct.object_array* @OBJECT_ARRAY_INIT to i8*), i64 16, i1 false)
  store %struct.commit* null, %struct.commit** %13, align 8
  %21 = call i32 @init_commit_depth(%struct.commit_depth* %15)
  br label %22

22:                                               ; preds = %193, %122, %68, %4
  %23 = load %struct.commit*, %struct.commit** %13, align 8
  %24 = icmp ne %struct.commit* %23, null
  br i1 %24, label %35, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.object_array*, %struct.object_array** %5, align 8
  %28 = getelementptr inbounds %struct.object_array, %struct.object_array* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.object_array, %struct.object_array* %12, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br label %35

35:                                               ; preds = %31, %25, %22
  %36 = phi i1 [ true, %25 ], [ true, %22 ], [ %34, %31 ]
  br i1 %36, label %37, label %194

37:                                               ; preds = %35
  %38 = load %struct.commit*, %struct.commit** %13, align 8
  %39 = icmp ne %struct.commit* %38, null
  br i1 %39, label %89, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.object_array*, %struct.object_array** %5, align 8
  %43 = getelementptr inbounds %struct.object_array, %struct.object_array* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %81

46:                                               ; preds = %40
  %47 = load i32, i32* @the_repository, align 4
  %48 = load %struct.object_array*, %struct.object_array** %5, align 8
  %49 = getelementptr inbounds %struct.object_array, %struct.object_array* %48, i32 0, i32 1
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %9, align 4
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @deref_tag(i32 %47, i32 %56, i32* null, i32 0)
  %58 = inttoptr i64 %57 to %struct.commit*
  store %struct.commit* %58, %struct.commit** %13, align 8
  %59 = load %struct.commit*, %struct.commit** %13, align 8
  %60 = icmp ne %struct.commit* %59, null
  br i1 %60, label %61, label %68

61:                                               ; preds = %46
  %62 = load %struct.commit*, %struct.commit** %13, align 8
  %63 = getelementptr inbounds %struct.commit, %struct.commit* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @OBJ_COMMIT, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %61, %46
  store %struct.commit* null, %struct.commit** %13, align 8
  br label %22

69:                                               ; preds = %61
  %70 = load %struct.commit*, %struct.commit** %13, align 8
  %71 = call i32** @commit_depth_at(%struct.commit_depth* %15, %struct.commit* %70)
  store i32** %71, i32*** %17, align 8
  %72 = load i32**, i32*** %17, align 8
  %73 = load i32*, i32** %72, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %69
  %76 = call i32* @xmalloc(i32 4)
  %77 = load i32**, i32*** %17, align 8
  store i32* %76, i32** %77, align 8
  br label %78

78:                                               ; preds = %75, %69
  %79 = load i32**, i32*** %17, align 8
  %80 = load i32*, i32** %79, align 8
  store i32 0, i32* %80, align 4
  store i32 0, i32* %10, align 4
  br label %88

81:                                               ; preds = %40
  %82 = call i64 @object_array_pop(%struct.object_array* %12)
  %83 = inttoptr i64 %82 to %struct.commit*
  store %struct.commit* %83, %struct.commit** %13, align 8
  %84 = load %struct.commit*, %struct.commit** %13, align 8
  %85 = call i32** @commit_depth_at(%struct.commit_depth* %15, %struct.commit* %84)
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %10, align 4
  br label %88

88:                                               ; preds = %81, %78
  br label %89

89:                                               ; preds = %88, %37
  %90 = load %struct.commit*, %struct.commit** %13, align 8
  %91 = call i32 @parse_commit_or_die(%struct.commit* %90)
  %92 = load i32, i32* %10, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* @INFINITE_DEPTH, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %89
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %6, align 4
  %100 = icmp sge i32 %98, %99
  br i1 %100, label %122, label %101

101:                                              ; preds = %97, %89
  %102 = load i32, i32* @the_repository, align 4
  %103 = call i64 @is_repository_shallow(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %131

105:                                              ; preds = %101
  %106 = load %struct.commit*, %struct.commit** %13, align 8
  %107 = getelementptr inbounds %struct.commit, %struct.commit* %106, i32 0, i32 1
  %108 = load %struct.commit_list*, %struct.commit_list** %107, align 8
  %109 = icmp ne %struct.commit_list* %108, null
  br i1 %109, label %131, label %110

110:                                              ; preds = %105
  %111 = load i32, i32* @the_repository, align 4
  %112 = load %struct.commit*, %struct.commit** %13, align 8
  %113 = getelementptr inbounds %struct.commit, %struct.commit* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 2
  %115 = call %struct.commit_graft* @lookup_commit_graft(i32 %111, i32* %114)
  store %struct.commit_graft* %115, %struct.commit_graft** %14, align 8
  %116 = icmp ne %struct.commit_graft* %115, null
  br i1 %116, label %117, label %131

117:                                              ; preds = %110
  %118 = load %struct.commit_graft*, %struct.commit_graft** %14, align 8
  %119 = getelementptr inbounds %struct.commit_graft, %struct.commit_graft* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp slt i64 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %117, %97
  %123 = load %struct.commit*, %struct.commit** %13, align 8
  %124 = call i32 @commit_list_insert(%struct.commit* %123, %struct.commit_list** %11)
  %125 = load i32, i32* %7, align 4
  %126 = load %struct.commit*, %struct.commit** %13, align 8
  %127 = getelementptr inbounds %struct.commit, %struct.commit* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = or i32 %129, %125
  store i32 %130, i32* %128, align 8
  store %struct.commit* null, %struct.commit** %13, align 8
  br label %22

131:                                              ; preds = %117, %110, %105, %101
  %132 = load i32, i32* %8, align 4
  %133 = load %struct.commit*, %struct.commit** %13, align 8
  %134 = getelementptr inbounds %struct.commit, %struct.commit* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = or i32 %136, %132
  store i32 %137, i32* %135, align 8
  %138 = load %struct.commit*, %struct.commit** %13, align 8
  %139 = getelementptr inbounds %struct.commit, %struct.commit* %138, i32 0, i32 1
  %140 = load %struct.commit_list*, %struct.commit_list** %139, align 8
  store %struct.commit_list* %140, %struct.commit_list** %16, align 8
  store %struct.commit* null, %struct.commit** %13, align 8
  br label %141

141:                                              ; preds = %189, %131
  %142 = load %struct.commit_list*, %struct.commit_list** %16, align 8
  %143 = icmp ne %struct.commit_list* %142, null
  br i1 %143, label %144, label %193

144:                                              ; preds = %141
  %145 = load %struct.commit_list*, %struct.commit_list** %16, align 8
  %146 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %145, i32 0, i32 0
  %147 = load %struct.commit*, %struct.commit** %146, align 8
  %148 = call i32** @commit_depth_at(%struct.commit_depth* %15, %struct.commit* %147)
  store i32** %148, i32*** %18, align 8
  %149 = load i32**, i32*** %18, align 8
  %150 = load i32*, i32** %149, align 8
  %151 = icmp ne i32* %150, null
  br i1 %151, label %158, label %152

152:                                              ; preds = %144
  %153 = call i32* @xmalloc(i32 4)
  %154 = load i32**, i32*** %18, align 8
  store i32* %153, i32** %154, align 8
  %155 = load i32, i32* %10, align 4
  %156 = load i32**, i32*** %18, align 8
  %157 = load i32*, i32** %156, align 8
  store i32 %155, i32* %157, align 4
  br label %169

158:                                              ; preds = %144
  %159 = load i32, i32* %10, align 4
  %160 = load i32**, i32*** %18, align 8
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %161, align 4
  %163 = icmp sge i32 %159, %162
  br i1 %163, label %164, label %165

164:                                              ; preds = %158
  br label %189

165:                                              ; preds = %158
  %166 = load i32, i32* %10, align 4
  %167 = load i32**, i32*** %18, align 8
  %168 = load i32*, i32** %167, align 8
  store i32 %166, i32* %168, align 4
  br label %169

169:                                              ; preds = %165, %152
  %170 = load %struct.commit_list*, %struct.commit_list** %16, align 8
  %171 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %170, i32 0, i32 1
  %172 = load %struct.commit_list*, %struct.commit_list** %171, align 8
  %173 = icmp ne %struct.commit_list* %172, null
  br i1 %173, label %174, label %180

174:                                              ; preds = %169
  %175 = load %struct.commit_list*, %struct.commit_list** %16, align 8
  %176 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %175, i32 0, i32 0
  %177 = load %struct.commit*, %struct.commit** %176, align 8
  %178 = getelementptr inbounds %struct.commit, %struct.commit* %177, i32 0, i32 0
  %179 = call i32 @add_object_array(%struct.TYPE_4__* %178, i32* null, %struct.object_array* %12)
  br label %188

180:                                              ; preds = %169
  %181 = load %struct.commit_list*, %struct.commit_list** %16, align 8
  %182 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %181, i32 0, i32 0
  %183 = load %struct.commit*, %struct.commit** %182, align 8
  store %struct.commit* %183, %struct.commit** %13, align 8
  %184 = load %struct.commit*, %struct.commit** %13, align 8
  %185 = call i32** @commit_depth_at(%struct.commit_depth* %15, %struct.commit* %184)
  %186 = load i32*, i32** %185, align 8
  %187 = load i32, i32* %186, align 4
  store i32 %187, i32* %10, align 4
  br label %188

188:                                              ; preds = %180, %174
  br label %189

189:                                              ; preds = %188, %164
  %190 = load %struct.commit_list*, %struct.commit_list** %16, align 8
  %191 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %190, i32 0, i32 1
  %192 = load %struct.commit_list*, %struct.commit_list** %191, align 8
  store %struct.commit_list* %192, %struct.commit_list** %16, align 8
  br label %141

193:                                              ; preds = %141
  br label %22

194:                                              ; preds = %35
  store i32 0, i32* %9, align 4
  br label %195

195:                                              ; preds = %231, %194
  %196 = load i32, i32* %9, align 4
  %197 = getelementptr inbounds %struct.commit_depth, %struct.commit_depth* %15, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = icmp slt i32 %196, %198
  br i1 %199, label %200, label %234

200:                                              ; preds = %195
  %201 = getelementptr inbounds %struct.commit_depth, %struct.commit_depth* %15, i32 0, i32 2
  %202 = load i32**, i32*** %201, align 8
  %203 = load i32, i32* %9, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32*, i32** %202, i64 %204
  %206 = load i32*, i32** %205, align 8
  %207 = icmp ne i32* %206, null
  br i1 %207, label %209, label %208

208:                                              ; preds = %200
  br label %231

209:                                              ; preds = %200
  store i32 0, i32* %19, align 4
  br label %210

210:                                              ; preds = %227, %209
  %211 = load i32, i32* %19, align 4
  %212 = getelementptr inbounds %struct.commit_depth, %struct.commit_depth* %15, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = icmp slt i32 %211, %213
  br i1 %214, label %215, label %230

215:                                              ; preds = %210
  %216 = getelementptr inbounds %struct.commit_depth, %struct.commit_depth* %15, i32 0, i32 2
  %217 = load i32**, i32*** %216, align 8
  %218 = load i32, i32* %9, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32*, i32** %217, i64 %219
  %221 = load i32*, i32** %220, align 8
  %222 = load i32, i32* %19, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %221, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @free(i32 %225)
  br label %227

227:                                              ; preds = %215
  %228 = load i32, i32* %19, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %19, align 4
  br label %210

230:                                              ; preds = %210
  br label %231

231:                                              ; preds = %230, %208
  %232 = load i32, i32* %9, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %9, align 4
  br label %195

234:                                              ; preds = %195
  %235 = call i32 @clear_commit_depth(%struct.commit_depth* %15)
  %236 = load %struct.commit_list*, %struct.commit_list** %11, align 8
  ret %struct.commit_list* %236
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @init_commit_depth(%struct.commit_depth*) #2

declare dso_local i64 @deref_tag(i32, i32, i32*, i32) #2

declare dso_local i32** @commit_depth_at(%struct.commit_depth*, %struct.commit*) #2

declare dso_local i32* @xmalloc(i32) #2

declare dso_local i64 @object_array_pop(%struct.object_array*) #2

declare dso_local i32 @parse_commit_or_die(%struct.commit*) #2

declare dso_local i64 @is_repository_shallow(i32) #2

declare dso_local %struct.commit_graft* @lookup_commit_graft(i32, i32*) #2

declare dso_local i32 @commit_list_insert(%struct.commit*, %struct.commit_list**) #2

declare dso_local i32 @add_object_array(%struct.TYPE_4__*, i32*, %struct.object_array*) #2

declare dso_local i32 @free(i32) #2

declare dso_local i32 @clear_commit_depth(%struct.commit_depth*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
