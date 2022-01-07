; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_init.c_RB_TakeVideoFrameCmd.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_init.c_RB_TakeVideoFrameCmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 (i8**, i32)* }
%struct.TYPE_6__ = type { i32, i32, i8**, i64, i32 }

@tess = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@GL_PACK_ALIGNMENT = common dso_local global i32 0, align 4
@AVI_LINE_PADDING = common dso_local global i32 0, align 4
@GL_RGB = common dso_local global i32 0, align 4
@GL_UNSIGNED_BYTE = common dso_local global i32 0, align 4
@glConfig = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@r_aviMotionJpegQuality = common dso_local global %struct.TYPE_9__* null, align 8
@ri = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @RB_TakeVideoFrameCmd(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
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
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 0), align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = call i32 (...) @RB_EndSurface()
  br label %20

20:                                               ; preds = %18, %1
  %21 = load i8*, i8** %2, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %3, align 8
  %23 = load i32, i32* @GL_PACK_ALIGNMENT, align 4
  %24 = call i32 @qglGetIntegerv(i32 %23, i32* %11)
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = mul nsw i32 %27, 3
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %6, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @PAD(i64 %30, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* %6, align 8
  %36 = sub i64 %34, %35
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %9, align 4
  %38 = load i64, i64* %6, align 8
  %39 = load i32, i32* @AVI_LINE_PADDING, align 4
  %40 = call i32 @PAD(i64 %38, i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* %6, align 8
  %44 = sub i64 %42, %43
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %10, align 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %11, align 4
  %50 = call i8** @PADP(i32 %48, i32 %49)
  store i8** %50, i8*** %4, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @GL_RGB, align 4
  %58 = load i32, i32* @GL_UNSIGNED_BYTE, align 4
  %59 = load i8**, i8*** %4, align 8
  %60 = call i32 @qglReadPixels(i32 0, i32 0, i32 %53, i32 %56, i32 %57, i32 %58, i8** %59)
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = mul nsw i32 %61, %64
  %66 = sext i32 %65 to i64
  store i64 %66, i64* %5, align 8
  %67 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @glConfig, i32 0, i32 0), align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %20
  %70 = load i8**, i8*** %4, align 8
  %71 = load i64, i64* %5, align 8
  %72 = call i32 @R_GammaCorrect(i8** %70, i64 %71)
  br label %73

73:                                               ; preds = %69, %20
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %108

78:                                               ; preds = %73
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  %81 = load i8**, i8*** %80, align 8
  %82 = load i64, i64* %6, align 8
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = mul i64 %82, %86
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** @r_aviMotionJpegQuality, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = load i8**, i8*** %4, align 8
  %99 = load i32, i32* %9, align 4
  %100 = call i64 @RE_SaveJPGToBuffer(i8** %81, i64 %87, i32 %90, i32 %93, i64 %97, i8** %98, i32 %99)
  store i64 %100, i64* %5, align 8
  %101 = load i32 (i8**, i32)*, i32 (i8**, i32)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ri, i32 0, i32 0), align 8
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 2
  %104 = load i8**, i8*** %103, align 8
  %105 = load i64, i64* %5, align 8
  %106 = trunc i64 %105 to i32
  %107 = call i32 %101(i8** %104, i32 %106)
  br label %169

108:                                              ; preds = %73
  %109 = load i8**, i8*** %4, align 8
  store i8** %109, i8*** %14, align 8
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 2
  %112 = load i8**, i8*** %111, align 8
  store i8** %112, i8*** %15, align 8
  %113 = load i8**, i8*** %14, align 8
  %114 = load i64, i64* %5, align 8
  %115 = getelementptr inbounds i8*, i8** %113, i64 %114
  store i8** %115, i8*** %13, align 8
  br label %116

116:                                              ; preds = %146, %108
  %117 = load i8**, i8*** %14, align 8
  %118 = load i8**, i8*** %13, align 8
  %119 = icmp ult i8** %117, %118
  br i1 %119, label %120, label %158

120:                                              ; preds = %116
  %121 = load i8**, i8*** %14, align 8
  %122 = load i64, i64* %6, align 8
  %123 = getelementptr inbounds i8*, i8** %121, i64 %122
  store i8** %123, i8*** %12, align 8
  br label %124

124:                                              ; preds = %128, %120
  %125 = load i8**, i8*** %14, align 8
  %126 = load i8**, i8*** %12, align 8
  %127 = icmp ult i8** %125, %126
  br i1 %127, label %128, label %146

128:                                              ; preds = %124
  %129 = load i8**, i8*** %14, align 8
  %130 = getelementptr inbounds i8*, i8** %129, i64 2
  %131 = load i8*, i8** %130, align 8
  %132 = load i8**, i8*** %15, align 8
  %133 = getelementptr inbounds i8*, i8** %132, i32 1
  store i8** %133, i8*** %15, align 8
  store i8* %131, i8** %132, align 8
  %134 = load i8**, i8*** %14, align 8
  %135 = getelementptr inbounds i8*, i8** %134, i64 1
  %136 = load i8*, i8** %135, align 8
  %137 = load i8**, i8*** %15, align 8
  %138 = getelementptr inbounds i8*, i8** %137, i32 1
  store i8** %138, i8*** %15, align 8
  store i8* %136, i8** %137, align 8
  %139 = load i8**, i8*** %14, align 8
  %140 = getelementptr inbounds i8*, i8** %139, i64 0
  %141 = load i8*, i8** %140, align 8
  %142 = load i8**, i8*** %15, align 8
  %143 = getelementptr inbounds i8*, i8** %142, i32 1
  store i8** %143, i8*** %15, align 8
  store i8* %141, i8** %142, align 8
  %144 = load i8**, i8*** %14, align 8
  %145 = getelementptr inbounds i8*, i8** %144, i64 3
  store i8** %145, i8*** %14, align 8
  br label %124

146:                                              ; preds = %124
  %147 = load i8**, i8*** %15, align 8
  %148 = load i32, i32* %10, align 4
  %149 = call i32 @Com_Memset(i8** %147, i8 signext 0, i32 %148)
  %150 = load i32, i32* %10, align 4
  %151 = load i8**, i8*** %15, align 8
  %152 = sext i32 %150 to i64
  %153 = getelementptr inbounds i8*, i8** %151, i64 %152
  store i8** %153, i8*** %15, align 8
  %154 = load i32, i32* %9, align 4
  %155 = load i8**, i8*** %14, align 8
  %156 = sext i32 %154 to i64
  %157 = getelementptr inbounds i8*, i8** %155, i64 %156
  store i8** %157, i8*** %14, align 8
  br label %116

158:                                              ; preds = %116
  %159 = load i32 (i8**, i32)*, i32 (i8**, i32)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ri, i32 0, i32 0), align 8
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 2
  %162 = load i8**, i8*** %161, align 8
  %163 = load i32, i32* %8, align 4
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = mul nsw i32 %163, %166
  %168 = call i32 %159(i8** %162, i32 %167)
  br label %169

169:                                              ; preds = %158, %78
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i64 1
  %172 = bitcast %struct.TYPE_6__* %171 to i8*
  ret i8* %172
}

declare dso_local i32 @RB_EndSurface(...) #1

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
