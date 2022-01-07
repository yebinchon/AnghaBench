; ModuleID = '/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_x509_cert_parser.c_x509_fabricate_name.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_x509_cert_parser.c_x509_fabricate_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x509_parse_context = type { i64, i64, i64, i32, i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.x509_parse_context*, i64, i8, i8**, i64)* @x509_fabricate_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_fabricate_name(%struct.x509_parse_context* %0, i64 %1, i8 zeroext %2, i8** %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.x509_parse_context*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  store %struct.x509_parse_context* %0, %struct.x509_parse_context** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8 %2, i8* %9, align 1
  store i8** %3, i8*** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load %struct.x509_parse_context*, %struct.x509_parse_context** %7, align 8
  %17 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %16, i32 0, i32 6
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i8*
  store i8* %19, i8** %13, align 8
  %20 = load i8**, i8*** %10, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %5
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %262

26:                                               ; preds = %5
  %27 = load %struct.x509_parse_context*, %struct.x509_parse_context** %7, align 8
  %28 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %52, label %31

31:                                               ; preds = %26
  %32 = load %struct.x509_parse_context*, %struct.x509_parse_context** %7, align 8
  %33 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %52, label %36

36:                                               ; preds = %31
  %37 = load %struct.x509_parse_context*, %struct.x509_parse_context** %7, align 8
  %38 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %52, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call i8* @kmalloc(i64 1, i32 %42)
  store i8* %43, i8** %15, align 8
  %44 = load i8*, i8** %15, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %262

49:                                               ; preds = %41
  %50 = load i8*, i8** %15, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 0
  store i8 0, i8* %51, align 1
  br label %253

52:                                               ; preds = %36, %31, %26
  %53 = load %struct.x509_parse_context*, %struct.x509_parse_context** %7, align 8
  %54 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %192

57:                                               ; preds = %52
  %58 = load %struct.x509_parse_context*, %struct.x509_parse_context** %7, align 8
  %59 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %192

62:                                               ; preds = %57
  %63 = load %struct.x509_parse_context*, %struct.x509_parse_context** %7, align 8
  %64 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %14, align 8
  %66 = load i8*, i8** %13, align 8
  %67 = load %struct.x509_parse_context*, %struct.x509_parse_context** %7, align 8
  %68 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = getelementptr i8, i8* %66, i64 %70
  store i8* %71, i8** %12, align 8
  %72 = load %struct.x509_parse_context*, %struct.x509_parse_context** %7, align 8
  %73 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.x509_parse_context*, %struct.x509_parse_context** %7, align 8
  %76 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp uge i64 %74, %77
  br i1 %78, label %79, label %99

79:                                               ; preds = %62
  %80 = load i8*, i8** %13, align 8
  %81 = load %struct.x509_parse_context*, %struct.x509_parse_context** %7, align 8
  %82 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = sext i32 %83 to i64
  %85 = getelementptr i8, i8* %80, i64 %84
  %86 = load i8*, i8** %13, align 8
  %87 = load %struct.x509_parse_context*, %struct.x509_parse_context** %7, align 8
  %88 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr i8, i8* %86, i64 %90
  %92 = load %struct.x509_parse_context*, %struct.x509_parse_context** %7, align 8
  %93 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = trunc i64 %94 to i32
  %96 = call i64 @memcmp(i8* %85, i8* %91, i32 %95)
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %79
  br label %235

99:                                               ; preds = %79, %62
  %100 = load %struct.x509_parse_context*, %struct.x509_parse_context** %7, align 8
  %101 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp uge i64 %102, 7
  br i1 %103, label %104, label %125

104:                                              ; preds = %99
  %105 = load %struct.x509_parse_context*, %struct.x509_parse_context** %7, align 8
  %106 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp uge i64 %107, 7
  br i1 %108, label %109, label %125

