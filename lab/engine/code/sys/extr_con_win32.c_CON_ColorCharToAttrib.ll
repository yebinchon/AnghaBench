; ModuleID = '/home/carl/AnghaBench/lab/engine/code/sys/extr_con_win32.c_CON_ColorCharToAttrib.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/sys/extr_con_win32.c_CON_ColorCharToAttrib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@COLOR_WHITE = common dso_local global i8 0, align 1
@qconsole_attrib = common dso_local global i32 0, align 4
@g_color_table = common dso_local global float** null, align 8
@FOREGROUND_RED = common dso_local global i32 0, align 4
@FOREGROUND_GREEN = common dso_local global i32 0, align 4
@FOREGROUND_BLUE = common dso_local global i32 0, align 4
@FOREGROUND_INTENSITY = common dso_local global i32 0, align 4
@qconsole_backgroundAttrib = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8)* @CON_ColorCharToAttrib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CON_ColorCharToAttrib(i8 signext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = alloca float*, align 8
  store i8 %0, i8* %2, align 1
  %5 = load i8, i8* %2, align 1
  %6 = sext i8 %5 to i32
  %7 = load i8, i8* @COLOR_WHITE, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @qconsole_attrib, align 4
  store i32 %11, i32* %3, align 4
  br label %64

12:                                               ; preds = %1
  %13 = load float**, float*** @g_color_table, align 8
  %14 = load i8, i8* %2, align 1
  %15 = call i64 @ColorIndex(i8 signext %14)
  %16 = getelementptr inbounds float*, float** %13, i64 %15
  %17 = load float*, float** %16, align 8
  store float* %17, float** %4, align 8
  %18 = load float*, float** %4, align 8
  %19 = getelementptr inbounds float, float* %18, i64 0
  %20 = load float, float* %19, align 4
  %21 = fpext float %20 to double
  %22 = fcmp oge double %21, 5.000000e-01
  br i1 %22, label %23, label %25

23:                                               ; preds = %12
  %24 = load i32, i32* @FOREGROUND_RED, align 4
  br label %26

25:                                               ; preds = %12
  br label %26

26:                                               ; preds = %25, %23
  %27 = phi i32 [ %24, %23 ], [ 0, %25 ]
  %28 = load float*, float** %4, align 8
  %29 = getelementptr inbounds float, float* %28, i64 1
  %30 = load float, float* %29, align 4
  %31 = fpext float %30 to double
  %32 = fcmp oge double %31, 5.000000e-01
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* @FOREGROUND_GREEN, align 4
  br label %36

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35, %33
  %37 = phi i32 [ %34, %33 ], [ 0, %35 ]
  %38 = or i32 %27, %37
  %39 = load float*, float** %4, align 8
  %40 = getelementptr inbounds float, float* %39, i64 2
  %41 = load float, float* %40, align 4
  %42 = fpext float %41 to double
  %43 = fcmp oge double %42, 5.000000e-01
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load i32, i32* @FOREGROUND_BLUE, align 4
  br label %47

46:                                               ; preds = %36
  br label %47

47:                                               ; preds = %46, %44
  %48 = phi i32 [ %45, %44 ], [ 0, %46 ]
  %49 = or i32 %38, %48
  %50 = load float*, float** %4, align 8
  %51 = getelementptr inbounds float, float* %50, i64 3
  %52 = load float, float* %51, align 4
  %53 = fpext float %52 to double
  %54 = fcmp oge double %53, 5.000000e-01
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = load i32, i32* @FOREGROUND_INTENSITY, align 4
  br label %58

57:                                               ; preds = %47
  br label %58

58:                                               ; preds = %57, %55
  %59 = phi i32 [ %56, %55 ], [ 0, %57 ]
  %60 = or i32 %49, %59
  store i32 %60, i32* %3, align 4
  %61 = load i32, i32* @qconsole_backgroundAttrib, align 4
  %62 = load i32, i32* %3, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %58, %10
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i64 @ColorIndex(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
