; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_image.c_RawImage_UploadToRgtc2Texture.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_image.c_RawImage_UploadToRgtc2Texture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32*)*, i32* (i32)* }

@ri = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@GL_COMPRESSED_RG_RGTC2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32, i32, i32*)* @RawImage_UploadToRgtc2Texture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RawImage_UploadToRgtc2Texture(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca [16 x i32], align 16
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  %28 = load i32, i32* %12, align 4
  %29 = add nsw i32 %28, 3
  %30 = sdiv i32 %29, 4
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %13, align 4
  %32 = add nsw i32 %31, 3
  %33 = sdiv i32 %32, 4
  store i32 %33, i32* %16, align 4
  %34 = load i32, i32* %15, align 4
  %35 = load i32, i32* %16, align 4
  %36 = mul nsw i32 %34, %35
  %37 = mul nsw i32 %36, 16
  store i32 %37, i32* %19, align 4
  %38 = load i32* (i32)*, i32* (i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ri, i32 0, i32 1), align 8
  %39 = load i32, i32* %19, align 4
  %40 = call i32* %38(i32 %39)
  store i32* %40, i32** %20, align 8
  store i32* %40, i32** %21, align 8
  store i32 0, i32* %17, align 4
  br label %41

41:                                               ; preds = %157, %7
  %42 = load i32, i32* %17, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %160

45:                                               ; preds = %41
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* %17, align 4
  %48 = sub nsw i32 %46, %47
  %49 = call i32 @MIN(i32 4, i32 %48)
  store i32 %49, i32* %22, align 4
  store i32 0, i32* %18, align 4
  br label %50

50:                                               ; preds = %153, %45
  %51 = load i32, i32* %18, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %156

54:                                               ; preds = %50
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %18, align 4
  %57 = sub nsw i32 %55, %56
  %58 = call i32 @MIN(i32 4, i32 %57)
  store i32 %58, i32* %25, align 4
  store i32 0, i32* %24, align 4
  br label %59

59:                                               ; preds = %149, %54
  %60 = load i32, i32* %24, align 4
  %61 = icmp slt i32 %60, 2
  br i1 %61, label %62, label %152

62:                                               ; preds = %59
  store i32 0, i32* %27, align 4
  br label %63

63:                                               ; preds = %99, %62
  %64 = load i32, i32* %27, align 4
  %65 = load i32, i32* %22, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %102

67:                                               ; preds = %63
  store i32 0, i32* %26, align 4
  br label %68

68:                                               ; preds = %95, %67
  %69 = load i32, i32* %26, align 4
  %70 = load i32, i32* %25, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %98

72:                                               ; preds = %68
  %73 = load i32*, i32** %14, align 8
  %74 = load i32, i32* %17, align 4
  %75 = load i32, i32* %27, align 4
  %76 = add nsw i32 %74, %75
  %77 = load i32, i32* %12, align 4
  %78 = mul nsw i32 %76, %77
  %79 = load i32, i32* %18, align 4
  %80 = add nsw i32 %78, %79
  %81 = load i32, i32* %26, align 4
  %82 = add nsw i32 %80, %81
  %83 = mul nsw i32 %82, 4
  %84 = load i32, i32* %24, align 4
  %85 = add nsw i32 %83, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %73, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %27, align 4
  %90 = mul nsw i32 %89, 4
  %91 = load i32, i32* %26, align 4
  %92 = add nsw i32 %90, %91
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [16 x i32], [16 x i32]* %23, i64 0, i64 %93
  store i32 %88, i32* %94, align 4
  br label %95

95:                                               ; preds = %72
  %96 = load i32, i32* %26, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %26, align 4
  br label %68

98:                                               ; preds = %68
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %27, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %27, align 4
  br label %63

102:                                              ; preds = %63
  store i32 0, i32* %27, align 4
  br label %103

103:                                              ; preds = %140, %102
  %104 = load i32, i32* %27, align 4
  %105 = icmp slt i32 %104, 4
  br i1 %105, label %106, label %143

106:                                              ; preds = %103
  %107 = load i32, i32* %27, align 4
  %108 = load i32, i32* %22, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %106
  %111 = load i32, i32* %25, align 4
  br label %113

112:                                              ; preds = %106
  br label %113

113:                                              ; preds = %112, %110
  %114 = phi i32 [ %111, %110 ], [ 0, %112 ]
  store i32 %114, i32* %26, align 4
  br label %115

115:                                              ; preds = %136, %113
  %116 = load i32, i32* %26, align 4
  %117 = icmp slt i32 %116, 4
  br i1 %117, label %118, label %139

118:                                              ; preds = %115
  %119 = load i32, i32* %27, align 4
  %120 = load i32, i32* %22, align 4
  %121 = srem i32 %119, %120
  %122 = mul nsw i32 %121, 4
  %123 = load i32, i32* %26, align 4
  %124 = load i32, i32* %25, align 4
  %125 = srem i32 %123, %124
  %126 = add nsw i32 %122, %125
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [16 x i32], [16 x i32]* %23, i64 0, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %27, align 4
  %131 = mul nsw i32 %130, 4
  %132 = load i32, i32* %26, align 4
  %133 = add nsw i32 %131, %132
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [16 x i32], [16 x i32]* %23, i64 0, i64 %134
  store i32 %129, i32* %135, align 4
  br label %136

136:                                              ; preds = %118
  %137 = load i32, i32* %26, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %26, align 4
  br label %115

139:                                              ; preds = %115
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %27, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %27, align 4
  br label %103

143:                                              ; preds = %103
  %144 = load i32*, i32** %21, align 8
  %145 = getelementptr inbounds [16 x i32], [16 x i32]* %23, i64 0, i64 0
  %146 = call i32 @CompressMonoBlock(i32* %144, i32* %145)
  %147 = load i32*, i32** %21, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 8
  store i32* %148, i32** %21, align 8
  br label %149

149:                                              ; preds = %143
  %150 = load i32, i32* %24, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %24, align 4
  br label %59

152:                                              ; preds = %59
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %18, align 4
  %155 = add nsw i32 %154, 4
  store i32 %155, i32* %18, align 4
  br label %50

156:                                              ; preds = %50
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %17, align 4
  %159 = add nsw i32 %158, 4
  store i32 %159, i32* %17, align 4
  br label %41

160:                                              ; preds = %41
  %161 = load i32, i32* %8, align 4
  %162 = load i32, i32* @GL_TEXTURE_2D, align 4
  %163 = load i32, i32* %9, align 4
  %164 = load i32, i32* %10, align 4
  %165 = load i32, i32* %11, align 4
  %166 = load i32, i32* %12, align 4
  %167 = load i32, i32* %13, align 4
  %168 = load i32, i32* @GL_COMPRESSED_RG_RGTC2, align 4
  %169 = load i32, i32* %19, align 4
  %170 = load i32*, i32** %20, align 8
  %171 = call i32 @qglCompressedTextureSubImage2DEXT(i32 %161, i32 %162, i32 %163, i32 %164, i32 %165, i32 %166, i32 %167, i32 %168, i32 %169, i32* %170)
  %172 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ri, i32 0, i32 0), align 8
  %173 = load i32*, i32** %20, align 8
  %174 = call i32 %172(i32* %173)
  ret void
}

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @CompressMonoBlock(i32*, i32*) #1

declare dso_local i32 @qglCompressedTextureSubImage2DEXT(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
