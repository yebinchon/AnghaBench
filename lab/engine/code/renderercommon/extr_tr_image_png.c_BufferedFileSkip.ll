; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderercommon/extr_tr_image_png.c_BufferedFileSkip.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderercommon/extr_tr_image_png.c_BufferedFileSkip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BufferedFile = type { i32, i32 }

@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.BufferedFile*, i32)* @BufferedFileSkip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @BufferedFileSkip(%struct.BufferedFile* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.BufferedFile*, align 8
  %5 = alloca i32, align 4
  store %struct.BufferedFile* %0, %struct.BufferedFile** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.BufferedFile*, %struct.BufferedFile** %4, align 8
  %7 = icmp ne %struct.BufferedFile* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* @qfalse, align 4
  store i32 %9, i32* %3, align 4
  br label %30

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.BufferedFile*, %struct.BufferedFile** %4, align 8
  %13 = getelementptr inbounds %struct.BufferedFile, %struct.BufferedFile* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ugt i32 %11, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = load i32, i32* @qfalse, align 4
  store i32 %17, i32* %3, align 4
  br label %30

18:                                               ; preds = %10
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.BufferedFile*, %struct.BufferedFile** %4, align 8
  %21 = getelementptr inbounds %struct.BufferedFile, %struct.BufferedFile* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = add i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.BufferedFile*, %struct.BufferedFile** %4, align 8
  %26 = getelementptr inbounds %struct.BufferedFile, %struct.BufferedFile* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sub i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load i32, i32* @qtrue, align 4
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %18, %16, %8
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
