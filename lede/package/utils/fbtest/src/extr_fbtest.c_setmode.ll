; ModuleID = '/home/carl/AnghaBench/lede/package/utils/fbtest/src/extr_fbtest.c_setmode.c'
source_filename = "/home/carl/AnghaBench/lede/package/utils/fbtest/src/extr_fbtest.c_setmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pixelformat = type { i32, i32, i32, i32, i32 }
%struct.vidsize = type { i32, i32 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@FBIOGET_VSCREENINFO = common dso_local global i32 0, align 4
@FBIOPUT_VSCREENINFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setmode(i32 %0, %struct.pixelformat* %1, %struct.vidsize* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pixelformat*, align 8
  %7 = alloca %struct.vidsize*, align 8
  %8 = alloca %struct.fb_var_screeninfo, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.pixelformat* %1, %struct.pixelformat** %6, align 8
  store %struct.vidsize* %2, %struct.vidsize** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @FBIOGET_VSCREENINFO, align 4
  %12 = call i32 @ioctl(i32 %10, i32 %11, %struct.fb_var_screeninfo* %8)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 -2, i32* %4, align 4
  br label %60

16:                                               ; preds = %3
  %17 = load %struct.vidsize*, %struct.vidsize** %7, align 8
  %18 = getelementptr inbounds %struct.vidsize, %struct.vidsize* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %8, i32 0, i32 8
  store i32 %19, i32* %20, align 4
  %21 = load %struct.vidsize*, %struct.vidsize** %7, align 8
  %22 = getelementptr inbounds %struct.vidsize, %struct.vidsize* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %8, i32 0, i32 7
  store i32 %23, i32* %24, align 4
  %25 = load %struct.vidsize*, %struct.vidsize** %7, align 8
  %26 = getelementptr inbounds %struct.vidsize, %struct.vidsize* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %8, i32 0, i32 6
  store i32 %27, i32* %28, align 4
  %29 = load %struct.vidsize*, %struct.vidsize** %7, align 8
  %30 = getelementptr inbounds %struct.vidsize, %struct.vidsize* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %8, i32 0, i32 5
  store i32 %31, i32* %32, align 4
  %33 = load %struct.pixelformat*, %struct.pixelformat** %6, align 8
  %34 = getelementptr inbounds %struct.pixelformat, %struct.pixelformat* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %8, i32 0, i32 4
  store i32 %35, i32* %36, align 4
  %37 = load %struct.pixelformat*, %struct.pixelformat** %6, align 8
  %38 = getelementptr inbounds %struct.pixelformat, %struct.pixelformat* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %8, i32 0, i32 3
  store i32 %39, i32* %40, align 4
  %41 = load %struct.pixelformat*, %struct.pixelformat** %6, align 8
  %42 = getelementptr inbounds %struct.pixelformat, %struct.pixelformat* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %8, i32 0, i32 2
  store i32 %43, i32* %44, align 4
  %45 = load %struct.pixelformat*, %struct.pixelformat** %6, align 8
  %46 = getelementptr inbounds %struct.pixelformat, %struct.pixelformat* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %8, i32 0, i32 1
  store i32 %47, i32* %48, align 4
  %49 = load %struct.pixelformat*, %struct.pixelformat** %6, align 8
  %50 = getelementptr inbounds %struct.pixelformat, %struct.pixelformat* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %8, i32 0, i32 0
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @FBIOPUT_VSCREENINFO, align 4
  %55 = call i32 @ioctl(i32 %53, i32 %54, %struct.fb_var_screeninfo* %8)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %16
  store i32 -1, i32* %4, align 4
  br label %60

59:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %59, %58, %15
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @ioctl(i32, i32, %struct.fb_var_screeninfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
