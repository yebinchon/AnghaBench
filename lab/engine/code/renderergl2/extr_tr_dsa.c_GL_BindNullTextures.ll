; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_dsa.c_GL_BindNullTextures.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_dsa.c_GL_BindNullTextures.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64, i64* }

@glRefConfig = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@NUM_TEXTURE_BUNDLES = common dso_local global i32 0, align 4
@GL_TEXTURE0 = common dso_local global i64 0, align 8
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@glDsaState = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GL_BindNullTextures() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @glRefConfig, i32 0, i32 0), align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %24

4:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %20, %4
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* @NUM_TEXTURE_BUNDLES, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %23

9:                                                ; preds = %5
  %10 = load i64, i64* @GL_TEXTURE0, align 8
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = add nsw i64 %10, %12
  %14 = load i32, i32* @GL_TEXTURE_2D, align 4
  %15 = call i32 @qglBindMultiTextureEXT(i64 %13, i32 %14, i32 0)
  %16 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @glDsaState, i32 0, i32 1), align 8
  %17 = load i32, i32* %1, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  store i64 0, i64* %19, align 8
  br label %20

20:                                               ; preds = %9
  %21 = load i32, i32* %1, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %1, align 4
  br label %5

23:                                               ; preds = %5
  br label %48

24:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %25

25:                                               ; preds = %41, %24
  %26 = load i32, i32* %1, align 4
  %27 = load i32, i32* @NUM_TEXTURE_BUNDLES, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %25
  %30 = load i64, i64* @GL_TEXTURE0, align 8
  %31 = load i32, i32* %1, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %30, %32
  %34 = call i32 @qglActiveTexture(i64 %33)
  %35 = load i32, i32* @GL_TEXTURE_2D, align 4
  %36 = call i32 @qglBindTexture(i32 %35, i32 0)
  %37 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @glDsaState, i32 0, i32 1), align 8
  %38 = load i32, i32* %1, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  store i64 0, i64* %40, align 8
  br label %41

41:                                               ; preds = %29
  %42 = load i32, i32* %1, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %1, align 4
  br label %25

44:                                               ; preds = %25
  %45 = load i64, i64* @GL_TEXTURE0, align 8
  %46 = call i32 @qglActiveTexture(i64 %45)
  %47 = load i64, i64* @GL_TEXTURE0, align 8
  store i64 %47, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @glDsaState, i32 0, i32 0), align 8
  br label %48

48:                                               ; preds = %44, %23
  ret void
}

declare dso_local i32 @qglBindMultiTextureEXT(i64, i32, i32) #1

declare dso_local i32 @qglActiveTexture(i64) #1

declare dso_local i32 @qglBindTexture(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
