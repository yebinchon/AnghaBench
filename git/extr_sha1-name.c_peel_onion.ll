; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-name.c_peel_onion.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-name.c_peel_onion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.object_id = type { i32 }
%struct.object = type { %struct.object_id, i32 }
%struct.commit_list = type { i32 }
%struct.commit = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"commit}\00", align 1
@OBJ_COMMIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"tag}\00", align 1
@OBJ_TAG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"tree}\00", align 1
@OBJ_TREE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"blob}\00", align 1
@OBJ_BLOB = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"object}\00", align 1
@OBJ_ANY = common dso_local global i32 0, align 4
@OBJ_NONE = common dso_local global i32 0, align 4
@GET_OID_DISAMBIGUATORS = common dso_local global i32 0, align 4
@GET_OID_COMMITTISH = common dso_local global i32 0, align 4
@GET_OID_TREEISH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.repository*, i8*, i32, %struct.object_id*, i32)* @peel_onion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @peel_onion(%struct.repository* %0, i8* %1, i32 %2, %struct.object_id* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.repository*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.object_id*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.object_id, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.object*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.commit_list*, align 8
  store %struct.repository* %0, %struct.repository** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.object_id* %3, %struct.object_id** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %14, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %20, 4
  br i1 %21, label %31, label %22

22:                                               ; preds = %5
  %23 = load i8*, i8** %8, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %23, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 125
  br i1 %30, label %31, label %32

31:                                               ; preds = %22, %5
  store i32 -1, i32* %6, align 4
  br label %252

32:                                               ; preds = %22
  %33 = load i8*, i8** %8, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = getelementptr inbounds i8, i8* %36, i64 -1
  store i8* %37, i8** %13, align 8
  br label %38

38:                                               ; preds = %60, %32
  %39 = load i8*, i8** %8, align 8
  %40 = load i8*, i8** %13, align 8
  %41 = icmp ule i8* %39, %40
  br i1 %41, label %42, label %63

42:                                               ; preds = %38
  %43 = load i8*, i8** %13, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  store i32 %45, i32* %16, align 4
  %46 = load i32, i32* %16, align 4
  %47 = icmp eq i32 %46, 123
  br i1 %47, label %48, label %59

48:                                               ; preds = %42
  %49 = load i8*, i8** %8, align 8
  %50 = load i8*, i8** %13, align 8
  %51 = icmp ult i8* %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = load i8*, i8** %13, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 -1
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 94
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %63

59:                                               ; preds = %52, %48, %42
  br label %60

60:                                               ; preds = %59
  %61 = load i8*, i8** %13, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 -1
  store i8* %62, i8** %13, align 8
  br label %38

63:                                               ; preds = %58, %38
  %64 = load i8*, i8** %13, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = icmp ule i8* %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  store i32 -1, i32* %6, align 4
  br label %252

68:                                               ; preds = %63
  %69 = load i8*, i8** %13, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %13, align 8
  %71 = load i8*, i8** %13, align 8
  %72 = call i64 @starts_with(i8* %71, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = load i32, i32* @OBJ_COMMIT, align 4
  store i32 %75, i32* %14, align 4
  br label %123

76:                                               ; preds = %68
  %77 = load i8*, i8** %13, align 8
  %78 = call i64 @starts_with(i8* %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load i32, i32* @OBJ_TAG, align 4
  store i32 %81, i32* %14, align 4
  br label %122

82:                                               ; preds = %76
  %83 = load i8*, i8** %13, align 8
  %84 = call i64 @starts_with(i8* %83, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = load i32, i32* @OBJ_TREE, align 4
  store i32 %87, i32* %14, align 4
  br label %121

88:                                               ; preds = %82
  %89 = load i8*, i8** %13, align 8
  %90 = call i64 @starts_with(i8* %89, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = load i32, i32* @OBJ_BLOB, align 4
  store i32 %93, i32* %14, align 4
  br label %120

94:                                               ; preds = %88
  %95 = load i8*, i8** %13, align 8
  %96 = call i64 @starts_with(i8* %95, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = load i32, i32* @OBJ_ANY, align 4
  store i32 %99, i32* %14, align 4
  br label %119

100:                                              ; preds = %94
  %101 = load i8*, i8** %13, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 0
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %104, 125
  br i1 %105, label %106, label %108

106:                                              ; preds = %100
  %107 = load i32, i32* @OBJ_NONE, align 4
  store i32 %107, i32* %14, align 4
  br label %118

108:                                              ; preds = %100
  %109 = load i8*, i8** %13, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 0
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp eq i32 %112, 47
  br i1 %113, label %114, label %116

114:                                              ; preds = %108
  %115 = load i32, i32* @OBJ_COMMIT, align 4
  store i32 %115, i32* %14, align 4
  br label %117

116:                                              ; preds = %108
  store i32 -1, i32* %6, align 4
  br label %252

117:                                              ; preds = %114
  br label %118

118:                                              ; preds = %117, %106
  br label %119

119:                                              ; preds = %118, %98
  br label %120

120:                                              ; preds = %119, %92
  br label %121

121:                                              ; preds = %120, %86
  br label %122

122:                                              ; preds = %121, %80
  br label %123

123:                                              ; preds = %122, %74
  %124 = load i32, i32* @GET_OID_DISAMBIGUATORS, align 4
  %125 = xor i32 %124, -1
  %126 = load i32, i32* %11, align 4
  %127 = and i32 %126, %125
  store i32 %127, i32* %11, align 4
  %128 = load i32, i32* %14, align 4
  %129 = load i32, i32* @OBJ_COMMIT, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %123
  %132 = load i32, i32* @GET_OID_COMMITTISH, align 4
  %133 = load i32, i32* %11, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %11, align 4
  br label %144

135:                                              ; preds = %123
  %136 = load i32, i32* %14, align 4
  %137 = load i32, i32* @OBJ_TREE, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %143

139:                                              ; preds = %135
  %140 = load i32, i32* @GET_OID_TREEISH, align 4
  %141 = load i32, i32* %11, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %11, align 4
  br label %143

143:                                              ; preds = %139, %135
  br label %144

144:                                              ; preds = %143, %131
  %145 = load %struct.repository*, %struct.repository** %7, align 8
  %146 = load i8*, i8** %8, align 8
  %147 = load i8*, i8** %13, align 8
  %148 = load i8*, i8** %8, align 8
  %149 = ptrtoint i8* %147 to i64
  %150 = ptrtoint i8* %148 to i64
  %151 = sub i64 %149, %150
  %152 = sub nsw i64 %151, 2
  %153 = trunc i64 %152 to i32
  %154 = load i32, i32* %11, align 4
  %155 = call i64 @get_oid_1(%struct.repository* %145, i8* %146, i32 %153, %struct.object_id* %12, i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %144
  store i32 -1, i32* %6, align 4
  br label %252

158:                                              ; preds = %144
  %159 = load %struct.repository*, %struct.repository** %7, align 8
  %160 = call %struct.object* @parse_object(%struct.repository* %159, %struct.object_id* %12)
  store %struct.object* %160, %struct.object** %15, align 8
  %161 = load %struct.object*, %struct.object** %15, align 8
  %162 = icmp ne %struct.object* %161, null
  br i1 %162, label %164, label %163

163:                                              ; preds = %158
  store i32 -1, i32* %6, align 4
  br label %252

164:                                              ; preds = %158
  %165 = load i32, i32* %14, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %198, label %167

167:                                              ; preds = %164
  %168 = load %struct.repository*, %struct.repository** %7, align 8
  %169 = load %struct.object*, %struct.object** %15, align 8
  %170 = load i8*, i8** %8, align 8
  %171 = load i8*, i8** %13, align 8
  %172 = load i8*, i8** %8, align 8
  %173 = ptrtoint i8* %171 to i64
  %174 = ptrtoint i8* %172 to i64
  %175 = sub i64 %173, %174
  %176 = sub nsw i64 %175, 2
  %177 = trunc i64 %176 to i32
  %178 = call %struct.object* @deref_tag(%struct.repository* %168, %struct.object* %169, i8* %170, i32 %177)
  store %struct.object* %178, %struct.object** %15, align 8
  %179 = load %struct.object*, %struct.object** %15, align 8
  %180 = icmp ne %struct.object* %179, null
  br i1 %180, label %181, label %192

181:                                              ; preds = %167
  %182 = load %struct.object*, %struct.object** %15, align 8
  %183 = getelementptr inbounds %struct.object, %struct.object* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %193, label %186

186:                                              ; preds = %181
  %187 = load %struct.repository*, %struct.repository** %7, align 8
  %188 = load %struct.object*, %struct.object** %15, align 8
  %189 = getelementptr inbounds %struct.object, %struct.object* %188, i32 0, i32 0
  %190 = call %struct.object* @parse_object(%struct.repository* %187, %struct.object_id* %189)
  %191 = icmp ne %struct.object* %190, null
  br i1 %191, label %193, label %192

192:                                              ; preds = %186, %167
  store i32 -1, i32* %6, align 4
  br label %252

193:                                              ; preds = %186, %181
  %194 = load %struct.object_id*, %struct.object_id** %10, align 8
  %195 = load %struct.object*, %struct.object** %15, align 8
  %196 = getelementptr inbounds %struct.object, %struct.object* %195, i32 0, i32 0
  %197 = call i32 @oidcpy(%struct.object_id* %194, %struct.object_id* %196)
  store i32 0, i32* %6, align 4
  br label %252

198:                                              ; preds = %164
  %199 = load %struct.repository*, %struct.repository** %7, align 8
  %200 = load i8*, i8** %8, align 8
  %201 = load i32, i32* %9, align 4
  %202 = load %struct.object*, %struct.object** %15, align 8
  %203 = load i32, i32* %14, align 4
  %204 = call %struct.object* @repo_peel_to_type(%struct.repository* %199, i8* %200, i32 %201, %struct.object* %202, i32 %203)
  store %struct.object* %204, %struct.object** %15, align 8
  %205 = load %struct.object*, %struct.object** %15, align 8
  %206 = icmp ne %struct.object* %205, null
  br i1 %206, label %208, label %207

207:                                              ; preds = %198
  store i32 -1, i32* %6, align 4
  br label %252

208:                                              ; preds = %198
  %209 = load %struct.object_id*, %struct.object_id** %10, align 8
  %210 = load %struct.object*, %struct.object** %15, align 8
  %211 = getelementptr inbounds %struct.object, %struct.object* %210, i32 0, i32 0
  %212 = call i32 @oidcpy(%struct.object_id* %209, %struct.object_id* %211)
  %213 = load i8*, i8** %13, align 8
  %214 = getelementptr inbounds i8, i8* %213, i64 0
  %215 = load i8, i8* %214, align 1
  %216 = sext i8 %215 to i32
  %217 = icmp eq i32 %216, 47
  br i1 %217, label %218, label %251

218:                                              ; preds = %208
  store %struct.commit_list* null, %struct.commit_list** %19, align 8
  %219 = load i8*, i8** %13, align 8
  %220 = getelementptr inbounds i8, i8* %219, i64 1
  %221 = load i8, i8* %220, align 1
  %222 = sext i8 %221 to i32
  %223 = icmp eq i32 %222, 125
  br i1 %223, label %224, label %225

224:                                              ; preds = %218
  store i32 0, i32* %6, align 4
  br label %252

225:                                              ; preds = %218
  %226 = load i8*, i8** %13, align 8
  %227 = getelementptr inbounds i8, i8* %226, i64 1
  %228 = load i8*, i8** %8, align 8
  %229 = load i32, i32* %9, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i8, i8* %228, i64 %230
  %232 = getelementptr inbounds i8, i8* %231, i64 -1
  %233 = load i8*, i8** %13, align 8
  %234 = getelementptr inbounds i8, i8* %233, i64 1
  %235 = ptrtoint i8* %232 to i64
  %236 = ptrtoint i8* %234 to i64
  %237 = sub i64 %235, %236
  %238 = trunc i64 %237 to i32
  %239 = call i8* @xstrndup(i8* %227, i32 %238)
  store i8* %239, i8** %17, align 8
  %240 = load %struct.object*, %struct.object** %15, align 8
  %241 = bitcast %struct.object* %240 to %struct.commit*
  %242 = call i32 @commit_list_insert(%struct.commit* %241, %struct.commit_list** %19)
  %243 = load %struct.repository*, %struct.repository** %7, align 8
  %244 = load i8*, i8** %17, align 8
  %245 = load %struct.object_id*, %struct.object_id** %10, align 8
  %246 = load %struct.commit_list*, %struct.commit_list** %19, align 8
  %247 = call i32 @get_oid_oneline(%struct.repository* %243, i8* %244, %struct.object_id* %245, %struct.commit_list* %246)
  store i32 %247, i32* %18, align 4
  %248 = load i8*, i8** %17, align 8
  %249 = call i32 @free(i8* %248)
  %250 = load i32, i32* %18, align 4
  store i32 %250, i32* %6, align 4
  br label %252

251:                                              ; preds = %208
  store i32 0, i32* %6, align 4
  br label %252

252:                                              ; preds = %251, %225, %224, %207, %193, %192, %163, %157, %116, %67, %31
  %253 = load i32, i32* %6, align 4
  ret i32 %253
}

declare dso_local i64 @starts_with(i8*, i8*) #1

declare dso_local i64 @get_oid_1(%struct.repository*, i8*, i32, %struct.object_id*, i32) #1

declare dso_local %struct.object* @parse_object(%struct.repository*, %struct.object_id*) #1

declare dso_local %struct.object* @deref_tag(%struct.repository*, %struct.object*, i8*, i32) #1

declare dso_local i32 @oidcpy(%struct.object_id*, %struct.object_id*) #1

declare dso_local %struct.object* @repo_peel_to_type(%struct.repository*, i8*, i32, %struct.object*, i32) #1

declare dso_local i8* @xstrndup(i8*, i32) #1

declare dso_local i32 @commit_list_insert(%struct.commit*, %struct.commit_list**) #1

declare dso_local i32 @get_oid_oneline(%struct.repository*, i8*, %struct.object_id*, %struct.commit_list*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
