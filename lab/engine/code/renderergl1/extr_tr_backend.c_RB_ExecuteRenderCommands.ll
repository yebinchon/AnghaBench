; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_backend.c_RB_ExecuteRenderCommands.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_backend.c_RB_ExecuteRenderCommands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (...)* }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ri = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@backEnd = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RB_ExecuteRenderCommands(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ri, i32 0, i32 0), align 8
  %6 = call i32 (...) %5()
  store i32 %6, i32* %3, align 4
  br label %7

7:                                                ; preds = %1, %47
  %8 = load i8*, i8** %2, align 8
  %9 = call i8* @PADP(i8* %8, i32 8)
  store i8* %9, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to i32*
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %41 [
    i32 131, label %13
    i32 130, label %16
    i32 134, label %19
    i32 135, label %22
    i32 129, label %25
    i32 132, label %28
    i32 128, label %31
    i32 136, label %34
    i32 137, label %37
    i32 133, label %40
  ]

13:                                               ; preds = %7
  %14 = load i8*, i8** %2, align 8
  %15 = call i8* @RB_SetColor(i8* %14)
  store i8* %15, i8** %2, align 8
  br label %47

16:                                               ; preds = %7
  %17 = load i8*, i8** %2, align 8
  %18 = call i8* @RB_StretchPic(i8* %17)
  store i8* %18, i8** %2, align 8
  br label %47

19:                                               ; preds = %7
  %20 = load i8*, i8** %2, align 8
  %21 = call i8* @RB_DrawSurfs(i8* %20)
  store i8* %21, i8** %2, align 8
  br label %47

22:                                               ; preds = %7
  %23 = load i8*, i8** %2, align 8
  %24 = call i8* @RB_DrawBuffer(i8* %23)
  store i8* %24, i8** %2, align 8
  br label %47

25:                                               ; preds = %7
  %26 = load i8*, i8** %2, align 8
  %27 = call i8* @RB_SwapBuffers(i8* %26)
  store i8* %27, i8** %2, align 8
  br label %47

28:                                               ; preds = %7
  %29 = load i8*, i8** %2, align 8
  %30 = call i8* @RB_TakeScreenshotCmd(i8* %29)
  store i8* %30, i8** %2, align 8
  br label %47

31:                                               ; preds = %7
  %32 = load i8*, i8** %2, align 8
  %33 = call i8* @RB_TakeVideoFrameCmd(i8* %32)
  store i8* %33, i8** %2, align 8
  br label %47

34:                                               ; preds = %7
  %35 = load i8*, i8** %2, align 8
  %36 = call i8* @RB_ColorMask(i8* %35)
  store i8* %36, i8** %2, align 8
  br label %47

37:                                               ; preds = %7
  %38 = load i8*, i8** %2, align 8
  %39 = call i8* @RB_ClearDepth(i8* %38)
  store i8* %39, i8** %2, align 8
  br label %47

40:                                               ; preds = %7
  br label %41

41:                                               ; preds = %7, %40
  %42 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ri, i32 0, i32 0), align 8
  %43 = call i32 (...) %42()
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* %3, align 4
  %46 = sub nsw i32 %44, %45
  store i32 %46, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @backEnd, i32 0, i32 0, i32 0), align 4
  ret void

47:                                               ; preds = %37, %34, %31, %28, %25, %22, %19, %16, %13
  br label %7
}

declare dso_local i8* @PADP(i8*, i32) #1

declare dso_local i8* @RB_SetColor(i8*) #1

declare dso_local i8* @RB_StretchPic(i8*) #1

declare dso_local i8* @RB_DrawSurfs(i8*) #1

declare dso_local i8* @RB_DrawBuffer(i8*) #1

declare dso_local i8* @RB_SwapBuffers(i8*) #1

declare dso_local i8* @RB_TakeScreenshotCmd(i8*) #1

declare dso_local i8* @RB_TakeVideoFrameCmd(i8*) #1

declare dso_local i8* @RB_ColorMask(i8*) #1

declare dso_local i8* @RB_ClearDepth(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
