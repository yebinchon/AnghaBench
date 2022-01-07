; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_shared.c_hc_path_has_bom.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_shared.c_hc_path_has_bom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hc_path_has_bom(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [8 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %7 = bitcast [8 x i32]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 32, i1 false)
  %8 = load i8*, i8** %3, align 8
  %9 = call i32 @hc_fopen(i32* %5, i8* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %247

12:                                               ; preds = %1
  %13 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %14 = call i64 @hc_fread(i32* %13, i32 1, i32 32, i32* %5)
  store i64 %14, i64* %6, align 8
  %15 = call i32 @hc_fclose(i32* %5)
  %16 = load i64, i64* %6, align 8
  %17 = icmp ult i64 %16, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %247

19:                                               ; preds = %12
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %21 = load i32, i32* %20, align 16
  %22 = icmp eq i32 %21, 239
  br i1 %22, label %23, label %32

23:                                               ; preds = %19
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 187
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 191
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 1, i32* %2, align 4
  br label %247

32:                                               ; preds = %27, %23, %19
  %33 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %34 = load i32, i32* %33, align 16
  %35 = icmp eq i32 %34, 254
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 255
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 1, i32* %2, align 4
  br label %247

41:                                               ; preds = %36, %32
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %43 = load i32, i32* %42, align 16
  %44 = icmp eq i32 %43, 255
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 254
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 1, i32* %2, align 4
  br label %247

50:                                               ; preds = %45, %41
  %51 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %52 = load i32, i32* %51, align 16
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %50
  %55 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %54
  %59 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2
  %60 = load i32, i32* %59, align 8
  %61 = icmp eq i32 %60, 254
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 255
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  store i32 1, i32* %2, align 4
  br label %247

67:                                               ; preds = %62, %58, %54, %50
  %68 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %69 = load i32, i32* %68, align 16
  %70 = icmp eq i32 %69, 255
  br i1 %70, label %71, label %84

71:                                               ; preds = %67
  %72 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 254
  br i1 %74, label %75, label %84

75:                                               ; preds = %71
  %76 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2
  %77 = load i32, i32* %76, align 8
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %75
  %80 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  store i32 1, i32* %2, align 4
  br label %247

84:                                               ; preds = %79, %75, %71, %67
  %85 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %86 = load i32, i32* %85, align 16
  %87 = icmp eq i32 %86, 43
  br i1 %87, label %88, label %101

88:                                               ; preds = %84
  %89 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %90, 47
  br i1 %91, label %92, label %101

92:                                               ; preds = %88
  %93 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2
  %94 = load i32, i32* %93, align 8
  %95 = icmp eq i32 %94, 118
  br i1 %95, label %96, label %101

96:                                               ; preds = %92
  %97 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %98, 56
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  store i32 1, i32* %2, align 4
  br label %247

101:                                              ; preds = %96, %92, %88, %84
  %102 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %103 = load i32, i32* %102, align 16
  %104 = icmp eq i32 %103, 43
  br i1 %104, label %105, label %118

105:                                              ; preds = %101
  %106 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, 47
  br i1 %108, label %109, label %118

109:                                              ; preds = %105
  %110 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2
  %111 = load i32, i32* %110, align 8
  %112 = icmp eq i32 %111, 118
  br i1 %112, label %113, label %118

113:                                              ; preds = %109
  %114 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %115, 57
  br i1 %116, label %117, label %118

117:                                              ; preds = %113
  store i32 1, i32* %2, align 4
  br label %247

118:                                              ; preds = %113, %109, %105, %101
  %119 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %120 = load i32, i32* %119, align 16
  %121 = icmp eq i32 %120, 43
  br i1 %121, label %122, label %135

122:                                              ; preds = %118
  %123 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1
  %124 = load i32, i32* %123, align 4
  %125 = icmp eq i32 %124, 47
  br i1 %125, label %126, label %135

126:                                              ; preds = %122
  %127 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2
  %128 = load i32, i32* %127, align 8
  %129 = icmp eq i32 %128, 118
  br i1 %129, label %130, label %135

130:                                              ; preds = %126
  %131 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3
  %132 = load i32, i32* %131, align 4
  %133 = icmp eq i32 %132, 43
  br i1 %133, label %134, label %135

134:                                              ; preds = %130
  store i32 1, i32* %2, align 4
  br label %247

135:                                              ; preds = %130, %126, %122, %118
  %136 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %137 = load i32, i32* %136, align 16
  %138 = icmp eq i32 %137, 43
  br i1 %138, label %139, label %152

139:                                              ; preds = %135
  %140 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1
  %141 = load i32, i32* %140, align 4
  %142 = icmp eq i32 %141, 47
  br i1 %142, label %143, label %152

143:                                              ; preds = %139
  %144 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2
  %145 = load i32, i32* %144, align 8
  %146 = icmp eq i32 %145, 118
  br i1 %146, label %147, label %152

147:                                              ; preds = %143
  %148 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3
  %149 = load i32, i32* %148, align 4
  %150 = icmp eq i32 %149, 47
  br i1 %150, label %151, label %152

151:                                              ; preds = %147
  store i32 1, i32* %2, align 4
  br label %247

152:                                              ; preds = %147, %143, %139, %135
  %153 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %154 = load i32, i32* %153, align 16
  %155 = icmp eq i32 %154, 43
  br i1 %155, label %156, label %173

156:                                              ; preds = %152
  %157 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1
  %158 = load i32, i32* %157, align 4
  %159 = icmp eq i32 %158, 47
  br i1 %159, label %160, label %173

160:                                              ; preds = %156
  %161 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2
  %162 = load i32, i32* %161, align 8
  %163 = icmp eq i32 %162, 118
  br i1 %163, label %164, label %173

164:                                              ; preds = %160
  %165 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3
  %166 = load i32, i32* %165, align 4
  %167 = icmp eq i32 %166, 56
  br i1 %167, label %168, label %173

168:                                              ; preds = %164
  %169 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4
  %170 = load i32, i32* %169, align 16
  %171 = icmp eq i32 %170, 45
  br i1 %171, label %172, label %173

172:                                              ; preds = %168
  store i32 1, i32* %2, align 4
  br label %247

173:                                              ; preds = %168, %164, %160, %156, %152
  %174 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %175 = load i32, i32* %174, align 16
  %176 = icmp eq i32 %175, 247
  br i1 %176, label %177, label %186

177:                                              ; preds = %173
  %178 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1
  %179 = load i32, i32* %178, align 4
  %180 = icmp eq i32 %179, 100
  br i1 %180, label %181, label %186

181:                                              ; preds = %177
  %182 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2
  %183 = load i32, i32* %182, align 8
  %184 = icmp eq i32 %183, 76
  br i1 %184, label %185, label %186

185:                                              ; preds = %181
  store i32 1, i32* %2, align 4
  br label %247

186:                                              ; preds = %181, %177, %173
  %187 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %188 = load i32, i32* %187, align 16
  %189 = icmp eq i32 %188, 221
  br i1 %189, label %190, label %203

190:                                              ; preds = %186
  %191 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1
  %192 = load i32, i32* %191, align 4
  %193 = icmp eq i32 %192, 115
  br i1 %193, label %194, label %203

194:                                              ; preds = %190
  %195 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2
  %196 = load i32, i32* %195, align 8
  %197 = icmp eq i32 %196, 102
  br i1 %197, label %198, label %203

198:                                              ; preds = %194
  %199 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3
  %200 = load i32, i32* %199, align 4
  %201 = icmp eq i32 %200, 115
  br i1 %201, label %202, label %203

202:                                              ; preds = %198
  store i32 1, i32* %2, align 4
  br label %247

203:                                              ; preds = %198, %194, %190, %186
  %204 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %205 = load i32, i32* %204, align 16
  %206 = icmp eq i32 %205, 14
  br i1 %206, label %207, label %216

207:                                              ; preds = %203
  %208 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1
  %209 = load i32, i32* %208, align 4
  %210 = icmp eq i32 %209, 254
  br i1 %210, label %211, label %216

211:                                              ; preds = %207
  %212 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2
  %213 = load i32, i32* %212, align 8
  %214 = icmp eq i32 %213, 255
  br i1 %214, label %215, label %216

215:                                              ; preds = %211
  store i32 1, i32* %2, align 4
  br label %247

216:                                              ; preds = %211, %207, %203
  %217 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %218 = load i32, i32* %217, align 16
  %219 = icmp eq i32 %218, 251
  br i1 %219, label %220, label %229

220:                                              ; preds = %216
  %221 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1
  %222 = load i32, i32* %221, align 4
  %223 = icmp eq i32 %222, 238
  br i1 %223, label %224, label %229

224:                                              ; preds = %220
  %225 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2
  %226 = load i32, i32* %225, align 8
  %227 = icmp eq i32 %226, 40
  br i1 %227, label %228, label %229

228:                                              ; preds = %224
  store i32 1, i32* %2, align 4
  br label %247

229:                                              ; preds = %224, %220, %216
  %230 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %231 = load i32, i32* %230, align 16
  %232 = icmp eq i32 %231, 132
  br i1 %232, label %233, label %246

233:                                              ; preds = %229
  %234 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1
  %235 = load i32, i32* %234, align 4
  %236 = icmp eq i32 %235, 49
  br i1 %236, label %237, label %246

237:                                              ; preds = %233
  %238 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2
  %239 = load i32, i32* %238, align 8
  %240 = icmp eq i32 %239, 149
  br i1 %240, label %241, label %246

241:                                              ; preds = %237
  %242 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3
  %243 = load i32, i32* %242, align 4
  %244 = icmp eq i32 %243, 51
  br i1 %244, label %245, label %246

245:                                              ; preds = %241
  store i32 1, i32* %2, align 4
  br label %247

246:                                              ; preds = %241, %237, %233, %229
  store i32 0, i32* %2, align 4
  br label %247

247:                                              ; preds = %246, %245, %228, %215, %202, %185, %172, %151, %134, %117, %100, %83, %66, %49, %40, %31, %18, %11
  %248 = load i32, i32* %2, align 4
  ret i32 %248
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @hc_fopen(i32*, i8*, i8*) #2

declare dso_local i64 @hc_fread(i32*, i32, i32, i32*) #2

declare dso_local i32 @hc_fclose(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
