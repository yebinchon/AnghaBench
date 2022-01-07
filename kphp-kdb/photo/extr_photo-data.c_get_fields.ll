; ModuleID = '/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_get_fields.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_get_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }

@MAX_RETURN_FIELDS = common dso_local global i32 0, align 4
@return_fields = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"location\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"original_location\00", align 1
@MAX_FIELDS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"ordering\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_fields(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %256

17:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %7, align 4
  br label %19

19:                                               ; preds = %251, %17
  %20 = load i32, i32* %7, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %19
  %23 = load i8*, i8** %5, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %23, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 44
  br i1 %30, label %31, label %35

31:                                               ; preds = %22, %19
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @MAX_RETURN_FIELDS, align 4
  %34 = icmp slt i32 %32, %33
  br label %35

35:                                               ; preds = %31, %22
  %36 = phi i1 [ false, %22 ], [ %34, %31 ]
  br i1 %36, label %37, label %254

37:                                               ; preds = %35
  br label %38

38:                                               ; preds = %56, %37
  %39 = load i8*, i8** %5, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 44
  br i1 %45, label %46, label %54

46:                                               ; preds = %38
  %47 = load i8*, i8** %5, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 0
  br label %54

54:                                               ; preds = %46, %38
  %55 = phi i1 [ false, %38 ], [ %53, %46 ]
  br i1 %55, label %56, label %59

56:                                               ; preds = %54
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %38

59:                                               ; preds = %54
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %61 = load i8*, i8** %5, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %6, align 4
  %67 = sub nsw i32 %65, %66
  %68 = call i64 @get_field_id_len(%struct.TYPE_4__* %60, i8* %64, i32 %67)
  %69 = load i64*, i64** @return_fields, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  store i64 %68, i64* %72, align 8
  %73 = load i64*, i64** @return_fields, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %247

79:                                               ; preds = %59
  %80 = load i8*, i8** %5, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  %84 = call i32 @strncmp(i8* %83, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 8)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %79
  %87 = load i8*, i8** %5, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  %91 = call i32 @strncmp(i8* %90, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 17)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %224, label %93

93:                                               ; preds = %86, %79
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 0
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 112
  br i1 %100, label %101, label %224

101:                                              ; preds = %93
  store i32 0, i32* %9, align 4
  %102 = load i8*, i8** %5, align 8
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp eq i32 %107, 111
  br i1 %108, label %109, label %112

109:                                              ; preds = %101
  %110 = load i32, i32* %6, align 4
  %111 = add nsw i32 %110, 9
  store i32 %111, i32* %6, align 4
  store i32 128, i32* %9, align 4
  br label %112

112:                                              ; preds = %109, %101
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* %6, align 4
  %115 = sub nsw i32 %113, %114
  %116 = icmp eq i32 %115, 8
  br i1 %116, label %117, label %127

117:                                              ; preds = %112
  %118 = load i64, i64* @MAX_FIELDS, align 8
  %119 = load i32, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = add nsw i64 %118, %120
  %122 = load i64*, i64** @return_fields, align 8
  %123 = load i32, i32* %8, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %8, align 4
  %125 = sext i32 %123 to i64
  %126 = getelementptr inbounds i64, i64* %122, i64 %125
  store i64 %121, i64* %126, align 8
  br label %223

127:                                              ; preds = %112
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* %6, align 4
  %130 = sub nsw i32 %128, %129
  %131 = icmp sgt i32 %130, 35
  br i1 %131, label %132, label %133

132:                                              ; preds = %127
  store i32 -1, i32* %3, align 4
  br label %256

133:                                              ; preds = %127
  %134 = load i32, i32* %6, align 4
  %135 = add nsw i32 %134, 8
  store i32 %135, i32* %6, align 4
  %136 = load i32, i32* %7, align 4
  store i32 %136, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %137 = load i8*, i8** %5, align 8
  %138 = load i32, i32* %10, align 4
  %139 = sub nsw i32 %138, 1
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %137, i64 %140
  %142 = load i8, i8* %141, align 1
  %143 = sext i8 %142 to i32
  %144 = icmp sle i32 48, %143
  br i1 %144, label %145, label %164

145:                                              ; preds = %133
  %146 = load i8*, i8** %5, align 8
  %147 = load i32, i32* %10, align 4
  %148 = sub nsw i32 %147, 1
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8, i8* %146, i64 %149
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp sle i32 %152, 51
  br i1 %153, label %154, label %164

154:                                              ; preds = %145
  %155 = load i32, i32* %10, align 4
  %156 = add nsw i32 %155, -1
  store i32 %156, i32* %10, align 4
  %157 = load i8*, i8** %5, align 8
  %158 = load i32, i32* %10, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8, i8* %157, i64 %159
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  %163 = sub nsw i32 %162, 48
  store i32 %163, i32* %11, align 4
  br label %164

