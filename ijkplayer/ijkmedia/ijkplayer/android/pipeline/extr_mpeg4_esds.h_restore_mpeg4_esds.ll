; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/android/pipeline/extr_mpeg4_esds.h_restore_mpeg4_esds.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/android/pipeline/extr_mpeg4_esds.h_restore_mpeg4_esds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*, i64, i64, i64, i32*)* @restore_mpeg4_esds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @restore_mpeg4_esds(%struct.TYPE_3__* %0, i32* %1, i64 %2, i64 %3, i64 %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i32* %5, i32** %12, align 8
  %16 = load i32*, i32** %12, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  store i32 3, i32* %17, align 4
  %18 = load i32*, i32** %12, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  store i32 128, i32* %19, align 4
  %20 = load i32*, i32** %12, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 2
  store i32 128, i32* %21, align 4
  %22 = load i32*, i32** %12, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 3
  store i32 128, i32* %23, align 4
  %24 = load i64, i64* %10, align 8
  %25 = trunc i64 %24 to i32
  %26 = load i32*, i32** %12, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 4
  store i32 %25, i32* %27, align 4
  %28 = load i32*, i32** %12, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 5
  store i32* %29, i32** %13, align 8
  %30 = call i32 @htobe16(i32 1)
  %31 = load i32*, i32** %13, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32*, i32** %12, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 8
  store i32 4, i32* %33, align 4
  %34 = load i32*, i32** %12, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 9
  store i32 128, i32* %35, align 4
  %36 = load i32*, i32** %12, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 10
  store i32 128, i32* %37, align 4
  %38 = load i32*, i32** %12, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 11
  store i32 128, i32* %39, align 4
  %40 = load i64, i64* %11, align 8
  %41 = trunc i64 %40 to i32
  %42 = load i32*, i32** %12, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 12
  store i32 %41, i32* %43, align 4
  %44 = load i32*, i32** %12, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 13
  store i32 32, i32* %45, align 4
  %46 = load i32*, i32** %12, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 14
  store i32 17, i32* %47, align 4
  %48 = load i32*, i32** %12, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 18
  store i32* %49, i32** %14, align 8
  %50 = load i32*, i32** %12, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 22
  store i32* %51, i32** %15, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @htobe32(i32 %54)
  %56 = load i32*, i32** %15, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i32*, i32** %14, align 8
  store i32 %55, i32* %57, align 4
  %58 = load i32*, i32** %12, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 26
  store i32 5, i32* %59, align 4
  %60 = load i32*, i32** %12, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 27
  store i32 128, i32* %61, align 4
  %62 = load i32*, i32** %12, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 28
  store i32 128, i32* %63, align 4
  %64 = load i32*, i32** %12, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 29
  store i32 128, i32* %65, align 4
  %66 = load i64, i64* %9, align 8
  %67 = trunc i64 %66 to i32
  %68 = load i32*, i32** %12, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 30
  store i32 %67, i32* %69, align 4
  %70 = load i32*, i32** %12, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 31
  %72 = load i32*, i32** %8, align 8
  %73 = load i64, i64* %9, align 8
  %74 = call i32 @memcpy(i32* %71, i32* %72, i64 %73)
  %75 = load i32*, i32** %12, align 8
  %76 = load i64, i64* %9, align 8
  %77 = add i64 31, %76
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  store i32 6, i32* %78, align 4
  %79 = load i32*, i32** %12, align 8
  %80 = load i64, i64* %9, align 8
  %81 = add i64 31, %80
  %82 = add i64 %81, 1
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  store i32 128, i32* %83, align 4
  %84 = load i32*, i32** %12, align 8
  %85 = load i64, i64* %9, align 8
  %86 = add i64 31, %85
  %87 = add i64 %86, 2
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  store i32 128, i32* %88, align 4
  %89 = load i32*, i32** %12, align 8
  %90 = load i64, i64* %9, align 8
  %91 = add i64 31, %90
  %92 = add i64 %91, 3
  %93 = getelementptr inbounds i32, i32* %89, i64 %92
  store i32 128, i32* %93, align 4
  %94 = load i32*, i32** %12, align 8
  %95 = load i64, i64* %9, align 8
  %96 = add i64 31, %95
  %97 = add i64 %96, 4
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  store i32 1, i32* %98, align 4
  %99 = load i32*, i32** %12, align 8
  %100 = load i64, i64* %9, align 8
  %101 = add i64 31, %100
  %102 = add i64 %101, 5
  %103 = getelementptr inbounds i32, i32* %99, i64 %102
  store i32 2, i32* %103, align 4
  ret void
}

declare dso_local i32 @htobe16(i32) #1

declare dso_local i32 @htobe32(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
