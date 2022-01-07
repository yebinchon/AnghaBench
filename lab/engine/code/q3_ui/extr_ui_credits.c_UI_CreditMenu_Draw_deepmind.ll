; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_credits.c_UI_CreditMenu_Draw_deepmind.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_credits.c_UI_CreditMenu_Draw_deepmind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UI_CreditMenu_Draw_deepmind.names = internal global [2 x i8*] [i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [14 x i8] c"DeepMind Team\00", align 1
@SCREEN_HEIGHT = common dso_local global double 0.000000e+00, align 8
@PROP_HEIGHT = common dso_local global double 0.000000e+00, align 8
@PROP_SMALL_SIZE_SCALE = common dso_local global double 0.000000e+00, align 8
@UI_CENTER = common dso_local global i32 0, align 4
@UI_BIGFONT = common dso_local global i32 0, align 4
@color_black = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"www.deepmind.com\00", align 1
@UI_SMALLFONT = common dso_local global i32 0, align 4
@color_blue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @UI_CreditMenu_Draw_deepmind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UI_CreditMenu_Draw_deepmind() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load double, double* @SCREEN_HEIGHT, align 8
  %4 = call double @ARRAY_LEN(i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @UI_CreditMenu_Draw_deepmind.names, i64 0, i64 0))
  %5 = load double, double* @PROP_HEIGHT, align 8
  %6 = fmul double 1.420000e+00, %5
  %7 = load double, double* @PROP_SMALL_SIZE_SCALE, align 8
  %8 = fmul double %6, %7
  %9 = fmul double %4, %8
  %10 = fsub double %3, %9
  %11 = fdiv double %10, 2.000000e+00
  %12 = fptosi double %11 to i32
  store i32 %12, i32* %1, align 4
  %13 = load double, double* @PROP_HEIGHT, align 8
  %14 = fmul double 1.420000e+00, %13
  %15 = load double, double* @PROP_SMALL_SIZE_SCALE, align 8
  %16 = fmul double %14, %15
  %17 = load i32, i32* %1, align 4
  %18 = sitofp i32 %17 to double
  %19 = fadd double %18, %16
  %20 = fptosi double %19 to i32
  store i32 %20, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %46, %0
  %22 = load i32, i32* %2, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [2 x i8*], [2 x i8*]* @UI_CreditMenu_Draw_deepmind.names, i64 0, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %49

27:                                               ; preds = %21
  %28 = load i32, i32* %1, align 4
  %29 = load i32, i32* %2, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [2 x i8*], [2 x i8*]* @UI_CreditMenu_Draw_deepmind.names, i64 0, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = load i32, i32* @UI_CENTER, align 4
  %34 = load i32, i32* @UI_BIGFONT, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @color_black, align 4
  %37 = call i32 @UI_DrawProportionalString(i32 320, i32 %28, i8* %32, i32 %35, i32 %36)
  %38 = load double, double* @PROP_HEIGHT, align 8
  %39 = fmul double 1.420000e+00, %38
  %40 = load double, double* @PROP_SMALL_SIZE_SCALE, align 8
  %41 = fmul double %39, %40
  %42 = load i32, i32* %1, align 4
  %43 = sitofp i32 %42 to double
  %44 = fadd double %43, %41
  %45 = fptosi double %44 to i32
  store i32 %45, i32* %1, align 4
  br label %46

46:                                               ; preds = %27
  %47 = load i32, i32* %2, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %2, align 4
  br label %21

49:                                               ; preds = %21
  %50 = load i32, i32* @UI_CENTER, align 4
  %51 = load i32, i32* @UI_SMALLFONT, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @color_blue, align 4
  %54 = call i32 @UI_DrawString(i32 320, i32 459, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %53)
  ret void
}

declare dso_local double @ARRAY_LEN(i8**) #1

declare dso_local i32 @UI_DrawProportionalString(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @UI_DrawString(i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
