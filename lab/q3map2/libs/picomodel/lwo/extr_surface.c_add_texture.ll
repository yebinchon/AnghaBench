; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/picomodel/lwo/extr_surface.c_add_texture.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/picomodel/lwo/extr_surface.c_add_texture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_31__, %struct.TYPE_29__, %struct.TYPE_27__, %struct.TYPE_26__, %struct.TYPE_25__, %struct.TYPE_24__, %struct.TYPE_23__ }
%struct.TYPE_20__ = type { %struct.TYPE_21__* }
%struct.TYPE_19__ = type { %struct.TYPE_21__* }
%struct.TYPE_18__ = type { %struct.TYPE_21__* }
%struct.TYPE_31__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { %struct.TYPE_21__* }
%struct.TYPE_29__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { %struct.TYPE_21__* }
%struct.TYPE_27__ = type { %struct.TYPE_21__* }
%struct.TYPE_26__ = type { %struct.TYPE_21__* }
%struct.TYPE_25__ = type { %struct.TYPE_21__* }
%struct.TYPE_24__ = type { %struct.TYPE_21__* }
%struct.TYPE_23__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 }

@compare_textures = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, %struct.TYPE_21__*)* @add_texture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_texture(%struct.TYPE_22__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_21__**, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  %7 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %8 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %52 [
    i32 136, label %10
    i32 133, label %14
    i32 135, label %18
    i32 130, label %22
    i32 134, label %26
    i32 132, label %30
    i32 129, label %35
    i32 131, label %40
    i32 128, label %44
    i32 137, label %48
  ]

10:                                               ; preds = %2
  %11 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 9
  %13 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 0
  store %struct.TYPE_21__** %13, %struct.TYPE_21__*** %6, align 8
  br label %53

14:                                               ; preds = %2
  %15 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 8
  %17 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 0
  store %struct.TYPE_21__** %17, %struct.TYPE_21__*** %6, align 8
  br label %53

18:                                               ; preds = %2
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 7
  %21 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %20, i32 0, i32 0
  store %struct.TYPE_21__** %21, %struct.TYPE_21__*** %6, align 8
  br label %53

22:                                               ; preds = %2
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %23, i32 0, i32 6
  %25 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %24, i32 0, i32 0
  store %struct.TYPE_21__** %25, %struct.TYPE_21__*** %6, align 8
  br label %53

26:                                               ; preds = %2
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i32 0, i32 5
  %29 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %28, i32 0, i32 0
  store %struct.TYPE_21__** %29, %struct.TYPE_21__*** %6, align 8
  br label %53

30:                                               ; preds = %2
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %33, i32 0, i32 0
  store %struct.TYPE_21__** %34, %struct.TYPE_21__*** %6, align 8
  br label %53

35:                                               ; preds = %2
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %38, i32 0, i32 0
  store %struct.TYPE_21__** %39, %struct.TYPE_21__*** %6, align 8
  br label %53

40:                                               ; preds = %2
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 0
  store %struct.TYPE_21__** %43, %struct.TYPE_21__*** %6, align 8
  br label %53

44:                                               ; preds = %2
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 0
  store %struct.TYPE_21__** %47, %struct.TYPE_21__*** %6, align 8
  br label %53

48:                                               ; preds = %2
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 0
  store %struct.TYPE_21__** %51, %struct.TYPE_21__*** %6, align 8
  br label %53

52:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %60

53:                                               ; preds = %48, %44, %40, %35, %30, %26, %22, %18, %14, %10
  %54 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %6, align 8
  %55 = bitcast %struct.TYPE_21__** %54 to i8**
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %57 = load i64, i64* @compare_textures, align 8
  %58 = trunc i64 %57 to i32
  %59 = call i32 @lwListInsert(i8** %55, %struct.TYPE_21__* %56, i32 %58)
  store i32 1, i32* %3, align 4
  br label %60

60:                                               ; preds = %53, %52
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @lwListInsert(i8**, %struct.TYPE_21__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