109:                                              ; preds = %104
  %110 = load i8*, i8** %13, align 8
  %111 = load %struct.x509_parse_context*, %struct.x509_parse_context** %7, align 8
  %112 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = sext i32 %113 to i64
  %115 = getelementptr i8, i8* %110, i64 %114
  %116 = load i8*, i8** %13, align 8
  %117 = load %struct.x509_parse_context*, %struct.x509_parse_context** %7, align 8
  %118 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr i8, i8* %116, i64 %120
  %122 = call i64 @memcmp(i8* %115, i8* %121, i32 7)
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %109
  br label %235

125:                                              ; preds = %109, %104, %99
  %126 = load %struct.x509_parse_context*, %struct.x509_parse_context** %7, align 8
  %127 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = add i64 %128, 2
  %130 = load %struct.x509_parse_context*, %struct.x509_parse_context** %7, align 8
  %131 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = add i64 %129, %132
  %134 = add i64 %133, 1
  %135 = load i32, i32* @GFP_KERNEL, align 4
  %136 = call i8* @kmalloc(i64 %134, i32 %135)
  store i8* %136, i8** %15, align 8
  %137 = load i8*, i8** %15, align 8
  %138 = icmp ne i8* %137, null
  br i1 %138, label %142, label %139

139:                                              ; preds = %125
  %140 = load i32, i32* @ENOMEM, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %6, align 4
  br label %262

142:                                              ; preds = %125
  %143 = load i8*, i8** %15, align 8
  %144 = load i8*, i8** %13, align 8
  %145 = load %struct.x509_parse_context*, %struct.x509_parse_context** %7, align 8
  %146 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr i8, i8* %144, i64 %148
  %150 = load %struct.x509_parse_context*, %struct.x509_parse_context** %7, align 8
  %151 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = call i32 @memcpy(i8* %143, i8* %149, i64 %152)
  %154 = load i8*, i8** %15, align 8
  %155 = load %struct.x509_parse_context*, %struct.x509_parse_context** %7, align 8
  %156 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = add i64 %157, 0
  %159 = getelementptr inbounds i8, i8* %154, i64 %158
  store i8 58, i8* %159, align 1
  %160 = load i8*, i8** %15, align 8
  %161 = load %struct.x509_parse_context*, %struct.x509_parse_context** %7, align 8
  %162 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = add i64 %163, 1
  %165 = getelementptr inbounds i8, i8* %160, i64 %164
  store i8 32, i8* %165, align 1
  %166 = load i8*, i8** %15, align 8
  %167 = load %struct.x509_parse_context*, %struct.x509_parse_context** %7, align 8
  %168 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = getelementptr inbounds i8, i8* %166, i64 %169
  %171 = getelementptr inbounds i8, i8* %170, i64 2
  %172 = load i8*, i8** %13, align 8
  %173 = load %struct.x509_parse_context*, %struct.x509_parse_context** %7, align 8
  %174 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 8
  %176 = sext i32 %175 to i64
  %177 = getelementptr i8, i8* %172, i64 %176
  %178 = load %struct.x509_parse_context*, %struct.x509_parse_context** %7, align 8
  %179 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = call i32 @memcpy(i8* %171, i8* %177, i64 %180)
  %182 = load i8*, i8** %15, align 8
  %183 = load %struct.x509_parse_context*, %struct.x509_parse_context** %7, align 8
  %184 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = add i64 %185, 2
  %187 = load %struct.x509_parse_context*, %struct.x509_parse_context** %7, align 8
  %188 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = add i64 %186, %189
  %191 = getelementptr inbounds i8, i8* %182, i64 %190
  store i8 0, i8* %191, align 1
  br label %253

192:                                              ; preds = %57, %52
  %193 = load %struct.x509_parse_context*, %struct.x509_parse_context** %7, align 8
  %194 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %207

