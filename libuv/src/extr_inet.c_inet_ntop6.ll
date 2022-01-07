; ModuleID = '/home/carl/AnghaBench/libuv/src/extr_inet.c_inet_ntop6.c'
source_filename = "/home/carl/AnghaBench/libuv/src/extr_inet.c_inet_ntop6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, i32 }

@UV__INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@UV_E2BIG = common dso_local global i64 0, align 8
@UV_ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64)* @inet_ntop6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet_ntop6(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.anon, align 4
  %12 = alloca %struct.anon, align 4
  %13 = alloca [1 x i32], align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %17 = load i32, i32* @UV__INET6_ADDRSTRLEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %8, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  %21 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  %22 = call i32 @memset(i32* %21, i8 signext 0, i32 4)
  store i32 0, i32* %14, align 4
  br label %23

23:                                               ; preds = %44, %3
  %24 = load i32, i32* %14, align 4
  %25 = icmp slt i32 %24, 4
  br i1 %25, label %26, label %47

26:                                               ; preds = %23
  %27 = load i8*, i8** %5, align 8
  %28 = load i32, i32* %14, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = load i32, i32* %14, align 4
  %34 = srem i32 %33, 2
  %35 = sub nsw i32 1, %34
  %36 = shl i32 %35, 3
  %37 = shl i32 %32, %36
  %38 = load i32, i32* %14, align 4
  %39 = sdiv i32 %38, 2
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %37
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %26
  %45 = load i32, i32* %14, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %14, align 4
  br label %23

47:                                               ; preds = %23
  %48 = getelementptr inbounds %struct.anon, %struct.anon* %11, i32 0, i32 0
  store i32 -1, i32* %48, align 4
  %49 = getelementptr inbounds %struct.anon, %struct.anon* %11, i32 0, i32 1
  store i32 0, i32* %49, align 4
  %50 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 0
  store i32 -1, i32* %50, align 4
  %51 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 1
  store i32 0, i32* %51, align 4
  store i32 0, i32* %14, align 4
  br label %52

52:                                               ; preds = %97, %47
  %53 = load i32, i32* %14, align 4
  %54 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  %55 = call i32 @ARRAY_SIZE(i32* %54)
  %56 = icmp slt i32 %53, %55
  br i1 %56, label %57, label %100

57:                                               ; preds = %52
  %58 = load i32, i32* %14, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load i32, i32* %14, align 4
  %69 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 0
  store i32 %68, i32* %69, align 4
  %70 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 1
  store i32 1, i32* %70, align 4
  br label %75

71:                                               ; preds = %63
  %72 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %71, %67
  br label %96

76:                                               ; preds = %57
  %77 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, -1
  br i1 %79, label %80, label %95

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.anon, %struct.anon* %11, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, -1
  br i1 %83, label %90, label %84

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.anon, %struct.anon* %11, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp sgt i32 %86, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %84, %80
  %91 = bitcast %struct.anon* %11 to i8*
  %92 = bitcast %struct.anon* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %91, i8* align 4 %92, i64 8, i1 false)
  br label %93

93:                                               ; preds = %90, %84
  %94 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 0
  store i32 -1, i32* %94, align 4
  br label %95

95:                                               ; preds = %93, %76
  br label %96

96:                                               ; preds = %95, %75
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %14, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %14, align 4
  br label %52

100:                                              ; preds = %52
  %101 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, -1
  br i1 %103, label %104, label %118

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.anon, %struct.anon* %11, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %106, -1
  br i1 %107, label %114, label %108

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = getelementptr inbounds %struct.anon, %struct.anon* %11, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp sgt i32 %110, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %108, %104
  %115 = bitcast %struct.anon* %11 to i8*
  %116 = bitcast %struct.anon* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %115, i8* align 4 %116, i64 8, i1 false)
  br label %117

117:                                              ; preds = %114, %108
  br label %118

118:                                              ; preds = %117, %100
  %119 = getelementptr inbounds %struct.anon, %struct.anon* %11, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, -1
  br i1 %121, label %122, label %128

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.anon, %struct.anon* %11, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = icmp slt i32 %124, 2
  br i1 %125, label %126, label %128

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.anon, %struct.anon* %11, i32 0, i32 0
  store i32 -1, i32* %127, align 4
  br label %128

128:                                              ; preds = %126, %122, %118
  store i8* %20, i8** %10, align 8
  store i32 0, i32* %14, align 4
  br label %129

129:                                              ; preds = %224, %128
  %130 = load i32, i32* %14, align 4
  %131 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  %132 = call i32 @ARRAY_SIZE(i32* %131)
  %133 = icmp slt i32 %130, %132
  br i1 %133, label %134, label %227

134:                                              ; preds = %129
  %135 = getelementptr inbounds %struct.anon, %struct.anon* %11, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, -1
  br i1 %137, label %138, label %160

138:                                              ; preds = %134
  %139 = load i32, i32* %14, align 4
  %140 = getelementptr inbounds %struct.anon, %struct.anon* %11, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = icmp sge i32 %139, %141
  br i1 %142, label %143, label %160

143:                                              ; preds = %138
  %144 = load i32, i32* %14, align 4
  %145 = getelementptr inbounds %struct.anon, %struct.anon* %11, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = getelementptr inbounds %struct.anon, %struct.anon* %11, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = add nsw i32 %146, %148
  %150 = icmp slt i32 %144, %149
  br i1 %150, label %151, label %160

