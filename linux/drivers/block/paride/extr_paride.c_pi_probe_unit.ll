; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/paride/extr_paride.c_pi_probe_unit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/paride/extr_paride.c_pi_probe_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32 (%struct.TYPE_12__*)*, i32, i64 (%struct.TYPE_12__*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32, i8*, i32)* @pi_probe_unit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pi_probe_unit(%struct.TYPE_12__* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %24

18:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %12, align 4
  br label %24

24:                                               ; preds = %18, %4
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @pi_register_parport(%struct.TYPE_12__* %25, i32 %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %119

31:                                               ; preds = %24
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  %36 = load i32 (%struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*)** %35, align 8
  %37 = icmp ne i32 (%struct.TYPE_12__*)* %36, null
  br i1 %37, label %38, label %50

38:                                               ; preds = %31
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %40 = call i32 @pi_claim(%struct.TYPE_12__* %39)
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 1
  %45 = load i32 (%struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*)** %44, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %47 = call i32 %45(%struct.TYPE_12__* %46)
  store i32 %47, i32* %10, align 4
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %49 = call i32 @pi_unclaim(%struct.TYPE_12__* %48)
  br label %56

50:                                               ; preds = %31
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %50, %38
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 3
  %61 = load i64 (%struct.TYPE_12__*)*, i64 (%struct.TYPE_12__*)** %60, align 8
  %62 = icmp ne i64 (%struct.TYPE_12__*)* %61, null
  br i1 %62, label %63, label %108

63:                                               ; preds = %56
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %65 = call i32 @pi_claim(%struct.TYPE_12__* %64)
  %66 = load i32, i32* %11, align 4
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  br label %69

69:                                               ; preds = %98, %63
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %12, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %103

75:                                               ; preds = %69
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 3
  %80 = load i64 (%struct.TYPE_12__*)*, i64 (%struct.TYPE_12__*)** %79, align 8
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %82 = call i64 %80(%struct.TYPE_12__* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %75
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %86 = call i32 @pi_unclaim(%struct.TYPE_12__* %85)
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %88 = load i32, i32* %10, align 4
  %89 = load i8*, i8** %8, align 8
  %90 = load i32, i32* %9, align 4
  %91 = call i64 @pi_probe_mode(%struct.TYPE_12__* %87, i32 %88, i8* %89, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %84
  store i32 1, i32* %5, align 4
  br label %119

94:                                               ; preds = %84
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %96 = call i32 @pi_unregister_parport(%struct.TYPE_12__* %95)
  store i32 0, i32* %5, align 4
  br label %119

97:                                               ; preds = %75
  br label %98

98:                                               ; preds = %97
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 8
  br label %69

103:                                              ; preds = %69
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %105 = call i32 @pi_unclaim(%struct.TYPE_12__* %104)
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %107 = call i32 @pi_unregister_parport(%struct.TYPE_12__* %106)
  store i32 0, i32* %5, align 4
  br label %119

108:                                              ; preds = %56
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %110 = load i32, i32* %10, align 4
  %111 = load i8*, i8** %8, align 8
  %112 = load i32, i32* %9, align 4
  %113 = call i64 @pi_probe_mode(%struct.TYPE_12__* %109, i32 %110, i8* %111, i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %108
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %117 = call i32 @pi_unregister_parport(%struct.TYPE_12__* %116)
  store i32 0, i32* %5, align 4
  br label %119

118:                                              ; preds = %108
  store i32 1, i32* %5, align 4
  br label %119

119:                                              ; preds = %118, %115, %103, %94, %93, %30
  %120 = load i32, i32* %5, align 4
  ret i32 %120
}

declare dso_local i32 @pi_register_parport(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @pi_claim(%struct.TYPE_12__*) #1

declare dso_local i32 @pi_unclaim(%struct.TYPE_12__*) #1

declare dso_local i64 @pi_probe_mode(%struct.TYPE_12__*, i32, i8*, i32) #1

declare dso_local i32 @pi_unregister_parport(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
