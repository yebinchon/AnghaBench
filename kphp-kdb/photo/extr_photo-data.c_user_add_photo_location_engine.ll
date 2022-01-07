; ModuleID = '/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_user_add_photo_location_engine.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_user_add_photo_location_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@write_only = common dso_local global i64 0, align 8
@location_buf = common dso_local global i8* null, align 8
@mode = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @user_add_photo_location_engine(i32* %0, i32 %1, i32 %2, i8 signext %3, i32 %4, i32 %5, i32 %6, i32 %7, i64 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i8, align 1
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i8, align 1
  %33 = alloca i8, align 1
  %34 = alloca i8, align 1
  %35 = alloca i64, align 8
  store i32* %0, i32** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i8 %3, i8* %14, align 1
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i64 %8, i64* %19, align 8
  %36 = load i32, i32* %16, align 4
  %37 = icmp sle i32 %36, 0
  br i1 %37, label %59, label %38

38:                                               ; preds = %9
  %39 = load i32, i32* %17, align 4
  %40 = icmp sle i32 %39, 0
  br i1 %40, label %59, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %12, align 4
  %43 = call i32 @check_photo_id(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %41
  %46 = load i8, i8* %14, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp slt i32 %47, 97
  br i1 %48, label %59, label %49

49:                                               ; preds = %45
  %50 = load i8, i8* %14, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp sgt i32 %51, 122
  br i1 %52, label %59, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* %15, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %15, align 4
  %58 = icmp sgt i32 %57, 3
  br i1 %58, label %59, label %60

59:                                               ; preds = %56, %53, %49, %45, %41, %38, %9
  store i32 0, i32* %10, align 4
  br label %236

60:                                               ; preds = %56
  %61 = load i64, i64* @write_only, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  store i32 1, i32* %10, align 4
  br label %236

64:                                               ; preds = %60
  %65 = load i32*, i32** %11, align 8
  %66 = call signext i8 @user_loaded(i32* %65)
  %67 = call i32 @assert(i8 signext %66)
  %68 = load i32*, i32** %11, align 8
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %13, align 4
  %71 = call i8* @user_photo_get_location(i32* %68, i32 %69, i32 %70, i32 1, i32* %20)
  store i8* %71, i8** %21, align 8
  %72 = load i8*, i8** %21, align 8
  %73 = icmp eq i8* %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %64
  store i32 0, i32* %10, align 4
  br label %236

75:                                               ; preds = %64
  %76 = load i8*, i8** @location_buf, align 8
  store i8* %76, i8** %22, align 8
  %77 = load i32, i32* %20, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %110

79:                                               ; preds = %75
  %80 = load i8*, i8** %21, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 0
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %110

85:                                               ; preds = %79
  %86 = load i8*, i8** %21, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 0
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = load i8, i8* @mode, align 1
  %91 = sext i8 %90 to i32
  %92 = add nsw i32 %89, %91
  %93 = sub nsw i32 0, %92
  %94 = sext i32 %93 to i64
  %95 = add i64 %94, 16
  %96 = add i64 %95, 1
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %23, align 4
  %98 = load i8*, i8** %22, align 8
  %99 = load i8*, i8** %21, align 8
  %100 = load i32, i32* %23, align 4
  %101 = call i32 @memcpy(i8* %98, i8* %99, i32 %100)
  %102 = load i32, i32* %23, align 4
  %103 = load i8*, i8** %22, align 8
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds i8, i8* %103, i64 %104
  store i8* %105, i8** %22, align 8
  %106 = load i32, i32* %23, align 4
  %107 = load i8*, i8** %21, align 8
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds i8, i8* %107, i64 %108
  store i8* %109, i8** %21, align 8
  br label %110

110:                                              ; preds = %85, %79, %75
  %111 = load i8*, i8** %22, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %22, align 8
  store i8* %111, i8** %24, align 8
  %113 = load i8, i8* %14, align 1
  %114 = sext i8 %113 to i32
  %115 = sub nsw i32 %114, 96
  %116 = trunc i32 %115 to i8
  store i8 %116, i8* %14, align 1
  %117 = load i32, i32* %15, align 4
  %118 = shl i32 %117, 5
  %119 = load i8, i8* %14, align 1
  %120 = sext i8 %119 to i32
  %121 = add nsw i32 %120, %118
  %122 = trunc i32 %121 to i8
  store i8 %122, i8* %14, align 1
  store i8 0, i8* %25, align 1
  store i32 0, i32* %26, align 4
  store i32 0, i32* %27, align 4
  store i32 0, i32* %28, align 4
  store i32 0, i32* %29, align 4
  store i32 0, i32* %30, align 4
  store i8 0, i8* %32, align 1
  store i8 0, i8* %33, align 1
  store i64 0, i64* %35, align 8
  %123 = load i32, i32* %20, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %110
  %126 = load i8*, i8** %21, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %127, i8** %21, align 8
  %128 = load i8, i8* %126, align 1
  %129 = sext i8 %128 to i32
  br label %131

130:                                              ; preds = %110
  br label %131

131:                                              ; preds = %130, %125
  %132 = phi i32 [ %129, %125 ], [ 0, %130 ]
  store i32 %132, i32* %31, align 4
  br label %133

133:                                              ; preds = %207, %131
  %134 = load i32, i32* %31, align 4
  %135 = icmp sgt i32 %134, 0
  br i1 %135, label %136, label %210

136:                                              ; preds = %133
  %137 = load i8*, i8** %21, align 8
  %138 = load i8, i8* %32, align 1
  %139 = call i32 @READ_CHAR(i8* %137, i8 signext %138)
  %140 = load i8, i8* %32, align 1
  %141 = call i32 @assert(i8 signext %140)
  %142 = load i8, i8* %32, align 1
  %143 = sext i8 %142 to i32
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %157

145:                                              ; preds = %136
  %146 = load i8, i8* %32, align 1
  %147 = sext i8 %146 to i32
  %148 = mul nsw i32 %147, -1
  %149 = trunc i32 %148 to i8
  store i8 %149, i8* %32, align 1
  %150 = load i8*, i8** %21, align 8
  %151 = load i8, i8* %34, align 1
  %152 = call i32 @READ_CHAR(i8* %150, i8 signext %151)
  %153 = load i8, i8* %34, align 1
  %154 = sext i8 %153 to i32
  %155 = load i32, i32* %27, align 4
  %156 = add nsw i32 %155, %154
  store i32 %156, i32* %27, align 4
  br label %164

157:                                              ; preds = %136
  %158 = load i8*, i8** %21, align 8
  %159 = load i32, i32* %26, align 4
  %160 = call i32 @READ_INT(i8* %158, i32 %159)
  %161 = load i8*, i8** %21, align 8
  %162 = load i32, i32* %27, align 4
  %163 = call i32 @READ_INT(i8* %161, i32 %162)
  br label %164

164:                                              ; preds = %157, %145
  %165 = load i8*, i8** %21, align 8
  %166 = load i32, i32* %28, align 4
  %167 = call i32 @READ_INT(i8* %165, i32 %166)
  %168 = load i8*, i8** %21, align 8
  %169 = load i64, i64* %35, align 8
  %170 = call i32 @READ_LONG(i8* %168, i64 %169)
  %171 = load i8, i8* %14, align 1
  %172 = sext i8 %171 to i32
  %173 = load i8, i8* %32, align 1
  %174 = sext i8 %173 to i32
  %175 = icmp sle i32 %172, %174
  br i1 %175, label %176, label %198

176:                                              ; preds = %164
  %177 = load i8*, i8** %22, align 8
  %178 = load i8, i8* %14, align 1
  %179 = load i32, i32* %16, align 4
  %180 = load i32, i32* %17, align 4
  %181 = load i32, i32* %18, align 4
  %182 = load i64, i64* %19, align 8
  %183 = call i32 @save_location(i8* %177, i8 signext %178, i32 %179, i32 %180, i32 %181, i64 %182)
  %184 = load i8, i8* %14, align 1
  %185 = sext i8 %184 to i32
  %186 = load i8, i8* %32, align 1
  %187 = sext i8 %186 to i32
  %188 = icmp ne i32 %185, %187
  br i1 %188, label %189, label %197

189:                                              ; preds = %176
  %190 = load i8*, i8** %22, align 8
  %191 = load i8, i8* %32, align 1
  %192 = load i32, i32* %26, align 4
  %193 = load i32, i32* %27, align 4
  %194 = load i32, i32* %28, align 4
  %195 = load i64, i64* %35, align 8
  %196 = call i32 @save_location(i8* %190, i8 signext %191, i32 %192, i32 %193, i32 %194, i64 %195)
  br label %197

197:                                              ; preds = %189, %176
  store i8 127, i8* %14, align 1
  br label %206

198:                                              ; preds = %164
  %199 = load i8*, i8** %22, align 8
  %200 = load i8, i8* %32, align 1
  %201 = load i32, i32* %26, align 4
  %202 = load i32, i32* %27, align 4
  %203 = load i32, i32* %28, align 4
  %204 = load i64, i64* %35, align 8
  %205 = call i32 @save_location(i8* %199, i8 signext %200, i32 %201, i32 %202, i32 %203, i64 %204)
  br label %206

206:                                              ; preds = %198, %197
  br label %207

207:                                              ; preds = %206
  %208 = load i32, i32* %31, align 4
  %209 = add nsw i32 %208, -1
  store i32 %209, i32* %31, align 4
  br label %133

210:                                              ; preds = %133
  %211 = load i8, i8* %14, align 1
  %212 = sext i8 %211 to i32
  %213 = icmp ne i32 %212, 127
  br i1 %213, label %214, label %222

214:                                              ; preds = %210
  %215 = load i8*, i8** %22, align 8
  %216 = load i8, i8* %14, align 1
  %217 = load i32, i32* %16, align 4
  %218 = load i32, i32* %17, align 4
  %219 = load i32, i32* %18, align 4
  %220 = load i64, i64* %19, align 8
  %221 = call i32 @save_location(i8* %215, i8 signext %216, i32 %217, i32 %218, i32 %219, i64 %220)
  br label %222

222:                                              ; preds = %214, %210
  %223 = load i8, i8* %25, align 1
  %224 = load i8*, i8** %24, align 8
  store i8 %223, i8* %224, align 1
  %225 = load i32*, i32** %11, align 8
  %226 = load i32, i32* %12, align 4
  %227 = load i32, i32* %13, align 4
  %228 = load i8*, i8** @location_buf, align 8
  %229 = load i8*, i8** %22, align 8
  %230 = load i8*, i8** @location_buf, align 8
  %231 = ptrtoint i8* %229 to i64
  %232 = ptrtoint i8* %230 to i64
  %233 = sub i64 %231, %232
  %234 = trunc i64 %233 to i32
  %235 = call i32 @user_photo_set_location(i32* %225, i32 %226, i32 %227, i8* %228, i32 %234)
  store i32 %235, i32* %10, align 4
  br label %236

236:                                              ; preds = %222, %74, %63, %59
  %237 = load i32, i32* %10, align 4
  ret i32 %237
}

declare dso_local i32 @check_photo_id(i32) #1

declare dso_local i32 @assert(i8 signext) #1

declare dso_local signext i8 @user_loaded(i32*) #1

declare dso_local i8* @user_photo_get_location(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @READ_CHAR(i8*, i8 signext) #1

declare dso_local i32 @READ_INT(i8*, i32) #1

declare dso_local i32 @READ_LONG(i8*, i64) #1

declare dso_local i32 @save_location(i8*, i8 signext, i32, i32, i32, i64) #1

declare dso_local i32 @user_photo_set_location(i32*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
