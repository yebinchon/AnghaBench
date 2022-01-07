; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderercommon/extr_tr_image_png.c_BufferedFileRewind.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderercommon/extr_tr_image_png.c_BufferedFileRewind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BufferedFile = type { i32, i32, i32, i32 }

@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.BufferedFile*, i32)* @BufferedFileRewind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @BufferedFileRewind(%struct.BufferedFile* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.BufferedFile*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.BufferedFile* %0, %struct.BufferedFile** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.BufferedFile*, %struct.BufferedFile** %4, align 8
  %8 = icmp ne %struct.BufferedFile* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @qfalse, align 4
  store i32 %10, i32* %3, align 4
  br label %51

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %26

14:                                               ; preds = %11
  %15 = load %struct.BufferedFile*, %struct.BufferedFile** %4, align 8
  %16 = getelementptr inbounds %struct.BufferedFile, %struct.BufferedFile* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.BufferedFile*, %struct.BufferedFile** %4, align 8
  %19 = getelementptr inbounds %struct.BufferedFile, %struct.BufferedFile* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.BufferedFile*, %struct.BufferedFile** %4, align 8
  %21 = getelementptr inbounds %struct.BufferedFile, %struct.BufferedFile* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.BufferedFile*, %struct.BufferedFile** %4, align 8
  %24 = getelementptr inbounds %struct.BufferedFile, %struct.BufferedFile* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @qtrue, align 4
  store i32 %25, i32* %3, align 4
  br label %51

26:                                               ; preds = %11
  %27 = load %struct.BufferedFile*, %struct.BufferedFile** %4, align 8
  %28 = getelementptr inbounds %struct.BufferedFile, %struct.BufferedFile* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.BufferedFile*, %struct.BufferedFile** %4, align 8
  %31 = getelementptr inbounds %struct.BufferedFile, %struct.BufferedFile* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sub i32 %29, %32
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ugt i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %26
  %38 = load i32, i32* @qfalse, align 4
  store i32 %38, i32* %3, align 4
  br label %51

39:                                               ; preds = %26
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.BufferedFile*, %struct.BufferedFile** %4, align 8
  %42 = getelementptr inbounds %struct.BufferedFile, %struct.BufferedFile* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sub i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.BufferedFile*, %struct.BufferedFile** %4, align 8
  %47 = getelementptr inbounds %struct.BufferedFile, %struct.BufferedFile* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = add i32 %48, %45
  store i32 %49, i32* %47, align 4
  %50 = load i32, i32* @qtrue, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %39, %37, %14, %9
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
