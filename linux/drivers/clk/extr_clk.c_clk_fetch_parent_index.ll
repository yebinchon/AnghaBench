; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c_clk_fetch_parent_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c_clk_fetch_parent_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_core = type { i32, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, %struct.clk_core*, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_core*, %struct.clk_core*)* @clk_fetch_parent_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_fetch_parent_index(%struct.clk_core* %0, %struct.clk_core* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_core*, align 8
  %5 = alloca %struct.clk_core*, align 8
  %6 = alloca i32, align 4
  store %struct.clk_core* %0, %struct.clk_core** %4, align 8
  store %struct.clk_core* %1, %struct.clk_core** %5, align 8
  %7 = load %struct.clk_core*, %struct.clk_core** %5, align 8
  %8 = icmp ne %struct.clk_core* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %123

12:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %101, %12
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.clk_core*, %struct.clk_core** %4, align 8
  %16 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %104

19:                                               ; preds = %13
  %20 = load %struct.clk_core*, %struct.clk_core** %4, align 8
  %21 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load %struct.clk_core*, %struct.clk_core** %26, align 8
  %28 = load %struct.clk_core*, %struct.clk_core** %5, align 8
  %29 = icmp eq %struct.clk_core* %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %19
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %3, align 4
  br label %123

32:                                               ; preds = %19
  %33 = load %struct.clk_core*, %struct.clk_core** %4, align 8
  %34 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load %struct.clk_core*, %struct.clk_core** %39, align 8
  %41 = icmp ne %struct.clk_core* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  br label %101

43:                                               ; preds = %32
  %44 = load %struct.clk_core*, %struct.clk_core** %4, align 8
  %45 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %44, i32 0, i32 2
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %43
  %54 = load %struct.clk_core*, %struct.clk_core** %4, align 8
  %55 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %54, i32 0, i32 2
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.clk_core*, %struct.clk_core** %5, align 8
  %63 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %61, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %53
  br label %104

67:                                               ; preds = %53
  br label %101

68:                                               ; preds = %43
  %69 = load %struct.clk_core*, %struct.clk_core** %5, align 8
  %70 = load %struct.clk_core*, %struct.clk_core** %4, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call %struct.clk_core* @clk_core_get(%struct.clk_core* %70, i32 %71)
  %73 = icmp eq %struct.clk_core* %69, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  br label %104

75:                                               ; preds = %68
  %76 = load %struct.clk_core*, %struct.clk_core** %4, align 8
  %77 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %76, i32 0, i32 2
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %100

85:                                               ; preds = %75
  %86 = load %struct.clk_core*, %struct.clk_core** %5, align 8
  %87 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.clk_core*, %struct.clk_core** %4, align 8
  %90 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %89, i32 0, i32 2
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @strcmp(i32 %88, i64 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %85
  br label %104

100:                                              ; preds = %85, %75
  br label %101

101:                                              ; preds = %100, %67, %42
  %102 = load i32, i32* %6, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %6, align 4
  br label %13

104:                                              ; preds = %99, %74, %66, %13
  %105 = load i32, i32* %6, align 4
  %106 = load %struct.clk_core*, %struct.clk_core** %4, align 8
  %107 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp eq i32 %105, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %104
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %3, align 4
  br label %123

113:                                              ; preds = %104
  %114 = load %struct.clk_core*, %struct.clk_core** %5, align 8
  %115 = load %struct.clk_core*, %struct.clk_core** %4, align 8
  %116 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %115, i32 0, i32 2
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = load i32, i32* %6, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 1
  store %struct.clk_core* %114, %struct.clk_core** %121, align 8
  %122 = load i32, i32* %6, align 4
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %113, %110, %30, %9
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local %struct.clk_core* @clk_core_get(%struct.clk_core*, i32) #1

declare dso_local i32 @strcmp(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
