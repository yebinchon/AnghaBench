; ModuleID = '/home/carl/AnghaBench/git/extr_pack-bitmap.c_show_extended_objects.c'
source_filename = "/home/carl/AnghaBench/git/extr_pack-bitmap.c_show_extended_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitmap_index = type { %struct.TYPE_2__*, %struct.eindex, %struct.bitmap* }
%struct.TYPE_2__ = type { i64 }
%struct.eindex = type { i64, i32*, %struct.object** }
%struct.object = type { i32, i32 }
%struct.bitmap = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bitmap_index*, i32 (i32*, i32, i32, i32, i32*, i32)*)* @show_extended_objects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_extended_objects(%struct.bitmap_index* %0, i32 (i32*, i32, i32, i32, i32*, i32)* %1) #0 {
  %3 = alloca %struct.bitmap_index*, align 8
  %4 = alloca i32 (i32*, i32, i32, i32, i32*, i32)*, align 8
  %5 = alloca %struct.bitmap*, align 8
  %6 = alloca %struct.eindex*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.object*, align 8
  store %struct.bitmap_index* %0, %struct.bitmap_index** %3, align 8
  store i32 (i32*, i32, i32, i32, i32*, i32)* %1, i32 (i32*, i32, i32, i32, i32*, i32)** %4, align 8
  %9 = load %struct.bitmap_index*, %struct.bitmap_index** %3, align 8
  %10 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %9, i32 0, i32 2
  %11 = load %struct.bitmap*, %struct.bitmap** %10, align 8
  store %struct.bitmap* %11, %struct.bitmap** %5, align 8
  %12 = load %struct.bitmap_index*, %struct.bitmap_index** %3, align 8
  %13 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %12, i32 0, i32 1
  store %struct.eindex* %13, %struct.eindex** %6, align 8
  store i64 0, i64* %7, align 8
  br label %14

14:                                               ; preds = %52, %2
  %15 = load i64, i64* %7, align 8
  %16 = load %struct.eindex*, %struct.eindex** %6, align 8
  %17 = getelementptr inbounds %struct.eindex, %struct.eindex* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %15, %18
  br i1 %19, label %20, label %55

20:                                               ; preds = %14
  %21 = load %struct.bitmap*, %struct.bitmap** %5, align 8
  %22 = load %struct.bitmap_index*, %struct.bitmap_index** %3, align 8
  %23 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %7, align 8
  %28 = add i64 %26, %27
  %29 = call i32 @bitmap_get(%struct.bitmap* %21, i64 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %20
  br label %52

32:                                               ; preds = %20
  %33 = load %struct.eindex*, %struct.eindex** %6, align 8
  %34 = getelementptr inbounds %struct.eindex, %struct.eindex* %33, i32 0, i32 2
  %35 = load %struct.object**, %struct.object*** %34, align 8
  %36 = load i64, i64* %7, align 8
  %37 = getelementptr inbounds %struct.object*, %struct.object** %35, i64 %36
  %38 = load %struct.object*, %struct.object** %37, align 8
  store %struct.object* %38, %struct.object** %8, align 8
  %39 = load i32 (i32*, i32, i32, i32, i32*, i32)*, i32 (i32*, i32, i32, i32, i32*, i32)** %4, align 8
  %40 = load %struct.object*, %struct.object** %8, align 8
  %41 = getelementptr inbounds %struct.object, %struct.object* %40, i32 0, i32 1
  %42 = load %struct.object*, %struct.object** %8, align 8
  %43 = getelementptr inbounds %struct.object, %struct.object* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.eindex*, %struct.eindex** %6, align 8
  %46 = getelementptr inbounds %struct.eindex, %struct.eindex* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* %7, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 %39(i32* %41, i32 %44, i32 0, i32 %50, i32* null, i32 0)
  br label %52

52:                                               ; preds = %32, %31
  %53 = load i64, i64* %7, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %7, align 8
  br label %14

55:                                               ; preds = %14
  ret void
}

declare dso_local i32 @bitmap_get(%struct.bitmap*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
