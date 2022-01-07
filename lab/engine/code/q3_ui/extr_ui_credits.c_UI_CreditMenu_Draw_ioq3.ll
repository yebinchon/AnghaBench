; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_credits.c_UI_CreditMenu_Draw_ioq3.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_credits.c_UI_CreditMenu_Draw_ioq3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UI_CreditMenu_Draw_ioq3.names = internal global [14 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [10 x i8] c"Tim Angus\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"James Canete\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Vincent Cojot\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Ryan C. Gordon\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"Aaron Gyes\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Zack Middleton\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"Ludwig Nussel\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"Julian Priestley\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"Scirocco Six\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"Thilo Schulz\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"Zachary J. Slater\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"Tony J. White\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"...and many, many others!\00", align 1
@SCREEN_HEIGHT = common dso_local global double 0.000000e+00, align 8
@PROP_HEIGHT = common dso_local global double 0.000000e+00, align 8
@PROP_SMALL_SIZE_SCALE = common dso_local global double 0.000000e+00, align 8
@.str.13 = private unnamed_addr constant [23 x i8] c"ioquake3 contributors:\00", align 1
@UI_CENTER = common dso_local global i32 0, align 4
@UI_SMALLFONT = common dso_local global i32 0, align 4
@color_black = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [25 x i8] c"http://www.ioquake3.org/\00", align 1
@color_blue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @UI_CreditMenu_Draw_ioq3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UI_CreditMenu_Draw_ioq3() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load double, double* @SCREEN_HEIGHT, align 8
  %4 = call double @ARRAY_LEN(i8** getelementptr inbounds ([14 x i8*], [14 x i8*]* @UI_CreditMenu_Draw_ioq3.names, i64 0, i64 0))
  %5 = load double, double* @PROP_HEIGHT, align 8
  %6 = fmul double 1.420000e+00, %5
  %7 = load double, double* @PROP_SMALL_SIZE_SCALE, align 8
  %8 = fmul double %6, %7
  %9 = fmul double %4, %8
  %10 = fsub double %3, %9
  %11 = fdiv double %10, 2.000000e+00
  %12 = fptosi double %11 to i32
  store i32 %12, i32* %1, align 4
  %13 = load i32, i32* %1, align 4
  %14 = load i32, i32* @UI_CENTER, align 4
  %15 = load i32, i32* @UI_SMALLFONT, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @color_black, align 4
  %18 = call i32 @UI_DrawProportionalString(i32 320, i32 %13, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), i32 %16, i32 %17)
  %19 = load double, double* @PROP_HEIGHT, align 8
  %20 = fmul double 1.420000e+00, %19
  %21 = load double, double* @PROP_SMALL_SIZE_SCALE, align 8
  %22 = fmul double %20, %21
  %23 = load i32, i32* %1, align 4
  %24 = sitofp i32 %23 to double
  %25 = fadd double %24, %22
  %26 = fptosi double %25 to i32
  store i32 %26, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %52, %0
  %28 = load i32, i32* %2, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [14 x i8*], [14 x i8*]* @UI_CreditMenu_Draw_ioq3.names, i64 0, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %55

33:                                               ; preds = %27
  %34 = load i32, i32* %1, align 4
  %35 = load i32, i32* %2, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [14 x i8*], [14 x i8*]* @UI_CreditMenu_Draw_ioq3.names, i64 0, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = load i32, i32* @UI_CENTER, align 4
  %40 = load i32, i32* @UI_SMALLFONT, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @color_black, align 4
  %43 = call i32 @UI_DrawProportionalString(i32 320, i32 %34, i8* %38, i32 %41, i32 %42)
  %44 = load double, double* @PROP_HEIGHT, align 8
  %45 = fmul double 1.420000e+00, %44
  %46 = load double, double* @PROP_SMALL_SIZE_SCALE, align 8
  %47 = fmul double %45, %46
  %48 = load i32, i32* %1, align 4
  %49 = sitofp i32 %48 to double
  %50 = fadd double %49, %47
  %51 = fptosi double %50 to i32
  store i32 %51, i32* %1, align 4
  br label %52

52:                                               ; preds = %33
  %53 = load i32, i32* %2, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %2, align 4
  br label %27

55:                                               ; preds = %27
  %56 = load i32, i32* @UI_CENTER, align 4
  %57 = load i32, i32* @UI_SMALLFONT, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @color_blue, align 4
  %60 = call i32 @UI_DrawString(i32 320, i32 459, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 %58, i32 %59)
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
