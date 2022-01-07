; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderercommon/extr_tr_image_png.c_ReadBufferedFile.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderercommon/extr_tr_image_png.c_ReadBufferedFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (i8*, i8**)*, i32 (%struct.BufferedFile*)*, %struct.BufferedFile* (i32)* }
%struct.BufferedFile = type { i64, i64, i32*, i32* }
%union.anon = type { i32* }

@ri = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.BufferedFile* (i8*)* @ReadBufferedFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.BufferedFile* @ReadBufferedFile(i8* %0) #0 {
  %2 = alloca %struct.BufferedFile*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.BufferedFile*, align 8
  %5 = alloca %union.anon, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store %struct.BufferedFile* null, %struct.BufferedFile** %2, align 8
  br label %59

9:                                                ; preds = %1
  %10 = load %struct.BufferedFile* (i32)*, %struct.BufferedFile* (i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ri, i32 0, i32 2), align 8
  %11 = call %struct.BufferedFile* %10(i32 32)
  store %struct.BufferedFile* %11, %struct.BufferedFile** %4, align 8
  %12 = load %struct.BufferedFile*, %struct.BufferedFile** %4, align 8
  %13 = icmp ne %struct.BufferedFile* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  store %struct.BufferedFile* null, %struct.BufferedFile** %2, align 8
  br label %59

15:                                               ; preds = %9
  %16 = load %struct.BufferedFile*, %struct.BufferedFile** %4, align 8
  %17 = getelementptr inbounds %struct.BufferedFile, %struct.BufferedFile* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  %18 = load %struct.BufferedFile*, %struct.BufferedFile** %4, align 8
  %19 = getelementptr inbounds %struct.BufferedFile, %struct.BufferedFile* %18, i32 0, i32 2
  store i32* null, i32** %19, align 8
  %20 = load %struct.BufferedFile*, %struct.BufferedFile** %4, align 8
  %21 = getelementptr inbounds %struct.BufferedFile, %struct.BufferedFile* %20, i32 0, i32 3
  store i32* null, i32** %21, align 8
  %22 = load %struct.BufferedFile*, %struct.BufferedFile** %4, align 8
  %23 = getelementptr inbounds %struct.BufferedFile, %struct.BufferedFile* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load i64 (i8*, i8**)*, i64 (i8*, i8**)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ri, i32 0, i32 0), align 8
  %25 = load i8*, i8** %3, align 8
  %26 = bitcast %union.anon* %5 to i8**
  %27 = call i64 %24(i8* %25, i8** %26)
  %28 = load %struct.BufferedFile*, %struct.BufferedFile** %4, align 8
  %29 = getelementptr inbounds %struct.BufferedFile, %struct.BufferedFile* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = bitcast %union.anon* %5 to i32**
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.BufferedFile*, %struct.BufferedFile** %4, align 8
  %33 = getelementptr inbounds %struct.BufferedFile, %struct.BufferedFile* %32, i32 0, i32 2
  store i32* %31, i32** %33, align 8
  %34 = load %struct.BufferedFile*, %struct.BufferedFile** %4, align 8
  %35 = getelementptr inbounds %struct.BufferedFile, %struct.BufferedFile* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %15
  %39 = load %struct.BufferedFile*, %struct.BufferedFile** %4, align 8
  %40 = getelementptr inbounds %struct.BufferedFile, %struct.BufferedFile* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %38, %15
  %44 = load i32 (%struct.BufferedFile*)*, i32 (%struct.BufferedFile*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ri, i32 0, i32 1), align 8
  %45 = load %struct.BufferedFile*, %struct.BufferedFile** %4, align 8
  %46 = call i32 %44(%struct.BufferedFile* %45)
  store %struct.BufferedFile* null, %struct.BufferedFile** %2, align 8
  br label %59

47:                                               ; preds = %38
  %48 = load %struct.BufferedFile*, %struct.BufferedFile** %4, align 8
  %49 = getelementptr inbounds %struct.BufferedFile, %struct.BufferedFile* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.BufferedFile*, %struct.BufferedFile** %4, align 8
  %52 = getelementptr inbounds %struct.BufferedFile, %struct.BufferedFile* %51, i32 0, i32 3
  store i32* %50, i32** %52, align 8
  %53 = load %struct.BufferedFile*, %struct.BufferedFile** %4, align 8
  %54 = getelementptr inbounds %struct.BufferedFile, %struct.BufferedFile* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.BufferedFile*, %struct.BufferedFile** %4, align 8
  %57 = getelementptr inbounds %struct.BufferedFile, %struct.BufferedFile* %56, i32 0, i32 1
  store i64 %55, i64* %57, align 8
  %58 = load %struct.BufferedFile*, %struct.BufferedFile** %4, align 8
  store %struct.BufferedFile* %58, %struct.BufferedFile** %2, align 8
  br label %59

59:                                               ; preds = %47, %43, %14, %8
  %60 = load %struct.BufferedFile*, %struct.BufferedFile** %2, align 8
  ret %struct.BufferedFile* %60
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