197:                                              ; preds = %192
  %198 = load %struct.x509_parse_context*, %struct.x509_parse_context** %7, align 8
  %199 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  store i64 %200, i64* %14, align 8
  %201 = load i8*, i8** %13, align 8
  %202 = load %struct.x509_parse_context*, %struct.x509_parse_context** %7, align 8
  %203 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 8
  %205 = sext i32 %204 to i64
  %206 = getelementptr i8, i8* %201, i64 %205
  store i8* %206, i8** %12, align 8
  br label %233

207:                                              ; preds = %192
  %208 = load %struct.x509_parse_context*, %struct.x509_parse_context** %7, align 8
  %209 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %222

212:                                              ; preds = %207
  %213 = load %struct.x509_parse_context*, %struct.x509_parse_context** %7, align 8
  %214 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  store i64 %215, i64* %14, align 8
  %216 = load i8*, i8** %13, align 8
  %217 = load %struct.x509_parse_context*, %struct.x509_parse_context** %7, align 8
  %218 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %217, i32 0, i32 4
  %219 = load i32, i32* %218, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr i8, i8* %216, i64 %220
  store i8* %221, i8** %12, align 8
  br label %232

222:                                              ; preds = %207
  %223 = load %struct.x509_parse_context*, %struct.x509_parse_context** %7, align 8
  %224 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %223, i32 0, i32 2
  %225 = load i64, i64* %224, align 8
  store i64 %225, i64* %14, align 8
  %226 = load i8*, i8** %13, align 8
  %227 = load %struct.x509_parse_context*, %struct.x509_parse_context** %7, align 8
  %228 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %227, i32 0, i32 5
  %229 = load i32, i32* %228, align 8
  %230 = sext i32 %229 to i64
  %231 = getelementptr i8, i8* %226, i64 %230
  store i8* %231, i8** %12, align 8
  br label %232

232:                                              ; preds = %222, %212
  br label %233

233:                                              ; preds = %232, %197
  br label %234

234:                                              ; preds = %233
  br label %235

235:                                              ; preds = %234, %124, %98
  %236 = load i64, i64* %14, align 8
  %237 = add i64 %236, 1
  %238 = load i32, i32* @GFP_KERNEL, align 4
  %239 = call i8* @kmalloc(i64 %237, i32 %238)
  store i8* %239, i8** %15, align 8
  %240 = load i8*, i8** %15, align 8
  %241 = icmp ne i8* %240, null
  br i1 %241, label %245, label %242

242:                                              ; preds = %235
  %243 = load i32, i32* @ENOMEM, align 4
  %244 = sub nsw i32 0, %243
  store i32 %244, i32* %6, align 4
  br label %262

245:                                              ; preds = %235
  %246 = load i8*, i8** %15, align 8
  %247 = load i8*, i8** %12, align 8
  %248 = load i64, i64* %14, align 8
  %249 = call i32 @memcpy(i8* %246, i8* %247, i64 %248)
  %250 = load i8*, i8** %15, align 8
  %251 = load i64, i64* %14, align 8
  %252 = getelementptr inbounds i8, i8* %250, i64 %251
  store i8 0, i8* %252, align 1
  br label %253

253:                                              ; preds = %245, %142, %49
  %254 = load i8*, i8** %15, align 8
  %255 = load i8**, i8*** %10, align 8
  store i8* %254, i8** %255, align 8
  %256 = load %struct.x509_parse_context*, %struct.x509_parse_context** %7, align 8
  %257 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %256, i32 0, i32 0
  store i64 0, i64* %257, align 8
  %258 = load %struct.x509_parse_context*, %struct.x509_parse_context** %7, align 8
  %259 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %258, i32 0, i32 1
  store i64 0, i64* %259, align 8
  %260 = load %struct.x509_parse_context*, %struct.x509_parse_context** %7, align 8
  %261 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %260, i32 0, i32 2
  store i64 0, i64* %261, align 8
  store i32 0, i32* %6, align 4
  br label %262

262:                                              ; preds = %253, %242, %139, %46, %23
  %263 = load i32, i32* %6, align 4
  ret i32 %263
}

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
