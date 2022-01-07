; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderercommon/extr_tr_image_png.c_BufferedFileRead.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderercommon/extr_tr_image_png.c_BufferedFileRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BufferedFile = type { i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.BufferedFile*, i32)* @BufferedFileRead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @BufferedFileRead(%struct.BufferedFile* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.BufferedFile*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.BufferedFile* %0, %struct.BufferedFile** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.BufferedFile*, %struct.BufferedFile** %4, align 8
  %8 = icmp ne %struct.BufferedFile* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9, %2
  store i8* null, i8** %3, align 8
  br label %36

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.BufferedFile*, %struct.BufferedFile** %4, align 8
  %16 = getelementptr inbounds %struct.BufferedFile, %struct.BufferedFile* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ugt i32 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i8* null, i8** %3, align 8
  br label %36

20:                                               ; preds = %13
  %21 = load %struct.BufferedFile*, %struct.BufferedFile** %4, align 8
  %22 = getelementptr inbounds %struct.BufferedFile, %struct.BufferedFile* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %6, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.BufferedFile*, %struct.BufferedFile** %4, align 8
  %26 = getelementptr inbounds %struct.BufferedFile, %struct.BufferedFile* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = zext i32 %24 to i64
  %29 = getelementptr i8, i8* %27, i64 %28
  store i8* %29, i8** %26, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.BufferedFile*, %struct.BufferedFile** %4, align 8
  %32 = getelementptr inbounds %struct.BufferedFile, %struct.BufferedFile* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sub i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load i8*, i8** %6, align 8
  store i8* %35, i8** %3, align 8
  br label %36

36:                                               ; preds = %20, %19, %12
  %37 = load i8*, i8** %3, align 8
  ret i8* %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
