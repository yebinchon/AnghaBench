; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_image.c_RawImage_UploadTexture.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_image.c_RawImage_UploadTexture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32, i64 }

@GL_COMPRESSED_RG_RGTC2 = common dso_local global i64 0, align 8
@GL_RGBA8 = common dso_local global i64 0, align 8
@GL_SRGB8_ALPHA8_EXT = common dso_local global i64 0, align 8
@GL_RGBA16 = common dso_local global i64 0, align 8
@IMGFLAG_MIPMAP = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@GL_UNSIGNED_SHORT = common dso_local global i64 0, align 8
@GL_UNSIGNED_BYTE = common dso_local global i64 0, align 8
@r_colorMipLevels = common dso_local global %struct.TYPE_3__* null, align 8
@mipBlendColors = common dso_local global i32* null, align 8
@glRefConfig = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@IMGTYPE_NORMAL = common dso_local global i64 0, align 8
@IMGTYPE_NORMALHEIGHT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32, i32, i32, i32, i64, i64, i32, i64, i64, i32, i32)* @RawImage_UploadTexture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RawImage_UploadTexture(i32 %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i64 %6, i64 %7, i32 %8, i64 %9, i64 %10, i32 %11, i32 %12) #0 {
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  store i32 %0, i32* %14, align 4
  store i32* %1, i32** %15, align 8
  store i32 %2, i32* %16, align 4
  store i32 %3, i32* %17, align 4
  store i32 %4, i32* %18, align 4
  store i32 %5, i32* %19, align 4
  store i64 %6, i64* %20, align 8
  store i64 %7, i64* %21, align 8
  store i32 %8, i32* %22, align 4
  store i64 %9, i64* %23, align 8
  store i64 %10, i64* %24, align 8
  store i32 %11, i32* %25, align 4
  store i32 %12, i32* %26, align 4
  %36 = load i64, i64* %23, align 8
  %37 = load i64, i64* @GL_COMPRESSED_RG_RGTC2, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %29, align 4
  %40 = load i64, i64* %21, align 8
  %41 = load i64, i64* @GL_RGBA8, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %13
  %44 = load i64, i64* %21, align 8
  %45 = load i64, i64* @GL_SRGB8_ALPHA8_EXT, align 8
  %46 = icmp eq i64 %44, %45
  br label %47

47:                                               ; preds = %43, %13
  %48 = phi i1 [ true, %13 ], [ %46, %43 ]
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %30, align 4
  %50 = load i32, i32* %30, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %47
  %53 = load i64, i64* %21, align 8
  %54 = load i64, i64* @GL_RGBA16, align 8
  %55 = icmp eq i64 %53, %54
  br label %56

56:                                               ; preds = %52, %47
  %57 = phi i1 [ true, %47 ], [ %55, %52 ]
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %31, align 4
  %59 = load i32, i32* %25, align 4
  %60 = load i32, i32* @IMGFLAG_MIPMAP, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %32, align 4
  %66 = load i32, i32* @qfalse, align 4
  store i32 %66, i32* %35, align 4
  %67 = load i64, i64* %23, align 8
  %68 = call i64 @PixelDataFormatFromInternalFormat(i64 %67)
  store i64 %68, i64* %27, align 8
  %69 = load i64, i64* %21, align 8
  %70 = load i64, i64* @GL_RGBA16, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %56
  %73 = load i64, i64* @GL_UNSIGNED_SHORT, align 8
  br label %76

74:                                               ; preds = %56
  %75 = load i64, i64* @GL_UNSIGNED_BYTE, align 8
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi i64 [ %73, %72 ], [ %75, %74 ]
  store i64 %77, i64* %28, align 8
  store i32 0, i32* %34, align 4
  br label %78

78:                                               ; preds = %221, %76
  %79 = load i32, i32* %18, align 4
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i32, i32* %19, align 4
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %88, label %84

84:                                               ; preds = %81, %78
  %85 = load i32, i32* %32, align 4
  %86 = icmp ne i32 %85, 0
  %87 = xor i1 %86, true
  br label %88