151:                                              ; preds = %143
  %152 = load i32, i32* %14, align 4
  %153 = getelementptr inbounds %struct.anon, %struct.anon* %11, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = icmp eq i32 %152, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %151
  %157 = load i8*, i8** %10, align 8
  %158 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %158, i8** %10, align 8
  store i8 58, i8* %157, align 1
  br label %159

159:                                              ; preds = %156, %151
  br label %224

160:                                              ; preds = %143, %138, %134
  %161 = load i32, i32* %14, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %160
  %164 = load i8*, i8** %10, align 8
  %165 = getelementptr inbounds i8, i8* %164, i32 1
  store i8* %165, i8** %10, align 8
  store i8 58, i8* %164, align 1
  br label %166

166:                                              ; preds = %163, %160
  %167 = load i32, i32* %14, align 4
  %168 = icmp eq i32 %167, 6
  br i1 %168, label %169, label %214

169:                                              ; preds = %166
  %170 = getelementptr inbounds %struct.anon, %struct.anon* %11, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %214

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct.anon, %struct.anon* %11, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = icmp eq i32 %175, 6
  br i1 %176, label %193, label %177

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct.anon, %struct.anon* %11, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = icmp eq i32 %179, 7
  br i1 %180, label %181, label %185

181:                                              ; preds = %177
  %182 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 7
  %183 = load i32, i32* %182, align 4
  %184 = icmp ne i32 %183, 1
  br i1 %184, label %193, label %185

185:                                              ; preds = %181, %177
  %186 = getelementptr inbounds %struct.anon, %struct.anon* %11, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = icmp eq i32 %187, 5
  br i1 %188, label %189, label %214

189:                                              ; preds = %185
  %190 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 5
  %191 = load i32, i32* %190, align 4
  %192 = icmp eq i32 %191, 65535
  br i1 %192, label %193, label %214

193:                                              ; preds = %189, %181, %173
  %194 = load i8*, i8** %5, align 8
  %195 = getelementptr inbounds i8, i8* %194, i64 12
  %196 = load i8*, i8** %10, align 8
  %197 = load i8*, i8** %10, align 8
  %198 = ptrtoint i8* %197 to i64
  %199 = ptrtoint i8* %20 to i64
  %200 = sub i64 %198, %199
  %201 = sub i64 %18, %200
  %202 = trunc i64 %201 to i32
  %203 = call i32 @inet_ntop4(i8* %195, i8* %196, i32 %202)
  store i32 %203, i32* %15, align 4
  %204 = load i32, i32* %15, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %193
  %207 = load i32, i32* %15, align 4
  store i32 %207, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %254

208:                                              ; preds = %193
  %209 = load i8*, i8** %10, align 8
  %210 = call i32 @strlen(i8* %209)
  %211 = load i8*, i8** %10, align 8
  %212 = sext i32 %210 to i64
  %213 = getelementptr inbounds i8, i8* %211, i64 %212
  store i8* %213, i8** %10, align 8
  br label %227

214:                                              ; preds = %189, %185, %169, %166
  %215 = load i8*, i8** %10, align 8
  %216 = load i32, i32* %14, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @sprintf(i8* %215, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %219)
  %221 = load i8*, i8** %10, align 8
  %222 = sext i32 %220 to i64
  %223 = getelementptr inbounds i8, i8* %221, i64 %222
  store i8* %223, i8** %10, align 8
  br label %224

224:                                              ; preds = %214, %159
  %225 = load i32, i32* %14, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %14, align 4
  br label %129

227:                                              ; preds = %208, %129
  %228 = getelementptr inbounds %struct.anon, %struct.anon* %11, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = icmp ne i32 %229, -1
  br i1 %230, label %231, label %243

231:                                              ; preds = %227
  %232 = getelementptr inbounds %struct.anon, %struct.anon* %11, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = getelementptr inbounds %struct.anon, %struct.anon* %11, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = add nsw i32 %233, %235
  %237 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  %238 = call i32 @ARRAY_SIZE(i32* %237)
  %239 = icmp eq i32 %236, %238
  br i1 %239, label %240, label %243

240:                                              ; preds = %231
  %241 = load i8*, i8** %10, align 8
  %242 = getelementptr inbounds i8, i8* %241, i32 1
  store i8* %242, i8** %10, align 8
  store i8 58, i8* %241, align 1
  br label %243

243:                                              ; preds = %240, %231, %227
  %244 = load i8*, i8** %10, align 8
  %245 = getelementptr inbounds i8, i8* %244, i32 1
  store i8* %245, i8** %10, align 8
  store i8 0, i8* %244, align 1
  %246 = load i64, i64* @UV_E2BIG, align 8
  %247 = load i8*, i8** %6, align 8
  %248 = load i64, i64* %7, align 8
  %249 = call i64 @uv__strscpy(i8* %247, i8* %20, i64 %248)
  %250 = icmp eq i64 %246, %249
  br i1 %250, label %251, label %253

251:                                              ; preds = %243
  %252 = load i32, i32* @UV_ENOSPC, align 4
  store i32 %252, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %254

253:                                              ; preds = %243
  store i32 0, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %254

254:                                              ; preds = %253, %251, %206
  %255 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %255)
  %256 = load i32, i32* %4, align 4
  ret i32 %256
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i8 signext, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @inet_ntop4(i8*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @sprintf(i8*, i8*, i32) #2

declare dso_local i64 @uv__strscpy(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
