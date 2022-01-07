; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/extr_ff_ffplay.c_ffp_get_property_float.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/extr_ff_ffplay.c_ffp_get_property_float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { float, float, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { float, float, float, float, float }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @ffp_get_property_float(%struct.TYPE_5__* %0, i32 %1, float %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store float %2, float* %7, align 4
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %91 [
    i32 129, label %9
    i32 128, label %21
    i32 131, label %33
    i32 134, label %44
    i32 133, label %56
    i32 130, label %68
    i32 132, label %79
  ]

9:                                                ; preds = %3
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = icmp ne %struct.TYPE_5__* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load float, float* %15, align 4
  br label %19

17:                                               ; preds = %9
  %18 = load float, float* %7, align 4
  br label %19

19:                                               ; preds = %17, %12
  %20 = phi float [ %16, %12 ], [ %18, %17 ]
  store float %20, float* %4, align 4
  br label %93

21:                                               ; preds = %3
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %23 = icmp ne %struct.TYPE_5__* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load float, float* %27, align 4
  br label %31

29:                                               ; preds = %21
  %30 = load float, float* %7, align 4
  br label %31

31:                                               ; preds = %29, %24
  %32 = phi float [ %28, %24 ], [ %30, %29 ]
  store float %32, float* %4, align 4
  br label %93

33:                                               ; preds = %3
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %35 = icmp ne %struct.TYPE_5__* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load float, float* %38, align 4
  br label %42

40:                                               ; preds = %33
  %41 = load float, float* %7, align 4
  br label %42

42:                                               ; preds = %40, %36
  %43 = phi float [ %39, %36 ], [ %41, %40 ]
  store float %43, float* %4, align 4
  br label %93

44:                                               ; preds = %3
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %46 = icmp ne %struct.TYPE_5__* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  %51 = load float, float* %50, align 4
  br label %54

52:                                               ; preds = %44
  %53 = load float, float* %7, align 4
  br label %54

54:                                               ; preds = %52, %47
  %55 = phi float [ %51, %47 ], [ %53, %52 ]
  store float %55, float* %4, align 4
  br label %93

56:                                               ; preds = %3
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %58 = icmp ne %struct.TYPE_5__* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 3
  %63 = load float, float* %62, align 4
  br label %66

64:                                               ; preds = %56
  %65 = load float, float* %7, align 4
  br label %66

66:                                               ; preds = %64, %59
  %67 = phi float [ %63, %59 ], [ %65, %64 ]
  store float %67, float* %4, align 4
  br label %93

68:                                               ; preds = %3
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %70 = icmp ne %struct.TYPE_5__* %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load float, float* %73, align 4
  br label %77

75:                                               ; preds = %68
  %76 = load float, float* %7, align 4
  br label %77

77:                                               ; preds = %75, %71
  %78 = phi float [ %74, %71 ], [ %76, %75 ]
  store float %78, float* %4, align 4
  br label %93

79:                                               ; preds = %3
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %81 = icmp ne %struct.TYPE_5__* %80, null
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 4
  %86 = load float, float* %85, align 4
  br label %89

87:                                               ; preds = %79
  %88 = load float, float* %7, align 4
  br label %89

89:                                               ; preds = %87, %82
  %90 = phi float [ %86, %82 ], [ %88, %87 ]
  store float %90, float* %4, align 4
  br label %93

91:                                               ; preds = %3
  %92 = load float, float* %7, align 4
  store float %92, float* %4, align 4
  br label %93

93:                                               ; preds = %91, %89, %77, %66, %54, %42, %31, %19
  %94 = load float, float* %4, align 4
  ret float %94
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
