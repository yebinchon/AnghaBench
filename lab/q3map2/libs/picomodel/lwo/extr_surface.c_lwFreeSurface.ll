; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/picomodel/lwo/extr_surface.c_lwFreeSurface.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/picomodel/lwo/extr_surface.c_lwFreeSurface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_28__, %struct.TYPE_26__, %struct.TYPE_24__, %struct.TYPE_23__, %struct.TYPE_22__, %struct.TYPE_21__, %struct.TYPE_20__, i32, %struct.TYPE_19__*, %struct.TYPE_19__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_28__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32 }

@lwFreePlugin = common dso_local global i64 0, align 8
@lwFreeTexture = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lwFreeSurface(%struct.TYPE_19__* %0) #0 {
  %2 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %2, align 8
  %3 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %4 = icmp ne %struct.TYPE_19__* %3, null
  br i1 %4, label %5, label %106

5:                                                ; preds = %1
  %6 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 12
  %8 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %9 = icmp ne %struct.TYPE_19__* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 12
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %14 = call i32 @_pico_free(%struct.TYPE_19__* %13)
  br label %15

15:                                               ; preds = %10, %5
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 11
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %19 = icmp ne %struct.TYPE_19__* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 11
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %24 = call i32 @_pico_free(%struct.TYPE_19__* %23)
  br label %25

25:                                               ; preds = %20, %15
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 10
  %28 = load i32, i32* %27, align 8
  %29 = load i64, i64* @lwFreePlugin, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i32 @lwListFree(i32 %28, i32 %30)
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 9
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* @lwFreeTexture, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i32 @lwListFree(i32 %35, i32 %37)
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 8
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i64, i64* @lwFreeTexture, align 8
  %44 = trunc i64 %43 to i32
  %45 = call i32 @lwListFree(i32 %42, i32 %44)
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 7
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i64, i64* @lwFreeTexture, align 8
  %51 = trunc i64 %50 to i32
  %52 = call i32 @lwListFree(i32 %49, i32 %51)
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 6
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i64, i64* @lwFreeTexture, align 8
  %58 = trunc i64 %57 to i32
  %59 = call i32 @lwListFree(i32 %56, i32 %58)
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 5
  %62 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i64, i64* @lwFreeTexture, align 8
  %65 = trunc i64 %64 to i32
  %66 = call i32 @lwListFree(i32 %63, i32 %65)
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i64, i64* @lwFreeTexture, align 8
  %73 = trunc i64 %72 to i32
  %74 = call i32 @lwListFree(i32 %71, i32 %73)
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i64, i64* @lwFreeTexture, align 8
  %81 = trunc i64 %80 to i32
  %82 = call i32 @lwListFree(i32 %79, i32 %81)
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i64, i64* @lwFreeTexture, align 8
  %88 = trunc i64 %87 to i32
  %89 = call i32 @lwListFree(i32 %86, i32 %88)
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i64, i64* @lwFreeTexture, align 8
  %95 = trunc i64 %94 to i32
  %96 = call i32 @lwListFree(i32 %93, i32 %95)
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i64, i64* @lwFreeTexture, align 8
  %102 = trunc i64 %101 to i32
  %103 = call i32 @lwListFree(i32 %100, i32 %102)
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %105 = call i32 @_pico_free(%struct.TYPE_19__* %104)
  br label %106

106:                                              ; preds = %25, %1
  ret void
}

declare dso_local i32 @_pico_free(%struct.TYPE_19__*) #1

declare dso_local i32 @lwListFree(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
