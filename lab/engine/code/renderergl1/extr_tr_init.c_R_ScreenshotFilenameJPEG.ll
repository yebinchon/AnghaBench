; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_init.c_R_ScreenshotFilenameJPEG.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_init.c_R_ScreenshotFilenameJPEG.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_OSPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"screenshots/shot9999.jpg\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"screenshots/shot%i%i%i%i.jpg\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_ScreenshotFilenameJPEG(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %3, align 4
  %13 = icmp sgt i32 %12, 9999
  br i1 %13, label %14, label %18

14:                                               ; preds = %11, %2
  %15 = load i8*, i8** %4, align 8
  %16 = load i32, i32* @MAX_OSPATH, align 4
  %17 = call i32 (i8*, i32, i8*, ...) @Com_sprintf(i8* %15, i32 %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %45

18:                                               ; preds = %11
  %19 = load i32, i32* %3, align 4
  %20 = sdiv i32 %19, 1000
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = mul nsw i32 %21, 1000
  %23 = load i32, i32* %3, align 4
  %24 = sub nsw i32 %23, %22
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = sdiv i32 %25, 100
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = mul nsw i32 %27, 100
  %29 = load i32, i32* %3, align 4
  %30 = sub nsw i32 %29, %28
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = sdiv i32 %31, 10
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = mul nsw i32 %33, 10
  %35 = load i32, i32* %3, align 4
  %36 = sub nsw i32 %35, %34
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  store i32 %37, i32* %8, align 4
  %38 = load i8*, i8** %4, align 8
  %39 = load i32, i32* @MAX_OSPATH, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 (i8*, i32, i8*, ...) @Com_sprintf(i8* %38, i32 %39, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %18, %14
  ret void
}

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
