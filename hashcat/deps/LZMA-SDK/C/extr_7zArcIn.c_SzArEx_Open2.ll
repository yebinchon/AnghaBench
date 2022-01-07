; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_7zArcIn.c_SzArEx_Open2.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_7zArcIn.c_SzArEx_Open2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i64*, i32 }
%struct.TYPE_13__ = type { i64*, i32 }

@k7zStartHeaderSize = common dso_local global i32 0, align 4
@SZ_SEEK_CUR = common dso_local global i32 0, align 4
@SZ_ERROR_NO_ARCHIVE = common dso_local global i64 0, align 8
@k7zMajorVersion = common dso_local global i64 0, align 8
@SZ_ERROR_UNSUPPORTED = common dso_local global i64 0, align 8
@SZ_ERROR_CRC = common dso_local global i64 0, align 8
@SZ_ERROR_MEM = common dso_local global i64 0, align 8
@SZ_OK = common dso_local global i64 0, align 8
@SZ_SEEK_END = common dso_local global i32 0, align 4
@SZ_ERROR_INPUT_EOF = common dso_local global i64 0, align 8
@SZ_ERROR_ARCHIVE = common dso_local global i64 0, align 8
@k7zIdEncodedHeader = common dso_local global i64 0, align 8
@k7zIdHeader = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_14__*, i32*, i32, i32)* @SzArEx_Open2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @SzArEx_Open2(%struct.TYPE_14__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_15__, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_13__, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_15__, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %25 = load i32, i32* @k7zStartHeaderSize, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %10, align 8
  %28 = alloca i64, i64 %26, align 16
  store i64 %26, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* @SZ_SEEK_CUR, align 4
  %31 = call i32 @ILookInStream_Seek(i32* %29, i32* %12, i32 %30)
  %32 = call i32 @RINOK(i32 %31)
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* @k7zStartHeaderSize, align 4
  %35 = load i64, i64* @SZ_ERROR_NO_ARCHIVE, align 8
  %36 = call i32 @LookInStream_Read2(i32* %33, i64* %28, i32 %34, i64 %35)
  %37 = call i32 @RINOK(i32 %36)
  %38 = call i32 @TestSignatureCandidate(i64* %28)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %4
  %41 = load i64, i64* @SZ_ERROR_NO_ARCHIVE, align 8
  store i64 %41, i64* %5, align 8
  store i32 1, i32* %19, align 4
  br label %239

42:                                               ; preds = %4
  %43 = getelementptr inbounds i64, i64* %28, i64 6
  %44 = load i64, i64* %43, align 16
  %45 = load i64, i64* @k7zMajorVersion, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i64, i64* @SZ_ERROR_UNSUPPORTED, align 8
  store i64 %48, i64* %5, align 8
  store i32 1, i32* %19, align 4
  br label %239

49:                                               ; preds = %42
  %50 = getelementptr inbounds i64, i64* %28, i64 12
  %51 = call i64 @GetUi64(i64* %50)
  store i64 %51, i64* %13, align 8
  %52 = getelementptr inbounds i64, i64* %28, i64 20
  %53 = call i64 @GetUi64(i64* %52)
  store i64 %53, i64* %14, align 8
  %54 = getelementptr inbounds i64, i64* %28, i64 28
  %55 = call i64 @GetUi32(i64* %54)
  store i64 %55, i64* %16, align 8
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* @k7zStartHeaderSize, align 4
  %58 = add nsw i32 %56, %57
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = getelementptr inbounds i64, i64* %28, i64 12
  %62 = call i64 @CrcCalc(i64* %61, i64 20)
  %63 = getelementptr inbounds i64, i64* %28, i64 8
  %64 = call i64 @GetUi32(i64* %63)
  %65 = icmp ne i64 %62, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %49
  %67 = load i64, i64* @SZ_ERROR_CRC, align 8
  store i64 %67, i64* %5, align 8
  store i32 1, i32* %19, align 4
  br label %239

68:                                               ; preds = %49
  %69 = load i64, i64* %14, align 8
  store i64 %69, i64* %15, align 8
  %70 = load i64, i64* %15, align 8
  %71 = load i64, i64* %14, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load i64, i64* @SZ_ERROR_MEM, align 8
  store i64 %74, i64* %5, align 8
  store i32 1, i32* %19, align 4
  br label %239

75:                                               ; preds = %68
  %76 = load i64, i64* %15, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = load i64, i64* @SZ_OK, align 8
  store i64 %79, i64* %5, align 8
  store i32 1, i32* %19, align 4
  br label %239

80:                                               ; preds = %75
  %81 = load i64, i64* %13, align 8
  %82 = load i64, i64* %13, align 8
  %83 = load i64, i64* %14, align 8
  %84 = add i64 %82, %83
  %85 = icmp ugt i64 %81, %84
  br i1 %85, label %95, label %86

86:                                               ; preds = %80
  %87 = load i64, i64* %13, align 8
  %88 = load i64, i64* %13, align 8
  %89 = load i64, i64* %14, align 8
  %90 = add i64 %88, %89
  %91 = load i32, i32* @k7zStartHeaderSize, align 4
  %92 = sext i32 %91 to i64
  %93 = add i64 %90, %92
  %94 = icmp ugt i64 %87, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %86, %80
  %96 = load i64, i64* @SZ_ERROR_NO_ARCHIVE, align 8
  store i64 %96, i64* %5, align 8
  store i32 1, i32* %19, align 4
  br label %239

97:                                               ; preds = %86
  store i32 0, i32* %20, align 4
  %98 = load i32*, i32** %7, align 8
  %99 = load i32, i32* @SZ_SEEK_END, align 4
  %100 = call i32 @ILookInStream_Seek(i32* %98, i32* %20, i32 %99)
  %101 = call i32 @RINOK(i32 %100)
  %102 = load i32, i32* %20, align 4
  %103 = sext i32 %102 to i64
  %104 = load i32, i32* %12, align 4
  %105 = sext i32 %104 to i64
  %106 = load i64, i64* %13, align 8
  %107 = add i64 %105, %106
  %108 = icmp ult i64 %103, %107
  br i1 %108, label %131, label %109

109:                                              ; preds = %97
  %110 = load i32, i32* %20, align 4
  %111 = sext i32 %110 to i64
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* @k7zStartHeaderSize, align 4
  %114 = add nsw i32 %112, %113
  %115 = sext i32 %114 to i64
  %116 = load i64, i64* %13, align 8
  %117 = add i64 %115, %116
  %118 = icmp ult i64 %111, %117
  br i1 %118, label %131, label %119

119:                                              ; preds = %109
  %120 = load i32, i32* %20, align 4
  %121 = sext i32 %120 to i64
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* @k7zStartHeaderSize, align 4
  %124 = add nsw i32 %122, %123
  %125 = sext i32 %124 to i64
  %126 = load i64, i64* %13, align 8
  %127 = add i64 %125, %126
  %128 = load i64, i64* %14, align 8
  %129 = add i64 %127, %128
  %130 = icmp ult i64 %121, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %119, %109, %97
  %132 = load i64, i64* @SZ_ERROR_INPUT_EOF, align 8
  store i64 %132, i64* %5, align 8
  store i32 1, i32* %19, align 4
  br label %239

133:                                              ; preds = %119
  %134 = load i32*, i32** %7, align 8
  %135 = load i32, i32* %12, align 4
  %136 = load i32, i32* @k7zStartHeaderSize, align 4
  %137 = add nsw i32 %135, %136
  %138 = sext i32 %137 to i64
  %139 = load i64, i64* %13, align 8
  %140 = add i64 %138, %139
  %141 = trunc i64 %140 to i32
  %142 = call i32 @LookInStream_SeekTo(i32* %134, i32 %141)
  %143 = call i32 @RINOK(i32 %142)
  %144 = load i64, i64* %15, align 8
  %145 = load i32, i32* %9, align 4
  %146 = call i32 @Buf_Create(%struct.TYPE_15__* %17, i64 %144, i32 %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %150, label %148

148:                                              ; preds = %133
  %149 = load i64, i64* @SZ_ERROR_MEM, align 8
  store i64 %149, i64* %5, align 8
  store i32 1, i32* %19, align 4
  br label %239

150:                                              ; preds = %133
  %151 = load i32*, i32** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %153 = load i64*, i64** %152, align 8
  %154 = load i64, i64* %15, align 8
  %155 = call i64 @LookInStream_Read(i32* %151, i64* %153, i64 %154)
  store i64 %155, i64* %18, align 8
  %156 = load i64, i64* %18, align 8
  %157 = load i64, i64* @SZ_OK, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %235

159:                                              ; preds = %150
  %160 = load i64, i64* @SZ_ERROR_ARCHIVE, align 8
  store i64 %160, i64* %18, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %162 = load i64*, i64** %161, align 8
  %163 = load i64, i64* %15, align 8
  %164 = call i64 @CrcCalc(i64* %162, i64 %163)
  %165 = load i64, i64* %16, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %234

167:                                              ; preds = %159
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %169 = load i64*, i64** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  store i64* %169, i64** %170, align 8
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 1
  store i32 %172, i32* %173, align 8
  %174 = call i64 @ReadID(%struct.TYPE_13__* %21, i64* %22)
  store i64 %174, i64* %18, align 8
  %175 = load i64, i64* %18, align 8
  %176 = load i64, i64* @SZ_OK, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %216

178:                                              ; preds = %167
  %179 = load i64, i64* %22, align 8
  %180 = load i64, i64* @k7zIdEncodedHeader, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %182, label %216

182:                                              ; preds = %178
  %183 = call i32 @Buf_Init(%struct.TYPE_15__* %24)
  %184 = call i32 @SzAr_Init(i32* %23)
  %185 = load i32*, i32** %7, align 8
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* %9, align 4
  %190 = call i64 @SzReadAndDecodePackedStreams(i32* %185, %struct.TYPE_13__* %21, %struct.TYPE_15__* %24, i32 1, i32 %188, i32* %23, i32 %189)
  store i64 %190, i64* %18, align 8
  %191 = load i32, i32* %9, align 4
  %192 = call i32 @SzAr_Free(i32* %23, i32 %191)
  %193 = load i64, i64* %18, align 8
  %194 = load i64, i64* @SZ_OK, align 8
  %195 = icmp ne i64 %193, %194
  br i1 %195, label %196, label %199

196:                                              ; preds = %182
  %197 = load i32, i32* %9, align 4
  %198 = call i32 @Buf_Free(%struct.TYPE_15__* %24, i32 %197)
  br label %215

199:                                              ; preds = %182
  %200 = load i32, i32* %9, align 4
  %201 = call i32 @Buf_Free(%struct.TYPE_15__* %17, i32 %200)
  %202 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %203 = load i64*, i64** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  store i64* %203, i64** %204, align 8
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 1
  %206 = load i32, i32* %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 1
  store i32 %206, i32* %207, align 8
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %209 = load i64*, i64** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  store i64* %209, i64** %210, align 8
  %211 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 1
  %212 = load i32, i32* %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 1
  store i32 %212, i32* %213, align 8
  %214 = call i64 @ReadID(%struct.TYPE_13__* %21, i64* %22)
  store i64 %214, i64* %18, align 8
  br label %215

215:                                              ; preds = %199, %196
  br label %216

216:                                              ; preds = %215, %178, %167
  %217 = load i64, i64* %18, align 8
  %218 = load i64, i64* @SZ_OK, align 8
  %219 = icmp eq i64 %217, %218
  br i1 %219, label %220, label %233

220:                                              ; preds = %216
  %221 = load i64, i64* %22, align 8
  %222 = load i64, i64* @k7zIdHeader, align 8
  %223 = icmp eq i64 %221, %222
  br i1 %223, label %224, label %230

224:                                              ; preds = %220
  %225 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %226 = load i32*, i32** %7, align 8
  %227 = load i32, i32* %8, align 4
  %228 = load i32, i32* %9, align 4
  %229 = call i64 @SzReadHeader(%struct.TYPE_14__* %225, %struct.TYPE_13__* %21, i32* %226, i32 %227, i32 %228)
  store i64 %229, i64* %18, align 8
  br label %232

230:                                              ; preds = %220
  %231 = load i64, i64* @SZ_ERROR_UNSUPPORTED, align 8
  store i64 %231, i64* %18, align 8
  br label %232

232:                                              ; preds = %230, %224
  br label %233

233:                                              ; preds = %232, %216
  br label %234

234:                                              ; preds = %233, %159
  br label %235

235:                                              ; preds = %234, %150
  %236 = load i32, i32* %9, align 4
  %237 = call i32 @Buf_Free(%struct.TYPE_15__* %17, i32 %236)
  %238 = load i64, i64* %18, align 8
  store i64 %238, i64* %5, align 8
  store i32 1, i32* %19, align 4
  br label %239

239:                                              ; preds = %235, %148, %131, %95, %78, %73, %66, %47, %40
  %240 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %240)
  %241 = load i64, i64* %5, align 8
  ret i64 %241
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @RINOK(i32) #2

declare dso_local i32 @ILookInStream_Seek(i32*, i32*, i32) #2

declare dso_local i32 @LookInStream_Read2(i32*, i64*, i32, i64) #2

declare dso_local i32 @TestSignatureCandidate(i64*) #2

declare dso_local i64 @GetUi64(i64*) #2

declare dso_local i64 @GetUi32(i64*) #2

declare dso_local i64 @CrcCalc(i64*, i64) #2

declare dso_local i32 @LookInStream_SeekTo(i32*, i32) #2

declare dso_local i32 @Buf_Create(%struct.TYPE_15__*, i64, i32) #2

declare dso_local i64 @LookInStream_Read(i32*, i64*, i64) #2

declare dso_local i64 @ReadID(%struct.TYPE_13__*, i64*) #2

declare dso_local i32 @Buf_Init(%struct.TYPE_15__*) #2

declare dso_local i32 @SzAr_Init(i32*) #2

declare dso_local i64 @SzReadAndDecodePackedStreams(i32*, %struct.TYPE_13__*, %struct.TYPE_15__*, i32, i32, i32*, i32) #2

declare dso_local i32 @SzAr_Free(i32*, i32) #2

declare dso_local i32 @Buf_Free(%struct.TYPE_15__*, i32) #2

declare dso_local i64 @SzReadHeader(%struct.TYPE_14__*, %struct.TYPE_13__*, i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
