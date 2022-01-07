; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_serverinfo.c_ServerInfo_MenuDraw.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_serverinfo.c_ServerInfo_MenuDraw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8*, i32 }

@MAX_INFO_KEY = common dso_local global i32 0, align 4
@MAX_INFO_VALUE = common dso_local global i32 0, align 4
@SCREEN_HEIGHT = common dso_local global i32 0, align 4
@s_serverinfo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@SMALLCHAR_HEIGHT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c":\00", align 1
@SCREEN_WIDTH = common dso_local global double 0.000000e+00, align 8
@UI_RIGHT = common dso_local global i32 0, align 4
@UI_SMALLFONT = common dso_local global i32 0, align 4
@color_blue = common dso_local global i32 0, align 4
@UI_LEFT = common dso_local global i32 0, align 4
@text_color_normal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ServerInfo_MenuDraw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ServerInfo_MenuDraw() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i32, i32* @MAX_INFO_KEY, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %2, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %3, align 8
  %11 = load i32, i32* @MAX_INFO_VALUE, align 4
  %12 = zext i32 %11 to i64
  %13 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %14 = load i32, i32* @SCREEN_HEIGHT, align 4
  %15 = sdiv i32 %14, 2
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_serverinfo, i32 0, i32 0), align 8
  %17 = load i32, i32* @SMALLCHAR_HEIGHT, align 4
  %18 = mul nsw i32 %16, %17
  %19 = sdiv i32 %18, 2
  %20 = sub nsw i32 %15, %19
  %21 = sub nsw i32 %20, 20
  store i32 %21, i32* %6, align 4
  %22 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_serverinfo, i32 0, i32 1), align 8
  store i8* %22, i8** %1, align 8
  br label %23

23:                                               ; preds = %38, %0
  %24 = load i8*, i8** %1, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_serverinfo, i32 0, i32 0), align 8
  %29 = icmp slt i32 %27, %28
  br label %30

30:                                               ; preds = %26, %23
  %31 = phi i1 [ false, %23 ], [ %29, %26 ]
  br i1 %31, label %32, label %64

32:                                               ; preds = %30
  %33 = call i32 @Info_NextPair(i8** %1, i8* %10, i8* %13)
  %34 = getelementptr inbounds i8, i8* %10, i64 0
  %35 = load i8, i8* %34, align 16
  %36 = icmp ne i8 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  br label %64

38:                                               ; preds = %32
  %39 = load i32, i32* @MAX_INFO_KEY, align 4
  %40 = call i32 @Q_strcat(i8* %10, i32 %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %41 = load double, double* @SCREEN_WIDTH, align 8
  %42 = fmul double %41, 5.000000e-01
  %43 = fsub double %42, 8.000000e+00
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @UI_RIGHT, align 4
  %46 = load i32, i32* @UI_SMALLFONT, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @color_blue, align 4
  %49 = call i32 @UI_DrawString(double %43, i32 %44, i8* %10, i32 %47, i32 %48)
  %50 = load double, double* @SCREEN_WIDTH, align 8
  %51 = fmul double %50, 5.000000e-01
  %52 = fadd double %51, 8.000000e+00
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @UI_LEFT, align 4
  %55 = load i32, i32* @UI_SMALLFONT, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @text_color_normal, align 4
  %58 = call i32 @UI_DrawString(double %52, i32 %53, i8* %13, i32 %56, i32 %57)
  %59 = load i32, i32* @SMALLCHAR_HEIGHT, align 4
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %23

64:                                               ; preds = %37, %30
  %65 = call i32 @Menu_Draw(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_serverinfo, i32 0, i32 2))
  %66 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %66)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Info_NextPair(i8**, i8*, i8*) #2

declare dso_local i32 @Q_strcat(i8*, i32, i8*) #2

declare dso_local i32 @UI_DrawString(double, i32, i8*, i32, i32) #2

declare dso_local i32 @Menu_Draw(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
