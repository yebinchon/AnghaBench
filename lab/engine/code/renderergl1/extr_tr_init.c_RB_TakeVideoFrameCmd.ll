; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_init.c_RB_TakeVideoFrameCmd.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_init.c_RB_TakeVideoFrameCmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 (i8**, i32)* }
%struct.TYPE_5__ = type { i32, i32, i8**, i64, i32 }

@GL_PACK_ALIGNMENT = common dso_local global i32 0, align 4
@AVI_LINE_PADDING = common dso_local global i32 0, align 4
@GL_RGB = common dso_local global i32 0, align 4
@GL_UNSIGNED_BYTE = common dso_local global i32 0, align 4
@glConfig = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@r_aviMotionJpegQuality = common dso_local global %struct.TYPE_7__* null, align 8
@ri = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @RB_TakeVideoFrameCmd(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i8**, align 8
  store i8* %0, i8** %2, align 8
  %16 = load i8*, i8** %2, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %3, align 8
  %18 = load i32, i32* @GL_PACK_ALIGNMENT, align 4
  %19 = call i32 @qglGetIntegerv(i32 %18, i32* %11)
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = mul nsw i32 %22, 3
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @PAD(i64 %25, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* %6, align 8
  %31 = sub i64 %29, %30
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %9, align 4
  %33 = load i64, i64* %6, align 8
  %34 = load i32, i32* @AVI_LINE_PADDING, align 4
  %35 = call i32 @PAD(i64 %33, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* %6, align 8
  %39 = sub i64 %37, %38
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %10, align 4
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %11, align 4
  %45 = call i8** @PADP(i32 %43, i32 %44)
  store i8** %45, i8*** %4, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @GL_RGB, align 4
  %53 = load i32, i32* @GL_UNSIGNED_BYTE, align 4
  %54 = load i8**, i8*** %4, align 8
  %55 = call i32 @qglReadPixels(i32 0, i32 0, i32 %48, i32 %51, i32 %52, i32 %53, i8** %54)
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = mul nsw i32 %56, %59
  %61 = sext i32 %60 to i64
  store i64 %61, i64* %5, align 8
  %62 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @glConfig, i32 0, i32 0), align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %1
  %65 = load i8**, i8*** %4, align 8
  %66 = load i64, i64* %5, align 8
  %67 = call i32 @R_GammaCorrect(i8** %65, i64 %66)
  br label %68

68:                                               ; preds = %64, %1
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %103

73:                                               ; preds = %68
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 2
  %76 = load i8**, i8*** %75, align 8
  %77 = load i64, i64* %6, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = mul i64 %77, %81
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** @r_aviMotionJpegQuality, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = load i8**, i8*** %4, align 8
  %94 = load i32, i32* %9, align 4
  %95 = call i64 @RE_SaveJPGToBuffer(i8** %76, i64 %82, i32 %85, i32 %88, i64 %92, i8** %93, i32 %94)
  store i64 %95, i64* %5, align 8
  %96 = load i32 (i8**, i32)*, i32 (i8**, i32)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ri, i32 0, i32 0), align 8
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 2
  %99 = load i8**, i8*** %98, align 8
  %100 = load i64, i64* %5, align 8
  %101 = trunc i64 %100 to i32
  %102 = call i32 %96(i8** %99, i32 %101)
  br label %164

103:                                              ; preds = %68
  %104 = load i8**, i8*** %4, align 8
  store i8** %104, i8*** %14, align 8
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 2
  %107 = load i8**, i8*** %106, align 8
  store i8** %107, i8*** %15, align 8
  %108 = load i8**, i8*** %14, align 8
  %109 = load i64, i64* %5, align 8
  %110 = getelementptr inbounds i8*, i8** %108, i64 %109
  store i8** %110, i8*** %13, align 8
  br label %111

111:                                              ; preds = %141, %103
  %112 = load i8**, i8*** %14, align 8
  %113 = load i8**, i8*** %13, align 8
  %114 = icmp ult i8** %112, %113
  br i1 %114, label %115, label %153

115:                                              ; preds = %111
  %116 = load i8**, i8*** %14, align 8
  %117 = load i64, i64* %6, align 8
  %118 = getelementptr inbounds i8*, i8** %116, i64 %117
  store i8** %118, i8*** %12, align 8
  br label %119

119:                                              ; preds = %123, %115
  %120 = load i8**, i8*** %14, align 8
  %121 = load i8**, i8*** %12, align 8
  %122 = icmp ult i8** %120, %121
  br i1 %122, label %123, label %141

123:                                              ; preds = %119
  %124 = load i8**, i8*** %14, align 8
  %125 = getelementptr inbounds i8*, i8** %124, i64 2
  %126 = load i8*, i8** %125, align 8
  %127 = load i8**, i8*** %15, align 8
  %128 = getelementptr inbounds i8*, i8** %127, i32 1
  store i8** %128, i8*** %15, align 8
  store i8* %126, i8** %127, align 8
  %129 = load i8**, i8*** %14, align 8
  %130 = getelementptr inbounds i8*, i8** %129, i64 1
  %131 = load i8*, i8** %130, align 8
  %132 = load i8**, i8*** %15, align 8
  %133 = getelementptr inbounds i8*, i8** %132, i32 1
  store i8** %133, i8*** %15, align 8
  store i8* %131, i8** %132, align 8
  %134 = load i8**, i8*** %14, align 8
  %135 = getelementptr inbounds i8*, i8** %134, i64 0
  %136 = load i8*, i8** %135, align 8
  %137 = load i8**, i8*** %15, align 8
  %138 = getelementptr inbounds i8*, i8** %137, i32 1
  store i8** %138, i8*** %15, align 8
  store i8* %136, i8** %137, align 8
  %139 = load i8**, i8*** %14, align 8
  %140 = getelementptr inbounds i8*, i8** %139, i64 3
  store i8** %140, i8*** %14, align 8
  br label %119

141:                                              ; preds = %119
  %142 = load i8**, i8*** %15, align 8
  %143 = load i32, i32* %10, align 4
  %144 = call i32 @Com_Memset(i8** %142, i8 signext 0, i32 %143)
  %145 = load i32, i32* %10, align 4
  %146 = load i8**, i8*** %15, align 8
  %147 = sext i32 %145 to i64
  %148 = getelementptr inbounds i8*, i8** %146, i64 %147
  store i8** %148, i8*** %15, align 8
  %149 = load i32, i32* %9, align 4
  %150 = load i8**, i8*** %14, align 8
  %151 = sext i32 %149 to i64
  %152 = getelementptr inbounds i8*, i8** %150, i64 %151
  store i8** %152, i8*** %14, align 8
  br label %111

153:                                              ; preds = %111
  %154 = load i32 (i8**, i32)*, i32 (i8**, i32)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ri, i32 0, i32 0), align 8
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 2
  %157 = load i8**, i8*** %156, align 8
  %158 = load i32, i32* %8, align 4
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = mul nsw i32 %158, %161
  %163 = call i32 %154(i8** %157, i32 %162)
  br label %164

164:                                              ; preds = %153, %73
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i64 1
  %167 = bitcast %struct.TYPE_5__* %166 to i8*
  ret i8* %167
}

declare dso_local i32 @qglGetIntegerv(i32, i32*) #1

declare dso_local i32 @PAD(i64, i32) #1

declare dso_local i8** @PADP(i32, i32) #1

declare dso_local i32 @qglReadPixels(i32, i32, i32, i32, i32, i32, i8**) #1

declare dso_local i32 @R_GammaCorrect(i8**, i64) #1

declare dso_local i64 @RE_SaveJPGToBuffer(i8**, i64, i32, i32, i64, i8**, i32) #1

declare dso_local i32 @Com_Memset(i8**, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
