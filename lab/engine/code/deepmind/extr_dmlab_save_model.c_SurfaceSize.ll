; ModuleID = '/home/carl/AnghaBench/lab/engine/code/deepmind/extr_dmlab_save_model.c_SurfaceSize.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/deepmind/extr_dmlab_save_model.c_SurfaceSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i8*, i64)*, i32 (i8*, i64)*, i32 (i8*, i64)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, %struct.TYPE_3__*, i8*)* @SurfaceSize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @SurfaceSize(i64 %0, %struct.TYPE_3__* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i8* %2, i8** %6, align 8
  store i64 4, i64* %7, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32 (i8*, i64)*, i32 (i8*, i64)** %9, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load i64, i64* %4, align 8
  %13 = call i32 %10(i8* %11, i64 %12)
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 4
  %16 = load i64, i64* %7, align 8
  %17 = add i64 %16, %15
  store i64 %17, i64* %7, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32 (i8*, i64)*, i32 (i8*, i64)** %19, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load i64, i64* %4, align 8
  %23 = call i32 %20(i8* %21, i64 %22)
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 4
  %26 = load i64, i64* %7, align 8
  %27 = add i64 %26, %25
  store i64 %27, i64* %7, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = load i32 (i8*, i64)*, i32 (i8*, i64)** %29, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = load i64, i64* %4, align 8
  %33 = call i32 %30(i8* %31, i64 %32)
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 8
  %36 = load i64, i64* %7, align 8
  %37 = add i64 %36, %35
  store i64 %37, i64* %7, align 8
  %38 = load i64, i64* %7, align 8
  ret i64 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