88:                                               ; preds = %84, %81
  %89 = phi i1 [ true, %81 ], [ %87, %84 ]
  %90 = zext i1 %89 to i32
  store i32 %90, i32* %35, align 4
  %91 = load i32, i32* %18, align 4
  %92 = load i32, i32* %19, align 4
  %93 = load i64, i64* %21, align 8
  %94 = call i32 @CalculateMipSize(i32 %91, i32 %92, i64 %93)
  store i32 %94, i32* %33, align 4
  %95 = load i32, i32* %31, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %109, label %97

97:                                               ; preds = %88
  %98 = load i32, i32* %14, align 4
  %99 = load i64, i64* %20, align 8
  %100 = load i32, i32* %34, align 4
  %101 = load i32, i32* %16, align 4
  %102 = load i32, i32* %17, align 4
  %103 = load i32, i32* %18, align 4
  %104 = load i32, i32* %19, align 4
  %105 = load i64, i64* %21, align 8
  %106 = load i32, i32* %33, align 4
  %107 = load i32*, i32** %15, align 8
  %108 = call i32 @qglCompressedTextureSubImage2DEXT(i32 %98, i64 %99, i32 %100, i32 %101, i32 %102, i32 %103, i32 %104, i64 %105, i32 %106, i32* %107)
  br label %159

109:                                              ; preds = %88
  %110 = load i32, i32* %30, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %131

112:                                              ; preds = %109
  %113 = load i32, i32* %34, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %131

115:                                              ; preds = %112
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** @r_colorMipLevels, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %131

120:                                              ; preds = %115
  %121 = load i32*, i32** %15, align 8
  %122 = load i32, i32* %18, align 4
  %123 = load i32, i32* %19, align 4
  %124 = mul nsw i32 %122, %123
  %125 = load i32*, i32** @mipBlendColors, align 8
  %126 = load i32, i32* %34, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @R_BlendOverTexture(i32* %121, i32 %124, i32 %129)
  br label %131

131:                                              ; preds = %120, %115, %112, %109
  %132 = load i32, i32* %30, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %146

134:                                              ; preds = %131
  %135 = load i32, i32* %29, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %146

137:                                              ; preds = %134
  %138 = load i32, i32* %14, align 4
  %139 = load i32, i32* %34, align 4
  %140 = load i32, i32* %16, align 4
  %141 = load i32, i32* %17, align 4
  %142 = load i32, i32* %18, align 4
  %143 = load i32, i32* %19, align 4
  %144 = load i32*, i32** %15, align 8
  %145 = call i32 @RawImage_UploadToRgtc2Texture(i32 %138, i32 %139, i32 %140, i32 %141, i32 %142, i32 %143, i32* %144)
  br label %158

146:                                              ; preds = %134, %131
  %147 = load i32, i32* %14, align 4
  %148 = load i64, i64* %20, align 8
  %149 = load i32, i32* %34, align 4
  %150 = load i32, i32* %16, align 4
  %151 = load i32, i32* %17, align 4
  %152 = load i32, i32* %18, align 4
  %153 = load i32, i32* %19, align 4
  %154 = load i64, i64* %27, align 8
  %155 = load i64, i64* %28, align 8
  %156 = load i32*, i32** %15, align 8
  %157 = call i32 @qglTextureSubImage2DEXT(i32 %147, i64 %148, i32 %149, i32 %150, i32 %151, i32 %152, i32 %153, i64 %154, i64 %155, i32* %156)
  br label %158

158:                                              ; preds = %146, %137
  br label %159

159:                                              ; preds = %158, %97
  %160 = load i32, i32* %35, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %198, label %162

162:                                              ; preds = %159
  %163 = load i32, i32* %22, align 4
  %164 = icmp slt i32 %163, 2
  br i1 %164, label %165, label %198

165:                                              ; preds = %162
  %166 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @glRefConfig, i32 0, i32 1), align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %165
  %169 = load i32, i32* %14, align 4
  %170 = load i64, i64* %20, align 8
  %171 = call i32 @qglGenerateTextureMipmapEXT(i32 %169, i64 %170)
  br label %225

