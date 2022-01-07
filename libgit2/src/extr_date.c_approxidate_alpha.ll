; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_date.c_approxidate_alpha.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_date.c_approxidate_alpha.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.special = type { i8*, i32 (%struct.tm*, %struct.tm*, i32*)* }
%struct.tm = type { i32, i32, i64 }
%struct.typelen = type { i8*, i32 }

@month_names = common dso_local global i8** null, align 8
@special = common dso_local global %struct.special* null, align 8
@number_name = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [5 x i8] c"last\00", align 1
@typelen = common dso_local global %struct.typelen* null, align 8
@weekday_names = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"months\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"years\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, %struct.tm*, %struct.tm*, i32*, i32*)* @approxidate_alpha to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @approxidate_alpha(i8* %0, %struct.tm* %1, %struct.tm* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.tm*, align 8
  %9 = alloca %struct.tm*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.typelen*, align 8
  %13 = alloca %struct.special*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store %struct.tm* %1, %struct.tm** %8, align 8
  store %struct.tm* %2, %struct.tm** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %24 = load i8*, i8** %7, align 8
  store i8* %24, i8** %14, align 8
  br label %25

25:                                               ; preds = %31, %5
  %26 = load i8*, i8** %14, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %14, align 8
  %28 = load i8, i8* %27, align 1
  %29 = call i64 @isalpha(i8 signext %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %25

32:                                               ; preds = %25
  store i32 0, i32* %15, align 4
  br label %33

33:                                               ; preds = %54, %32
  %34 = load i32, i32* %15, align 4
  %35 = icmp slt i32 %34, 12
  br i1 %35, label %36, label %57

36:                                               ; preds = %33
  %37 = load i8*, i8** %7, align 8
  %38 = load i8**, i8*** @month_names, align 8
  %39 = load i32, i32* %15, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @match_string(i8* %37, i8* %42)
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %16, align 8
  %45 = load i64, i64* %16, align 8
  %46 = icmp uge i64 %45, 3
  br i1 %46, label %47, label %53

47:                                               ; preds = %36
  %48 = load i32, i32* %15, align 4
  %49 = load %struct.tm*, %struct.tm** %8, align 8
  %50 = getelementptr inbounds %struct.tm, %struct.tm* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load i32*, i32** %11, align 8
  store i32 1, i32* %51, align 4
  %52 = load i8*, i8** %14, align 8
  store i8* %52, i8** %6, align 8
  br label %270

53:                                               ; preds = %36
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %15, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %15, align 4
  br label %33

57:                                               ; preds = %33
  %58 = load %struct.special*, %struct.special** @special, align 8
  store %struct.special* %58, %struct.special** %13, align 8
  br label %59

59:                                               ; preds = %88, %57
  %60 = load %struct.special*, %struct.special** %13, align 8
  %61 = getelementptr inbounds %struct.special, %struct.special* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %91

64:                                               ; preds = %59
  %65 = load %struct.special*, %struct.special** %13, align 8
  %66 = getelementptr inbounds %struct.special, %struct.special* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i64 @strlen(i8* %67)
  store i64 %68, i64* %17, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = load %struct.special*, %struct.special** %13, align 8
  %71 = getelementptr inbounds %struct.special, %struct.special* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @match_string(i8* %69, i8* %72)
  %74 = sext i32 %73 to i64
  %75 = load i64, i64* %17, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %64
  %78 = load %struct.special*, %struct.special** %13, align 8
  %79 = getelementptr inbounds %struct.special, %struct.special* %78, i32 0, i32 1
  %80 = load i32 (%struct.tm*, %struct.tm*, i32*)*, i32 (%struct.tm*, %struct.tm*, i32*)** %79, align 8
  %81 = load %struct.tm*, %struct.tm** %8, align 8
  %82 = load %struct.tm*, %struct.tm** %9, align 8
  %83 = load i32*, i32** %10, align 8
  %84 = call i32 %80(%struct.tm* %81, %struct.tm* %82, i32* %83)
  %85 = load i32*, i32** %11, align 8
  store i32 1, i32* %85, align 4
  %86 = load i8*, i8** %14, align 8
  store i8* %86, i8** %6, align 8
  br label %270

87:                                               ; preds = %64
  br label %88

88:                                               ; preds = %87
  %89 = load %struct.special*, %struct.special** %13, align 8
  %90 = getelementptr inbounds %struct.special, %struct.special* %89, i32 1
  store %struct.special* %90, %struct.special** %13, align 8
  br label %59

91:                                               ; preds = %59
  %92 = load i32*, i32** %10, align 8
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %134, label %95

95:                                               ; preds = %91
  store i32 1, i32* %15, align 4
  br label %96

96:                                               ; preds = %122, %95
  %97 = load i32, i32* %15, align 4
  %98 = icmp slt i32 %97, 11
  br i1 %98, label %99, label %125

99:                                               ; preds = %96
  %100 = load i8**, i8*** @number_name, align 8
  %101 = load i32, i32* %15, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8*, i8** %100, i64 %102
  %104 = load i8*, i8** %103, align 8
  %105 = call i64 @strlen(i8* %104)
  store i64 %105, i64* %18, align 8
  %106 = load i8*, i8** %7, align 8
  %107 = load i8**, i8*** @number_name, align 8
  %108 = load i32, i32* %15, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8*, i8** %107, i64 %109
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @match_string(i8* %106, i8* %111)
  %113 = sext i32 %112 to i64
  %114 = load i64, i64* %18, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %99
  %117 = load i32, i32* %15, align 4
  %118 = load i32*, i32** %10, align 8
  store i32 %117, i32* %118, align 4
  %119 = load i32*, i32** %11, align 8
  store i32 1, i32* %119, align 4
  %120 = load i8*, i8** %14, align 8
  store i8* %120, i8** %6, align 8
  br label %270

121:                                              ; preds = %99
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %15, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %15, align 4
  br label %96

125:                                              ; preds = %96
  %126 = load i8*, i8** %7, align 8
  %127 = call i32 @match_string(i8* %126, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %128 = icmp eq i32 %127, 4
  br i1 %128, label %129, label %132

129:                                              ; preds = %125
  %130 = load i32*, i32** %10, align 8
  store i32 1, i32* %130, align 4
  %131 = load i32*, i32** %11, align 8
  store i32 1, i32* %131, align 4
  br label %132

132:                                              ; preds = %129, %125
  %133 = load i8*, i8** %14, align 8
  store i8* %133, i8** %6, align 8
  br label %270

134:                                              ; preds = %91
  %135 = load %struct.typelen*, %struct.typelen** @typelen, align 8
  store %struct.typelen* %135, %struct.typelen** %12, align 8
  br label %136

136:                                              ; preds = %168, %134
  %137 = load %struct.typelen*, %struct.typelen** %12, align 8
  %138 = getelementptr inbounds %struct.typelen, %struct.typelen* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %141, label %171

141:                                              ; preds = %136
  %142 = load %struct.typelen*, %struct.typelen** %12, align 8
  %143 = getelementptr inbounds %struct.typelen, %struct.typelen* %142, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = call i64 @strlen(i8* %144)
  store i64 %145, i64* %19, align 8
  %146 = load i8*, i8** %7, align 8
  %147 = load %struct.typelen*, %struct.typelen** %12, align 8
  %148 = getelementptr inbounds %struct.typelen, %struct.typelen* %147, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 @match_string(i8* %146, i8* %149)
  %151 = sext i32 %150 to i64
  %152 = load i64, i64* %19, align 8
  %153 = sub i64 %152, 1
  %154 = icmp uge i64 %151, %153
  br i1 %154, label %155, label %168

155:                                              ; preds = %141
  %156 = load %struct.tm*, %struct.tm** %8, align 8
  %157 = load %struct.tm*, %struct.tm** %9, align 8
  %158 = load %struct.typelen*, %struct.typelen** %12, align 8
  %159 = getelementptr inbounds %struct.typelen, %struct.typelen* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = load i32*, i32** %10, align 8
  %162 = load i32, i32* %161, align 4
  %163 = mul nsw i32 %160, %162
  %164 = call i32 @update_tm(%struct.tm* %156, %struct.tm* %157, i32 %163)
  %165 = load i32*, i32** %10, align 8
  store i32 0, i32* %165, align 4
  %166 = load i32*, i32** %11, align 8
  store i32 1, i32* %166, align 4
  %167 = load i8*, i8** %14, align 8
  store i8* %167, i8** %6, align 8
  br label %270

168:                                              ; preds = %141
  %169 = load %struct.typelen*, %struct.typelen** %12, align 8
  %170 = getelementptr inbounds %struct.typelen, %struct.typelen* %169, i32 1
  store %struct.typelen* %170, %struct.typelen** %12, align 8
  br label %136

171:                                              ; preds = %136
  store i32 0, i32* %15, align 4
  br label %172

172:                                              ; preds = %216, %171
  %173 = load i32, i32* %15, align 4
  %174 = icmp slt i32 %173, 7
  br i1 %174, label %175, label %219

175:                                              ; preds = %172
  %176 = load i8*, i8** %7, align 8
  %177 = load i8**, i8*** @weekday_names, align 8
  %178 = load i32, i32* %15, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8*, i8** %177, i64 %179
  %181 = load i8*, i8** %180, align 8
  %182 = call i32 @match_string(i8* %176, i8* %181)
  %183 = sext i32 %182 to i64
  store i64 %183, i64* %20, align 8
  %184 = load i64, i64* %20, align 8
  %185 = icmp uge i64 %184, 3
  br i1 %185, label %186, label %215

186:                                              ; preds = %175
  %187 = load i32*, i32** %10, align 8
  %188 = load i32, i32* %187, align 4
  %189 = sub nsw i32 %188, 1
  store i32 %189, i32* %22, align 4
  %190 = load i32*, i32** %10, align 8
  store i32 0, i32* %190, align 4
  %191 = load %struct.tm*, %struct.tm** %8, align 8
  %192 = getelementptr inbounds %struct.tm, %struct.tm* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* %15, align 4
  %195 = sub nsw i32 %193, %194
  store i32 %195, i32* %21, align 4
  %196 = load i32, i32* %21, align 4
  %197 = icmp sle i32 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %186
  %199 = load i32, i32* %22, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %22, align 4
  br label %201

201:                                              ; preds = %198, %186
  %202 = load i32, i32* %22, align 4
  %203 = mul nsw i32 7, %202
  %204 = load i32, i32* %21, align 4
  %205 = add nsw i32 %204, %203
  store i32 %205, i32* %21, align 4
  %206 = load %struct.tm*, %struct.tm** %8, align 8
  %207 = load %struct.tm*, %struct.tm** %9, align 8
  %208 = load i32, i32* %21, align 4
  %209 = mul nsw i32 %208, 24
  %210 = mul nsw i32 %209, 60
  %211 = mul nsw i32 %210, 60
  %212 = call i32 @update_tm(%struct.tm* %206, %struct.tm* %207, i32 %211)
  %213 = load i32*, i32** %11, align 8
  store i32 1, i32* %213, align 4
  %214 = load i8*, i8** %14, align 8
  store i8* %214, i8** %6, align 8
  br label %270

215:                                              ; preds = %175
  br label %216

216:                                              ; preds = %215
  %217 = load i32, i32* %15, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %15, align 4
  br label %172

219:                                              ; preds = %172
  %220 = load i8*, i8** %7, align 8
  %221 = call i32 @match_string(i8* %220, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %222 = icmp sge i32 %221, 5
  br i1 %222, label %223, label %250

223:                                              ; preds = %219
  %224 = load %struct.tm*, %struct.tm** %8, align 8
  %225 = load %struct.tm*, %struct.tm** %9, align 8
  %226 = call i32 @update_tm(%struct.tm* %224, %struct.tm* %225, i32 0)
  %227 = load %struct.tm*, %struct.tm** %8, align 8
  %228 = getelementptr inbounds %struct.tm, %struct.tm* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = load i32*, i32** %10, align 8
  %231 = load i32, i32* %230, align 4
  %232 = sub nsw i32 %229, %231
  store i32 %232, i32* %23, align 4
  %233 = load i32*, i32** %10, align 8
  store i32 0, i32* %233, align 4
  br label %234

234:                                              ; preds = %237, %223
  %235 = load i32, i32* %23, align 4
  %236 = icmp slt i32 %235, 0
  br i1 %236, label %237, label %244

237:                                              ; preds = %234
  %238 = load i32, i32* %23, align 4
  %239 = add nsw i32 %238, 12
  store i32 %239, i32* %23, align 4
  %240 = load %struct.tm*, %struct.tm** %8, align 8
  %241 = getelementptr inbounds %struct.tm, %struct.tm* %240, i32 0, i32 2
  %242 = load i64, i64* %241, align 8
  %243 = add nsw i64 %242, -1
  store i64 %243, i64* %241, align 8
  br label %234

244:                                              ; preds = %234
  %245 = load i32, i32* %23, align 4
  %246 = load %struct.tm*, %struct.tm** %8, align 8
  %247 = getelementptr inbounds %struct.tm, %struct.tm* %246, i32 0, i32 0
  store i32 %245, i32* %247, align 8
  %248 = load i32*, i32** %11, align 8
  store i32 1, i32* %248, align 4
  %249 = load i8*, i8** %14, align 8
  store i8* %249, i8** %6, align 8
  br label %270

250:                                              ; preds = %219
  %251 = load i8*, i8** %7, align 8
  %252 = call i32 @match_string(i8* %251, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %253 = icmp sge i32 %252, 4
  br i1 %253, label %254, label %268

254:                                              ; preds = %250
  %255 = load %struct.tm*, %struct.tm** %8, align 8
  %256 = load %struct.tm*, %struct.tm** %9, align 8
  %257 = call i32 @update_tm(%struct.tm* %255, %struct.tm* %256, i32 0)
  %258 = load i32*, i32** %10, align 8
  %259 = load i32, i32* %258, align 4
  %260 = sext i32 %259 to i64
  %261 = load %struct.tm*, %struct.tm** %8, align 8
  %262 = getelementptr inbounds %struct.tm, %struct.tm* %261, i32 0, i32 2
  %263 = load i64, i64* %262, align 8
  %264 = sub nsw i64 %263, %260
  store i64 %264, i64* %262, align 8
  %265 = load i32*, i32** %10, align 8
  store i32 0, i32* %265, align 4
  %266 = load i32*, i32** %11, align 8
  store i32 1, i32* %266, align 4
  %267 = load i8*, i8** %14, align 8
  store i8* %267, i8** %6, align 8
  br label %270

268:                                              ; preds = %250
  %269 = load i8*, i8** %14, align 8
  store i8* %269, i8** %6, align 8
  br label %270

270:                                              ; preds = %268, %254, %244, %201, %155, %132, %116, %77, %47
  %271 = load i8*, i8** %6, align 8
  ret i8* %271
}

declare dso_local i64 @isalpha(i8 signext) #1

declare dso_local i32 @match_string(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @update_tm(%struct.tm*, %struct.tm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
