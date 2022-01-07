; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_scatterwalk.c_scatterwalk_copychunks.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_scatterwalk.c_scatterwalk_copychunks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatter_walk = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scatterwalk_copychunks(i8* %0, %struct.scatter_walk* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.scatter_walk*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.scatter_walk* %1, %struct.scatter_walk** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  br label %11

11:                                               ; preds = %43, %4
  %12 = load %struct.scatter_walk*, %struct.scatter_walk** %6, align 8
  %13 = call i32 @scatterwalk_pagelen(%struct.scatter_walk* %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %7, align 8
  %17 = icmp ugt i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %11
  %19 = load i64, i64* %7, align 8
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %9, align 4
  br label %21

21:                                               ; preds = %18, %11
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 2
  br i1 %23, label %24, label %34

24:                                               ; preds = %21
  %25 = load %struct.scatter_walk*, %struct.scatter_walk** %6, align 8
  %26 = call i32* @scatterwalk_map(%struct.scatter_walk* %25)
  store i32* %26, i32** %10, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @memcpy_dir(i8* %27, i32* %28, i32 %29, i32 %30)
  %32 = load i32*, i32** %10, align 8
  %33 = call i32 @scatterwalk_unmap(i32* %32)
  br label %34

34:                                               ; preds = %24, %21
  %35 = load %struct.scatter_walk*, %struct.scatter_walk** %6, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @scatterwalk_advance(%struct.scatter_walk* %35, i32 %36)
  %38 = load i64, i64* %7, align 8
  %39 = load i32, i32* %9, align 4
  %40 = zext i32 %39 to i64
  %41 = icmp eq i64 %38, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %56

43:                                               ; preds = %34
  %44 = load i32, i32* %9, align 4
  %45 = load i8*, i8** %5, align 8
  %46 = zext i32 %44 to i64
  %47 = getelementptr i8, i8* %45, i64 %46
  store i8* %47, i8** %5, align 8
  %48 = load i32, i32* %9, align 4
  %49 = zext i32 %48 to i64
  %50 = load i64, i64* %7, align 8
  %51 = sub i64 %50, %49
  store i64 %51, i64* %7, align 8
  %52 = load %struct.scatter_walk*, %struct.scatter_walk** %6, align 8
  %53 = load i32, i32* %8, align 4
  %54 = and i32 %53, 1
  %55 = call i32 @scatterwalk_pagedone(%struct.scatter_walk* %52, i32 %54, i32 1)
  br label %11

56:                                               ; preds = %42
  ret void
}

declare dso_local i32 @scatterwalk_pagelen(%struct.scatter_walk*) #1

declare dso_local i32* @scatterwalk_map(%struct.scatter_walk*) #1

declare dso_local i32 @memcpy_dir(i8*, i32*, i32, i32) #1

declare dso_local i32 @scatterwalk_unmap(i32*) #1

declare dso_local i32 @scatterwalk_advance(%struct.scatter_walk*, i32) #1

declare dso_local i32 @scatterwalk_pagedone(%struct.scatter_walk*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