172:                                              ; preds = %165
  %173 = load i32, i32* %30, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %196

175:                                              ; preds = %172
  %176 = load i64, i64* %24, align 8
  %177 = load i64, i64* @IMGTYPE_NORMAL, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %183, label %179

179:                                              ; preds = %175
  %180 = load i64, i64* %24, align 8
  %181 = load i64, i64* @IMGTYPE_NORMALHEIGHT, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %190

183:                                              ; preds = %179, %175
  %184 = load i32*, i32** %15, align 8
  %185 = load i32*, i32** %15, align 8
  %186 = load i32, i32* %18, align 4
  %187 = load i32, i32* %19, align 4
  %188 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @glRefConfig, i32 0, i32 0), align 8
  %189 = call i32 @R_MipMapNormalHeight(i32* %184, i32* %185, i32 %186, i32 %187, i32 %188)
  br label %195

190:                                              ; preds = %179
  %191 = load i32*, i32** %15, align 8
  %192 = load i32, i32* %18, align 4
  %193 = load i32, i32* %19, align 4
  %194 = call i32 @R_MipMapsRGB(i32* %191, i32 %192, i32 %193)
  br label %195

195:                                              ; preds = %190, %183
  br label %196

196:                                              ; preds = %195, %172
  br label %197

197:                                              ; preds = %196
  br label %198

198:                                              ; preds = %197, %162, %159
  %199 = load i32, i32* %16, align 4
  %200 = ashr i32 %199, 1
  store i32 %200, i32* %16, align 4
  %201 = load i32, i32* %17, align 4
  %202 = ashr i32 %201, 1
  store i32 %202, i32* %17, align 4
  %203 = load i32, i32* %18, align 4
  %204 = ashr i32 %203, 1
  %205 = call i32 @MAX(i32 1, i32 %204)
  store i32 %205, i32* %18, align 4
  %206 = load i32, i32* %19, align 4
  %207 = ashr i32 %206, 1
  %208 = call i32 @MAX(i32 1, i32 %207)
  store i32 %208, i32* %19, align 4
  %209 = load i32, i32* %34, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %34, align 4
  %211 = load i32, i32* %22, align 4
  %212 = icmp sgt i32 %211, 1
  br i1 %212, label %213, label %220

213:                                              ; preds = %198
  %214 = load i32, i32* %33, align 4
  %215 = load i32*, i32** %15, align 8
  %216 = sext i32 %214 to i64
  %217 = getelementptr inbounds i32, i32* %215, i64 %216
  store i32* %217, i32** %15, align 8
  %218 = load i32, i32* %22, align 4
  %219 = add nsw i32 %218, -1
  store i32 %219, i32* %22, align 4
  br label %220

220:                                              ; preds = %213, %198
  br label %221

221:                                              ; preds = %220
  %222 = load i32, i32* %35, align 4
  %223 = icmp ne i32 %222, 0
  %224 = xor i1 %223, true
  br i1 %224, label %78, label %225

225:                                              ; preds = %221, %168
  ret void
}

declare dso_local i64 @PixelDataFormatFromInternalFormat(i64) #1

declare dso_local i32 @CalculateMipSize(i32, i32, i64) #1

declare dso_local i32 @qglCompressedTextureSubImage2DEXT(i32, i64, i32, i32, i32, i32, i32, i64, i32, i32*) #1

declare dso_local i32 @R_BlendOverTexture(i32*, i32, i32) #1

declare dso_local i32 @RawImage_UploadToRgtc2Texture(i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @qglTextureSubImage2DEXT(i32, i64, i32, i32, i32, i32, i32, i64, i64, i32*) #1

declare dso_local i32 @qglGenerateTextureMipmapEXT(i32, i64) #1

declare dso_local i32 @R_MipMapNormalHeight(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @R_MipMapsRGB(i32*, i32, i32) #1

declare dso_local i32 @MAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
