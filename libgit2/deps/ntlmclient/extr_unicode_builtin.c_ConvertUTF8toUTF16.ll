; ModuleID = '/home/carl/AnghaBench/libgit2/deps/ntlmclient/extr_unicode_builtin.c_ConvertUTF8toUTF16.c'
source_filename = "/home/carl/AnghaBench/libgit2/deps/ntlmclient/extr_unicode_builtin.c_ConvertUTF8toUTF16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@conversionOK = common dso_local global i32 0, align 4
@trailingBytesForUTF8 = common dso_local global i16* null, align 8
@sourceExhausted = common dso_local global i32 0, align 4
@sourceIllegal = common dso_local global i32 0, align 4
@offsetsFromUTF8 = common dso_local global i64* null, align 8
@targetExhausted = common dso_local global i32 0, align 4
@UNI_MAX_BMP = common dso_local global i32 0, align 4
@UNI_SUR_HIGH_START = common dso_local global i32 0, align 4
@UNI_SUR_LOW_END = common dso_local global i32 0, align 4
@strictConversion = common dso_local global i64 0, align 8
@UNI_REPLACEMENT_CHAR = common dso_local global i8* null, align 8
@UNI_MAX_UTF16 = common dso_local global i32 0, align 4
@halfBase = common dso_local global i64 0, align 8
@halfShift = common dso_local global i32 0, align 4
@halfMask = common dso_local global i32 0, align 4
@UNI_SUR_LOW_START = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64**, i64*, i8***, i8**, i64)* @ConvertUTF8toUTF16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ConvertUTF8toUTF16(i64** %0, i64* %1, i8*** %2, i8** %3, i64 %4) #0 {
  %6 = alloca i64**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8***, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i16, align 2
  store i64** %0, i64*** %6, align 8
  store i64* %1, i64** %7, align 8
  store i8*** %2, i8**** %8, align 8
  store i8** %3, i8*** %9, align 8
  store i64 %4, i64* %10, align 8
  %16 = load i32, i32* @conversionOK, align 4
  store i32 %16, i32* %11, align 4
  %17 = load i64**, i64*** %6, align 8
  %18 = load i64*, i64** %17, align 8
  store i64* %18, i64** %12, align 8
  %19 = load i8***, i8**** %8, align 8
  %20 = load i8**, i8*** %19, align 8
  store i8** %20, i8*** %13, align 8
  br label %21

21:                                               ; preds = %233, %5
  %22 = load i64*, i64** %12, align 8
  %23 = load i64*, i64** %7, align 8
  %24 = icmp ult i64* %22, %23
  br i1 %24, label %25, label %234

25:                                               ; preds = %21
  store i32 0, i32* %14, align 4
  %26 = load i16*, i16** @trailingBytesForUTF8, align 8
  %27 = load i64*, i64** %12, align 8
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i16, i16* %26, i64 %28
  %30 = load i16, i16* %29, align 2
  store i16 %30, i16* %15, align 2
  %31 = load i16, i16* %15, align 2
  %32 = zext i16 %31 to i64
  %33 = load i64*, i64** %7, align 8
  %34 = load i64*, i64** %12, align 8
  %35 = ptrtoint i64* %33 to i64
  %36 = ptrtoint i64* %34 to i64
  %37 = sub i64 %35, %36
  %38 = sdiv exact i64 %37, 8
  %39 = icmp sge i64 %32, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %25
  %41 = load i32, i32* @sourceExhausted, align 4
  store i32 %41, i32* %11, align 4
  br label %234