164:                                              ; preds = %154, %145, %133
  %165 = load i32, i32* %6, align 4
  %166 = load i32, i32* %10, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %164
  store i32 -1, i32* %3, align 4
  br label %256

169:                                              ; preds = %164
  br label %170

170:                                              ; preds = %197, %169
  %171 = load i32, i32* %6, align 4
  %172 = load i32, i32* %10, align 4
  %173 = icmp ne i32 %171, %172
  br i1 %173, label %174, label %178

174:                                              ; preds = %170
  %175 = load i32, i32* %8, align 4
  %176 = load i32, i32* @MAX_RETURN_FIELDS, align 4
  %177 = icmp slt i32 %175, %176
  br label %178

178:                                              ; preds = %174, %170
  %179 = phi i1 [ false, %170 ], [ %177, %174 ]
  br i1 %179, label %180, label %222

180:                                              ; preds = %178
  %181 = load i8*, i8** %5, align 8
  %182 = load i32, i32* %6, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8, i8* %181, i64 %183
  %185 = load i8, i8* %184, align 1
  %186 = sext i8 %185 to i32
  %187 = icmp slt i32 %186, 97
  br i1 %187, label %196, label %188

188:                                              ; preds = %180
  %189 = load i8*, i8** %5, align 8
  %190 = load i32, i32* %6, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i8, i8* %189, i64 %191
  %193 = load i8, i8* %192, align 1
  %194 = sext i8 %193 to i32
  %195 = icmp sgt i32 %194, 122
  br i1 %195, label %196, label %197

196:                                              ; preds = %188, %180
  store i32 -1, i32* %3, align 4
  br label %256

197:                                              ; preds = %188
  %198 = load i64, i64* @MAX_FIELDS, align 8
  %199 = load i32, i32* %9, align 4
  %200 = sext i32 %199 to i64
  %201 = add nsw i64 %198, %200
  %202 = load i8*, i8** %5, align 8
  %203 = load i32, i32* %6, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %6, align 4
  %205 = sext i32 %203 to i64
  %206 = getelementptr inbounds i8, i8* %202, i64 %205
  %207 = load i8, i8* %206, align 1
  %208 = sext i8 %207 to i32
  %209 = sub nsw i32 %208, 97
  %210 = add nsw i32 %209, 1
  %211 = sext i32 %210 to i64
  %212 = add nsw i64 %201, %211
  %213 = load i32, i32* %11, align 4
  %214 = shl i32 %213, 5
  %215 = sext i32 %214 to i64
  %216 = add nsw i64 %212, %215
  %217 = load i64*, i64** @return_fields, align 8
  %218 = load i32, i32* %8, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %8, align 4
  %220 = sext i32 %218 to i64
  %221 = getelementptr inbounds i64, i64* %217, i64 %220
  store i64 %216, i64* %221, align 8
  br label %170

222:                                              ; preds = %178
  br label %223

223:                                              ; preds = %222, %117
  br label %246

224:                                              ; preds = %93, %86
  %225 = load i32, i32* %7, align 4
  %226 = load i32, i32* %6, align 4
  %227 = sub nsw i32 %225, %226
  %228 = icmp eq i32 %227, 8
  br i1 %228, label %229, label %244

229:                                              ; preds = %224
  %230 = load i8*, i8** %5, align 8
  %231 = load i32, i32* %6, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i8, i8* %230, i64 %232
  %234 = call i32 @strncmp(i8* %233, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 8)
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %244, label %236

236:                                              ; preds = %229
  %237 = load i64, i64* @MAX_FIELDS, align 8
  %238 = add nsw i64 %237, 256
  %239 = load i64*, i64** @return_fields, align 8
  %240 = load i32, i32* %8, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %8, align 4
  %242 = sext i32 %240 to i64
  %243 = getelementptr inbounds i64, i64* %239, i64 %242
  store i64 %238, i64* %243, align 8
  br label %245

244:                                              ; preds = %229, %224
  store i32 -1, i32* %3, align 4
  br label %256

245:                                              ; preds = %236
  br label %246

246:                                              ; preds = %245, %223
  br label %250

247:                                              ; preds = %59
  %248 = load i32, i32* %8, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %8, align 4
  br label %250

250:                                              ; preds = %247, %246
  br label %251

251:                                              ; preds = %250
  %252 = load i32, i32* %7, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %7, align 4
  store i32 %253, i32* %6, align 4
  br label %19

254:                                              ; preds = %35
  %255 = load i32, i32* %8, align 4
  store i32 %255, i32* %3, align 4
  br label %256

256:                                              ; preds = %254, %244, %196, %168, %132, %16
  %257 = load i32, i32* %3, align 4
  ret i32 %257
}

declare dso_local i64 @get_field_id_len(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
