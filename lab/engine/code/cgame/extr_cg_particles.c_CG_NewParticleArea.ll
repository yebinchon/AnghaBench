; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_particles.c_CG_NewParticleArea.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_particles.c_CG_NewParticleArea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@cgs = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CG_NewParticleArea(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store float 0.000000e+00, float* %10, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i64 @CG_ConfigString(i32 %14)
  %16 = inttoptr i64 %15 to i8*
  store i8* %16, i8** %4, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %132

22:                                               ; preds = %1
  %23 = call i8* @COM_Parse(i8** %4)
  store i8* %23, i8** %5, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @atoi(i8* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store float 1.280000e+02, float* %10, align 4
  br label %64

29:                                               ; preds = %22
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store float 6.400000e+01, float* %10, align 4
  br label %63

33:                                               ; preds = %29
  %34 = load i32, i32* %6, align 4
  %35 = icmp eq i32 %34, 3
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store float 3.200000e+01, float* %10, align 4
  br label %62

37:                                               ; preds = %33
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store float 2.560000e+02, float* %10, align 4
  br label %61

41:                                               ; preds = %37
  %42 = load i32, i32* %6, align 4
  %43 = icmp eq i32 %42, 4
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store float 8.000000e+00, float* %10, align 4
  br label %60

45:                                               ; preds = %41
  %46 = load i32, i32* %6, align 4
  %47 = icmp eq i32 %46, 5
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store float 1.600000e+01, float* %10, align 4
  br label %59

49:                                               ; preds = %45
  %50 = load i32, i32* %6, align 4
  %51 = icmp eq i32 %50, 6
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store float 3.200000e+01, float* %10, align 4
  br label %58

53:                                               ; preds = %49
  %54 = load i32, i32* %6, align 4
  %55 = icmp eq i32 %54, 7
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store float 6.400000e+01, float* %10, align 4
  br label %57

57:                                               ; preds = %56, %53
  br label %58

58:                                               ; preds = %57, %52
  br label %59

59:                                               ; preds = %58, %48
  br label %60

60:                                               ; preds = %59, %44
  br label %61

61:                                               ; preds = %60, %40
  br label %62

62:                                               ; preds = %61, %36
  br label %63

63:                                               ; preds = %62, %32
  br label %64

64:                                               ; preds = %63, %28
  store i32 0, i32* %9, align 4
  br label %65

65:                                               ; preds = %76, %64
  %66 = load i32, i32* %9, align 4
  %67 = icmp slt i32 %66, 3
  br i1 %67, label %68, label %79

68:                                               ; preds = %65
  %69 = call i8* @COM_Parse(i8** %4)
  store i8* %69, i8** %5, align 8
  %70 = load i8*, i8** %5, align 8
  %71 = call i32 @atof(i8* %70)
  %72 = load i32*, i32** %7, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32 %71, i32* %75, align 4
  br label %76

76:                                               ; preds = %68
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %9, align 4
  br label %65

79:                                               ; preds = %65
  store i32 0, i32* %9, align 4
  br label %80

80:                                               ; preds = %91, %79
  %81 = load i32, i32* %9, align 4
  %82 = icmp slt i32 %81, 3
  br i1 %82, label %83, label %94

83:                                               ; preds = %80
  %84 = call i8* @COM_Parse(i8** %4)
  store i8* %84, i8** %5, align 8
  %85 = load i8*, i8** %5, align 8
  %86 = call i32 @atof(i8* %85)
  %87 = load i32*, i32** %8, align 8
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  store i32 %86, i32* %90, align 4
  br label %91

91:                                               ; preds = %83
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %9, align 4
  br label %80

94:                                               ; preds = %80
  %95 = call i8* @COM_Parse(i8** %4)
  store i8* %95, i8** %5, align 8
  %96 = load i8*, i8** %5, align 8
  %97 = call i32 @atoi(i8* %96)
  store i32 %97, i32* %12, align 4
  %98 = call i8* @COM_Parse(i8** %4)
  store i8* %98, i8** %5, align 8
  %99 = load i8*, i8** %5, align 8
  %100 = call i32 @atoi(i8* %99)
  store i32 %100, i32* %11, align 4
  %101 = call i8* @COM_Parse(i8** %4)
  store i8* %101, i8** %5, align 8
  %102 = load i8*, i8** %5, align 8
  %103 = call i32 @atoi(i8* %102)
  store i32 %103, i32* %13, align 4
  store i32 0, i32* %9, align 4
  br label %104

104:                                              ; preds = %128, %94
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* %12, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %131

108:                                              ; preds = %104
  %109 = load i32, i32* %6, align 4
  %110 = icmp sge i32 %109, 4
  br i1 %110, label %111, label %119

111:                                              ; preds = %108
  %112 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cgs, i32 0, i32 0, i32 0), align 4
  %113 = load i32*, i32** %7, align 8
  %114 = load i32*, i32** %8, align 8
  %115 = load i32, i32* %11, align 4
  %116 = load float, float* %10, align 4
  %117 = load i32, i32* %13, align 4
  %118 = call i32 @CG_ParticleBubble(i32 %112, i32* %113, i32* %114, i32 %115, float %116, i32 %117)
  br label %127

119:                                              ; preds = %108
  %120 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cgs, i32 0, i32 0, i32 0), align 4
  %121 = load i32*, i32** %7, align 8
  %122 = load i32*, i32** %8, align 8
  %123 = load i32, i32* %11, align 4
  %124 = load float, float* %10, align 4
  %125 = load i32, i32* %13, align 4
  %126 = call i32 @CG_ParticleSnow(i32 %120, i32* %121, i32* %122, i32 %123, float %124, i32 %125)
  br label %127

127:                                              ; preds = %119, %111
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %9, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %9, align 4
  br label %104

131:                                              ; preds = %104
  store i32 1, i32* %2, align 4
  br label %132

132:                                              ; preds = %131, %21
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local i64 @CG_ConfigString(i32) #1

declare dso_local i8* @COM_Parse(i8**) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @atof(i8*) #1

declare dso_local i32 @CG_ParticleBubble(i32, i32*, i32*, i32, float, i32) #1

declare dso_local i32 @CG_ParticleSnow(i32, i32*, i32*, i32, float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
