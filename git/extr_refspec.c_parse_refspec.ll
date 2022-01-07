; ModuleID = '/home/carl/AnghaBench/git/extr_refspec.c_parse_refspec.c'
source_filename = "/home/carl/AnghaBench/git/extr_refspec.c_parse_refspec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.refspec_item = type { i32, i32, i32, i32, i32*, i32* }
%struct.object_id = type { i32 }

@REFNAME_ALLOW_ONELEVEL = common dso_local global i32 0, align 4
@REFNAME_REFSPEC_PATTERN = common dso_local global i32 0, align 4
@the_hash_algo = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.refspec_item*, i8*, i32)* @parse_refspec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_refspec(%struct.refspec_item* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.refspec_item*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.object_id, align 4
  store %struct.refspec_item* %0, %struct.refspec_item** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %15 = load i8*, i8** %6, align 8
  store i8* %15, i8** %10, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 43
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load %struct.refspec_item*, %struct.refspec_item** %5, align 8
  %22 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %10, align 8
  br label %25

25:                                               ; preds = %20, %3
  %26 = load i8*, i8** %10, align 8
  %27 = call i8* @strrchr(i8* %26, i8 signext 58)
  store i8* %27, i8** %11, align 8
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %43, label %30

30:                                               ; preds = %25
  %31 = load i8*, i8** %11, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = icmp eq i8* %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %30
  %35 = load i8*, i8** %11, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load %struct.refspec_item*, %struct.refspec_item** %5, align 8
  %42 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %41, i32 0, i32 1
  store i32 1, i32* %42, align 4
  store i32 1, i32* %4, align 4
  br label %247

43:                                               ; preds = %34, %30, %25
  %44 = load i8*, i8** %11, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %66

46:                                               ; preds = %43
  %47 = load i8*, i8** %11, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %11, align 8
  %49 = call i32 @strlen(i8* %48)
  %50 = sext i32 %49 to i64
  store i64 %50, i64* %13, align 8
  %51 = load i64, i64* %13, align 8
  %52 = icmp ule i64 1, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = load i8*, i8** %11, align 8
  %55 = call i64 @strchr(i8* %54, i8 signext 42)
  %56 = icmp ne i64 %55, 0
  br label %57

57:                                               ; preds = %53, %46
  %58 = phi i1 [ false, %46 ], [ %56, %53 ]
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %9, align 4
  %60 = load i8*, i8** %11, align 8
  %61 = load i64, i64* %13, align 8
  %62 = call i8* @xstrndup(i8* %60, i64 %61)
  %63 = bitcast i8* %62 to i32*
  %64 = load %struct.refspec_item*, %struct.refspec_item** %5, align 8
  %65 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %64, i32 0, i32 4
  store i32* %63, i32** %65, align 8
  br label %69

66:                                               ; preds = %43
  %67 = load %struct.refspec_item*, %struct.refspec_item** %5, align 8
  %68 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %67, i32 0, i32 4
  store i32* null, i32** %68, align 8
  br label %69

69:                                               ; preds = %66, %57
  %70 = load i8*, i8** %11, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %79

72:                                               ; preds = %69
  %73 = load i8*, i8** %11, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = ptrtoint i8* %73 to i64
  %76 = ptrtoint i8* %74 to i64
  %77 = sub i64 %75, %76
  %78 = sub nsw i64 %77, 1
  br label %83

79:                                               ; preds = %69
  %80 = load i8*, i8** %10, align 8
  %81 = call i32 @strlen(i8* %80)
  %82 = sext i32 %81 to i64
  br label %83

83:                                               ; preds = %79, %72
  %84 = phi i64 [ %78, %72 ], [ %82, %79 ]
  store i64 %84, i64* %8, align 8
  %85 = load i64, i64* %8, align 8
  %86 = icmp ule i64 1, %85
  br i1 %86, label %87, label %106

87:                                               ; preds = %83
  %88 = load i8*, i8** %10, align 8
  %89 = load i64, i64* %8, align 8
  %90 = call i64 @memchr(i8* %88, i8 signext 42, i64 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %106

92:                                               ; preds = %87
  %93 = load i8*, i8** %11, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %95, %92
  %99 = load i8*, i8** %11, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %105, label %101

101:                                              ; preds = %98
  %102 = load i32, i32* %7, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %101, %95
  store i32 0, i32* %4, align 4
  br label %247

105:                                              ; preds = %101, %98
  store i32 1, i32* %9, align 4
  br label %114

106:                                              ; preds = %87, %83
  %107 = load i8*, i8** %11, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %113

109:                                              ; preds = %106
  %110 = load i32, i32* %9, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %109
  store i32 0, i32* %4, align 4
  br label %247

113:                                              ; preds = %109, %106
  br label %114

114:                                              ; preds = %113, %105
  %115 = load i32, i32* %9, align 4
  %116 = load %struct.refspec_item*, %struct.refspec_item** %5, align 8
  %117 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 8
  %118 = load i8*, i8** %10, align 8
  %119 = load i64, i64* %8, align 8
  %120 = call i8* @xstrndup(i8* %118, i64 %119)
  %121 = bitcast i8* %120 to i32*
  %122 = load %struct.refspec_item*, %struct.refspec_item** %5, align 8
  %123 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %122, i32 0, i32 5
  store i32* %121, i32** %123, align 8
  %124 = load i32, i32* @REFNAME_ALLOW_ONELEVEL, align 4
  %125 = load i32, i32* %9, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %114
  %128 = load i32, i32* @REFNAME_REFSPEC_PATTERN, align 4
  br label %130

129:                                              ; preds = %114
  br label %130

130:                                              ; preds = %129, %127
  %131 = phi i32 [ %128, %127 ], [ 0, %129 ]
  %132 = or i32 %124, %131
  store i32 %132, i32* %12, align 4
  %133 = load i32, i32* %7, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %193

135:                                              ; preds = %130
  %136 = load %struct.refspec_item*, %struct.refspec_item** %5, align 8
  %137 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %136, i32 0, i32 5
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %138, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %142, label %141

141:                                              ; preds = %135
  br label %168

142:                                              ; preds = %135
  %143 = load i64, i64* %8, align 8
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = icmp eq i64 %143, %146
  br i1 %147, label %148, label %157

148:                                              ; preds = %142
  %149 = load %struct.refspec_item*, %struct.refspec_item** %5, align 8
  %150 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %149, i32 0, i32 5
  %151 = load i32*, i32** %150, align 8
  %152 = call i32 @get_oid_hex(i32* %151, %struct.object_id* %14)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %157, label %154

154:                                              ; preds = %148
  %155 = load %struct.refspec_item*, %struct.refspec_item** %5, align 8
  %156 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %155, i32 0, i32 3
  store i32 1, i32* %156, align 4
  br label %167

157:                                              ; preds = %148, %142
  %158 = load %struct.refspec_item*, %struct.refspec_item** %5, align 8
  %159 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %158, i32 0, i32 5
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* %12, align 4
  %162 = call i64 @check_refname_format(i32* %160, i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %157
  br label %166

165:                                              ; preds = %157
  store i32 0, i32* %4, align 4
  br label %247

166:                                              ; preds = %164
  br label %167

167:                                              ; preds = %166, %154
  br label %168

168:                                              ; preds = %167, %141
  %169 = load %struct.refspec_item*, %struct.refspec_item** %5, align 8
  %170 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %169, i32 0, i32 4
  %171 = load i32*, i32** %170, align 8
  %172 = icmp ne i32* %171, null
  br i1 %172, label %174, label %173

173:                                              ; preds = %168
  br label %192

174:                                              ; preds = %168
  %175 = load %struct.refspec_item*, %struct.refspec_item** %5, align 8
  %176 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %175, i32 0, i32 4
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* %177, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %181, label %180

180:                                              ; preds = %174
  br label %191

181:                                              ; preds = %174
  %182 = load %struct.refspec_item*, %struct.refspec_item** %5, align 8
  %183 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %182, i32 0, i32 4
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* %12, align 4
  %186 = call i64 @check_refname_format(i32* %184, i32 %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %189, label %188

188:                                              ; preds = %181
  br label %190

189:                                              ; preds = %181
  store i32 0, i32* %4, align 4
  br label %247

190:                                              ; preds = %188
  br label %191

191:                                              ; preds = %190, %180
  br label %192

192:                                              ; preds = %191, %173
  br label %246

193:                                              ; preds = %130
  %194 = load %struct.refspec_item*, %struct.refspec_item** %5, align 8
  %195 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %194, i32 0, i32 5
  %196 = load i32*, i32** %195, align 8
  %197 = load i32, i32* %196, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %200, label %199

199:                                              ; preds = %193
  br label %214

200:                                              ; preds = %193
  %201 = load i32, i32* %9, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %212

203:                                              ; preds = %200
  %204 = load %struct.refspec_item*, %struct.refspec_item** %5, align 8
  %205 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %204, i32 0, i32 5
  %206 = load i32*, i32** %205, align 8
  %207 = load i32, i32* %12, align 4
  %208 = call i64 @check_refname_format(i32* %206, i32 %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %203
  store i32 0, i32* %4, align 4
  br label %247

211:                                              ; preds = %203
  br label %213

212:                                              ; preds = %200
  br label %213

213:                                              ; preds = %212, %211
  br label %214

214:                                              ; preds = %213, %199
  %215 = load %struct.refspec_item*, %struct.refspec_item** %5, align 8
  %216 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %215, i32 0, i32 4
  %217 = load i32*, i32** %216, align 8
  %218 = icmp ne i32* %217, null
  br i1 %218, label %228, label %219

219:                                              ; preds = %214
  %220 = load %struct.refspec_item*, %struct.refspec_item** %5, align 8
  %221 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %220, i32 0, i32 5
  %222 = load i32*, i32** %221, align 8
  %223 = load i32, i32* %12, align 4
  %224 = call i64 @check_refname_format(i32* %222, i32 %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %219
  store i32 0, i32* %4, align 4
  br label %247

227:                                              ; preds = %219
  br label %245

228:                                              ; preds = %214
  %229 = load %struct.refspec_item*, %struct.refspec_item** %5, align 8
  %230 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %229, i32 0, i32 4
  %231 = load i32*, i32** %230, align 8
  %232 = load i32, i32* %231, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %235, label %234

234:                                              ; preds = %228
  store i32 0, i32* %4, align 4
  br label %247

235:                                              ; preds = %228
  %236 = load %struct.refspec_item*, %struct.refspec_item** %5, align 8
  %237 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %236, i32 0, i32 4
  %238 = load i32*, i32** %237, align 8
  %239 = load i32, i32* %12, align 4
  %240 = call i64 @check_refname_format(i32* %238, i32 %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %235
  store i32 0, i32* %4, align 4
  br label %247

243:                                              ; preds = %235
  br label %244

244:                                              ; preds = %243
  br label %245

245:                                              ; preds = %244, %227
  br label %246

246:                                              ; preds = %245, %192
  store i32 1, i32* %4, align 4
  br label %247

247:                                              ; preds = %246, %242, %234, %226, %210, %189, %165, %112, %104, %40
  %248 = load i32, i32* %4, align 4
  ret i32 %248
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i8* @xstrndup(i8*, i64) #1

declare dso_local i64 @memchr(i8*, i8 signext, i64) #1

declare dso_local i32 @get_oid_hex(i32*, %struct.object_id*) #1

declare dso_local i64 @check_refname_format(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
