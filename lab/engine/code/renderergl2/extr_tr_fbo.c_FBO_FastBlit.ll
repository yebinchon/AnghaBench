; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_fbo.c_FBO_FastBlit.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_fbo.c_FBO_FastBlit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_9__ = type { i32, i32, i32 }

@glRefConfig = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@glConfig = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@GL_READ_FRAMEBUFFER = common dso_local global i32 0, align 4
@GL_DRAW_FRAMEBUFFER = common dso_local global i32 0, align 4
@GL_FRAMEBUFFER = common dso_local global i32 0, align 4
@glState = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FBO_FastBlit(%struct.TYPE_9__* %0, i32* %1, %struct.TYPE_9__* %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @glRefConfig, i32 0, i32 0), align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %6
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = call i32 @FBO_Blit(%struct.TYPE_9__* %24, i32* %25, i32* null, %struct.TYPE_9__* %26, i32* %27, i32* null, i32* null, i32 0)
  br label %185

29:                                               ; preds = %6
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %31 = icmp ne %struct.TYPE_9__* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  br label %37

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36, %32
  %38 = phi i32 [ %35, %32 ], [ 0, %36 ]
  store i32 %38, i32* %15, align 4
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %40 = icmp ne %struct.TYPE_9__* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  br label %46

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45, %41
  %47 = phi i32 [ %44, %41 ], [ 0, %45 ]
  store i32 %47, i32* %16, align 4
  %48 = load i32*, i32** %8, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %75, label %50

50:                                               ; preds = %46
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %52 = icmp ne %struct.TYPE_9__* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  br label %59

57:                                               ; preds = %50
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @glConfig, i32 0, i32 0), align 4
  br label %59

59:                                               ; preds = %57, %53
  %60 = phi i32 [ %56, %53 ], [ %58, %57 ]
  store i32 %60, i32* %17, align 4
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %62 = icmp ne %struct.TYPE_9__* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  br label %69

67:                                               ; preds = %59
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @glConfig, i32 0, i32 1), align 4
  br label %69

69:                                               ; preds = %67, %63
  %70 = phi i32 [ %66, %63 ], [ %68, %67 ]
  store i32 %70, i32* %18, align 4
  %71 = load i32*, i32** %13, align 8
  %72 = load i32, i32* %17, align 4
  %73 = load i32, i32* %18, align 4
  %74 = call i32 @VectorSet4(i32* %71, i32 0, i32 0, i32 %72, i32 %73)
  br label %98

75:                                               ; preds = %46
  %76 = load i32*, i32** %13, align 8
  %77 = load i32*, i32** %8, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** %8, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %8, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %8, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 2
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %85, %88
  %90 = load i32*, i32** %8, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** %8, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 3
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %92, %95
  %97 = call i32 @VectorSet4(i32* %76, i32 %79, i32 %82, i32 %89, i32 %96)
  br label %98

98:                                               ; preds = %75, %69
  %99 = load i32*, i32** %10, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %126, label %101

101:                                              ; preds = %98
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %103 = icmp ne %struct.TYPE_9__* %102, null
  br i1 %103, label %104, label %108

104:                                              ; preds = %101
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  br label %110

108:                                              ; preds = %101
  %109 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @glConfig, i32 0, i32 0), align 4
  br label %110

110:                                              ; preds = %108, %104
  %111 = phi i32 [ %107, %104 ], [ %109, %108 ]
  store i32 %111, i32* %19, align 4
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %113 = icmp ne %struct.TYPE_9__* %112, null
  br i1 %113, label %114, label %118

114:                                              ; preds = %110
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  br label %120

118:                                              ; preds = %110
  %119 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @glConfig, i32 0, i32 1), align 4
  br label %120

120:                                              ; preds = %118, %114
  %121 = phi i32 [ %117, %114 ], [ %119, %118 ]
  store i32 %121, i32* %20, align 4
  %122 = load i32*, i32** %14, align 8
  %123 = load i32, i32* %19, align 4
  %124 = load i32, i32* %20, align 4
  %125 = call i32 @VectorSet4(i32* %122, i32 0, i32 0, i32 %123, i32 %124)
  br label %149

126:                                              ; preds = %98
  %127 = load i32*, i32** %14, align 8
  %128 = load i32*, i32** %10, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32*, i32** %10, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32*, i32** %10, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32*, i32** %10, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 2
  %139 = load i32, i32* %138, align 4
  %140 = add nsw i32 %136, %139
  %141 = load i32*, i32** %10, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 1
  %143 = load i32, i32* %142, align 4
  %144 = load i32*, i32** %10, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 3
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %143, %146
  %148 = call i32 @VectorSet4(i32* %127, i32 %130, i32 %133, i32 %140, i32 %147)
  br label %149

149:                                              ; preds = %126, %120
  %150 = load i32, i32* @GL_READ_FRAMEBUFFER, align 4
  %151 = load i32, i32* %15, align 4
  %152 = call i32 @GL_BindFramebuffer(i32 %150, i32 %151)
  %153 = load i32, i32* @GL_DRAW_FRAMEBUFFER, align 4
  %154 = load i32, i32* %16, align 4
  %155 = call i32 @GL_BindFramebuffer(i32 %153, i32 %154)
  %156 = load i32*, i32** %13, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32*, i32** %13, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 1
  %161 = load i32, i32* %160, align 4
  %162 = load i32*, i32** %13, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 2
  %164 = load i32, i32* %163, align 4
  %165 = load i32*, i32** %13, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 3
  %167 = load i32, i32* %166, align 4
  %168 = load i32*, i32** %14, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32*, i32** %14, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 1
  %173 = load i32, i32* %172, align 4
  %174 = load i32*, i32** %14, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 2
  %176 = load i32, i32* %175, align 4
  %177 = load i32*, i32** %14, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 3
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* %11, align 4
  %181 = load i32, i32* %12, align 4
  %182 = call i32 @qglBlitFramebuffer(i32 %158, i32 %161, i32 %164, i32 %167, i32 %170, i32 %173, i32 %176, i32 %179, i32 %180, i32 %181)
  %183 = load i32, i32* @GL_FRAMEBUFFER, align 4
  %184 = call i32 @GL_BindFramebuffer(i32 %183, i32 0)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @glState, i32 0, i32 0), align 8
  br label %185

185:                                              ; preds = %149, %23
  ret void
}

declare dso_local i32 @FBO_Blit(%struct.TYPE_9__*, i32*, i32*, %struct.TYPE_9__*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @VectorSet4(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @GL_BindFramebuffer(i32, i32) #1

declare dso_local i32 @qglBlitFramebuffer(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
