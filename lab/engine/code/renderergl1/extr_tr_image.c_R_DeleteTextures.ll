; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_image.c_R_DeleteTextures.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_image.c_R_DeleteTextures.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__** }

@tr = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@glState = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@qglActiveTextureARB = common dso_local global i64 0, align 8
@GL_TEXTURE_2D = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_DeleteTextures() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %14, %0
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tr, i32 0, i32 0), align 8
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %17

6:                                                ; preds = %2
  %7 = load %struct.TYPE_6__**, %struct.TYPE_6__*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tr, i32 0, i32 1), align 8
  %8 = load i32, i32* %1, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %7, i64 %9
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = call i32 @qglDeleteTextures(i32 1, i32* %12)
  br label %14

14:                                               ; preds = %6
  %15 = load i32, i32* %1, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %1, align 4
  br label %2

17:                                               ; preds = %2
  %18 = load %struct.TYPE_6__**, %struct.TYPE_6__*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tr, i32 0, i32 1), align 8
  %19 = call i32 @Com_Memset(%struct.TYPE_6__** %18, i32 0, i32 8)
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tr, i32 0, i32 0), align 8
  %20 = load %struct.TYPE_6__**, %struct.TYPE_6__*** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @glState, i32 0, i32 0), align 8
  %21 = call i32 @Com_Memset(%struct.TYPE_6__** %20, i32 0, i32 8)
  %22 = load i64, i64* @qglActiveTextureARB, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %17
  %25 = call i32 @GL_SelectTexture(i32 1)
  %26 = load i32, i32* @GL_TEXTURE_2D, align 4
  %27 = call i32 @qglBindTexture(i32 %26, i32 0)
  %28 = call i32 @GL_SelectTexture(i32 0)
  %29 = load i32, i32* @GL_TEXTURE_2D, align 4
  %30 = call i32 @qglBindTexture(i32 %29, i32 0)
  br label %34

31:                                               ; preds = %17
  %32 = load i32, i32* @GL_TEXTURE_2D, align 4
  %33 = call i32 @qglBindTexture(i32 %32, i32 0)
  br label %34

34:                                               ; preds = %31, %24
  ret void
}

declare dso_local i32 @qglDeleteTextures(i32, i32*) #1

declare dso_local i32 @Com_Memset(%struct.TYPE_6__**, i32, i32) #1

declare dso_local i32 @GL_SelectTexture(i32) #1

declare dso_local i32 @qglBindTexture(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