42:                                               ; preds = %25
  %43 = load i64*, i64** %12, align 8
  %44 = load i16, i16* %15, align 2
  %45 = zext i16 %44 to i32
  %46 = add nsw i32 %45, 1
  %47 = trunc i32 %46 to i16
  %48 = call i32 @isLegalUTF8(i64* %43, i16 zeroext %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %42
  %51 = load i32, i32* @sourceIllegal, align 4
  store i32 %51, i32* %11, align 4
  br label %234

52:                                               ; preds = %42
  %53 = load i16, i16* %15, align 2
  %54 = zext i16 %53 to i32
  switch i32 %54, label %113 [
    i32 5, label %55
    i32 4, label %65
    i32 3, label %75
    i32 2, label %85
    i32 1, label %95
    i32 0, label %105
  ]

55:                                               ; preds = %52
  %56 = load i64*, i64** %12, align 8
  %57 = getelementptr inbounds i64, i64* %56, i32 1
  store i64* %57, i64** %12, align 8
  %58 = load i64, i64* %56, align 8
  %59 = load i32, i32* %14, align 4
  %60 = sext i32 %59 to i64
  %61 = add i64 %60, %58
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %14, align 4
  %64 = shl i32 %63, 6
  store i32 %64, i32* %14, align 4
  br label %65

65:                                               ; preds = %52, %55
  %66 = load i64*, i64** %12, align 8
  %67 = getelementptr inbounds i64, i64* %66, i32 1
  store i64* %67, i64** %12, align 8
  %68 = load i64, i64* %66, align 8
  %69 = load i32, i32* %14, align 4
  %70 = sext i32 %69 to i64
  %71 = add i64 %70, %68
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %14, align 4
  %74 = shl i32 %73, 6
  store i32 %74, i32* %14, align 4
  br label %75

75:                                               ; preds = %52, %65
  %76 = load i64*, i64** %12, align 8
  %77 = getelementptr inbounds i64, i64* %76, i32 1
  store i64* %77, i64** %12, align 8
  %78 = load i64, i64* %76, align 8
  %79 = load i32, i32* %14, align 4
  %80 = sext i32 %79 to i64
  %81 = add i64 %80, %78
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %14, align 4
  %83 = load i32, i32* %14, align 4
  %84 = shl i32 %83, 6
  store i32 %84, i32* %14, align 4
  br label %85

85:                                               ; preds = %52, %75
  %86 = load i64*, i64** %12, align 8
  %87 = getelementptr inbounds i64, i64* %86, i32 1
  store i64* %87, i64** %12, align 8
  %88 = load i64, i64* %86, align 8
  %89 = load i32, i32* %14, align 4
  %90 = sext i32 %89 to i64
  %91 = add i64 %90, %88
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %14, align 4
  %93 = load i32, i32* %14, align 4
  %94 = shl i32 %93, 6
  store i32 %94, i32* %14, align 4
  br label %95

95:                                               ; preds = %52, %85
  %96 = load i64*, i64** %12, align 8
  %97 = getelementptr inbounds i64, i64* %96, i32 1
  store i64* %97, i64** %12, align 8
  %98 = load i64, i64* %96, align 8
  %99 = load i32, i32* %14, align 4
  %100 = sext i32 %99 to i64
  %101 = add i64 %100, %98
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %14, align 4
  %103 = load i32, i32* %14, align 4
  %104 = shl i32 %103, 6
  store i32 %104, i32* %14, align 4
  br label %105

105:                                              ; preds = %52, %95
  %106 = load i64*, i64** %12, align 8
  %107 = getelementptr inbounds i64, i64* %106, i32 1
  store i64* %107, i64** %12, align 8
  %108 = load i64, i64* %106, align 8
  %109 = load i32, i32* %14, align 4
  %110 = sext i32 %109 to i64
  %111 = add i64 %110, %108
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %14, align 4
  br label %113

113:                                              ; preds = %105, %52
  %114 = load i64*, i64** @offsetsFromUTF8, align 8
  %115 = load i16, i16* %15, align 2
  %116 = zext i16 %115 to i64
  %117 = getelementptr inbounds i64, i64* %114, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = load i32, i32* %14, align 4
  %120 = sext i32 %119 to i64
  %121 = sub nsw i64 %120, %118
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %14, align 4
  %123 = load i8**, i8*** %13, align 8
  %124 = load i8**, i8*** %9, align 8
  %125 = icmp uge i8** %123, %124
  br i1 %125, label %126, label %135

126:                                              ; preds = %113
  %127 = load i16, i16* %15, align 2
  %128 = zext i16 %127 to i32
  %129 = add nsw i32 %128, 1
  %130 = load i64*, i64** %12, align 8
  %131 = sext i32 %129 to i64
  %132 = sub i64 0, %131
  %133 = getelementptr inbounds i64, i64* %130, i64 %132
  store i64* %133, i64** %12, align 8
  %134 = load i32, i32* @targetExhausted, align 4
  store i32 %134, i32* %11, align 4
  br label %234

135:                                              ; preds = %113
  %136 = load i32, i32* %14, align 4
  %137 = load i32, i32* @UNI_MAX_BMP, align 4
  %138 = icmp sle i32 %136, %137
  br i1 %138, label %139, label %172

139:                                              ; preds = %135
  %140 = load i32, i32* %14, align 4
  %141 = load i32, i32* @UNI_SUR_HIGH_START, align 4
  %142 = icmp sge i32 %140, %141
  br i1 %142, label %143, label %165

143:                                              ; preds = %139
  %144 = load i32, i32* %14, align 4
  %145 = load i32, i32* @UNI_SUR_LOW_END, align 4
  %146 = icmp sle i32 %144, %145
  br i1 %146, label %147, label %165

147:                                              ; preds = %143
  %148 = load i64, i64* %10, align 8
  %149 = load i64, i64* @strictConversion, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %160

151:                                              ; preds = %147
  %152 = load i16, i16* %15, align 2
  %153 = zext i16 %152 to i32
  %154 = add nsw i32 %153, 1
  %155 = load i64*, i64** %12, align 8
  %156 = sext i32 %154 to i64
  %157 = sub i64 0, %156
  %158 = getelementptr inbounds i64, i64* %155, i64 %157
  store i64* %158, i64** %12, align 8
  %159 = load i32, i32* @sourceIllegal, align 4
  store i32 %159, i32* %11, align 4
  br label %234

160:                                              ; preds = %147
  %161 = load i8*, i8** @UNI_REPLACEMENT_CHAR, align 8
  %162 = load i8**, i8*** %13, align 8
  %163 = getelementptr inbounds i8*, i8** %162, i32 1
  store i8** %163, i8*** %13, align 8
  store i8* %161, i8** %162, align 8
  br label %164

164:                                              ; preds = %160
  br label %171

165:                                              ; preds = %143, %139
  %166 = load i32, i32* %14, align 4
  %167 = sext i32 %166 to i64
  %168 = inttoptr i64 %167 to i8*
  %169 = load i8**, i8*** %13, align 8
  %170 = getelementptr inbounds i8*, i8** %169, i32 1
  store i8** %170, i8*** %13, align 8
  store i8* %168, i8** %169, align 8
  br label %171

171:                                              ; preds = %165, %164
  br label %233

172:                                              ; preds = %135
  %173 = load i32, i32* %14, align 4
  %174 = load i32, i32* @UNI_MAX_UTF16, align 4
  %175 = icmp sgt i32 %173, %174
  br i1 %175, label %176, label %194

176:                                              ; preds = %172
  %177 = load i64, i64* %10, align 8
  %178 = load i64, i64* @strictConversion, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %189

180:                                              ; preds = %176
  %181 = load i32, i32* @sourceIllegal, align 4
  store i32 %181, i32* %11, align 4
  %182 = load i16, i16* %15, align 2
  %183 = zext i16 %182 to i32
  %184 = add nsw i32 %183, 1
  %185 = load i64*, i64** %12, align 8
  %186 = sext i32 %184 to i64
  %187 = sub i64 0, %186
  %188 = getelementptr inbounds i64, i64* %185, i64 %187
  store i64* %188, i64** %12, align 8
  br label %234

189:                                              ; preds = %176
  %190 = load i8*, i8** @UNI_REPLACEMENT_CHAR, align 8
  %191 = load i8**, i8*** %13, align 8
  %192 = getelementptr inbounds i8*, i8** %191, i32 1
  store i8** %192, i8*** %13, align 8
  store i8* %190, i8** %191, align 8
  br label %193

193:                                              ; preds = %189
  br label %232

194:                                              ; preds = %172
  %195 = load i8**, i8*** %13, align 8
  %196 = getelementptr inbounds i8*, i8** %195, i64 1
  %197 = load i8**, i8*** %9, align 8
  %198 = icmp uge i8** %196, %197
  br i1 %198, label %199, label %208

199:                                              ; preds = %194
  %200 = load i16, i16* %15, align 2
  %201 = zext i16 %200 to i32
  %202 = add nsw i32 %201, 1
  %203 = load i64*, i64** %12, align 8
  %204 = sext i32 %202 to i64
  %205 = sub i64 0, %204
  %206 = getelementptr inbounds i64, i64* %203, i64 %205
  store i64* %206, i64** %12, align 8
  %207 = load i32, i32* @targetExhausted, align 4
  store i32 %207, i32* %11, align 4
  br label %234

208:                                              ; preds = %194
  %209 = load i64, i64* @halfBase, align 8
  %210 = load i32, i32* %14, align 4
  %211 = sext i32 %210 to i64
  %212 = sub nsw i64 %211, %209
  %213 = trunc i64 %212 to i32
  store i32 %213, i32* %14, align 4
  %214 = load i32, i32* %14, align 4
  %215 = load i32, i32* @halfShift, align 4
  %216 = ashr i32 %214, %215
  %217 = load i32, i32* @UNI_SUR_HIGH_START, align 4
  %218 = add nsw i32 %216, %217
  %219 = sext i32 %218 to i64
  %220 = inttoptr i64 %219 to i8*
  %221 = load i8**, i8*** %13, align 8
  %222 = getelementptr inbounds i8*, i8** %221, i32 1
  store i8** %222, i8*** %13, align 8
  store i8* %220, i8** %221, align 8
  %223 = load i32, i32* %14, align 4
  %224 = load i32, i32* @halfMask, align 4
  %225 = and i32 %223, %224
  %226 = sext i32 %225 to i64
  %227 = load i64, i64* @UNI_SUR_LOW_START, align 8
  %228 = add nsw i64 %226, %227
  %229 = inttoptr i64 %228 to i8*
  %230 = load i8**, i8*** %13, align 8
  %231 = getelementptr inbounds i8*, i8** %230, i32 1
  store i8** %231, i8*** %13, align 8
  store i8* %229, i8** %230, align 8
  br label %232

232:                                              ; preds = %208, %193
  br label %233

233:                                              ; preds = %232, %171
  br label %21

234:                                              ; preds = %199, %180, %151, %126, %50, %40, %21
  %235 = load i64*, i64** %12, align 8
  %236 = load i64**, i64*** %6, align 8
  store i64* %235, i64** %236, align 8
  %237 = load i8**, i8*** %13, align 8
  %238 = load i8***, i8**** %8, align 8
  store i8** %237, i8*** %238, align 8
  %239 = load i32, i32* %11, align 4
  ret i32 %239
}

declare dso_local i32 @isLegalUTF8(i64*, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
