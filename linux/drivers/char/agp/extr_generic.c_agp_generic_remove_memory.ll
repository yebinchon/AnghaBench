; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/agp/extr_generic.c_agp_generic_remove_memory.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/agp/extr_generic.c_agp_generic_remove_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_memory = type { i32, i32, %struct.agp_bridge_data* }
%struct.agp_bridge_data = type { %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32 (%struct.agp_bridge_data*, i32)*, i32 (%struct.agp_memory*)* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @agp_generic_remove_memory(%struct.agp_memory* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.agp_memory*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.agp_bridge_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.agp_memory* %0, %struct.agp_memory** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %13 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %12, i32 0, i32 2
  %14 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %13, align 8
  store %struct.agp_bridge_data* %14, %struct.agp_bridge_data** %9, align 8
  %15 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %9, align 8
  %16 = icmp ne %struct.agp_bridge_data* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %109

20:                                               ; preds = %3
  %21 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %22 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %109

26:                                               ; preds = %20
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %29 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %27, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %109

35:                                               ; preds = %26
  %36 = call i32 (...) @agp_num_entries()
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %39 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %37, %40
  %42 = load i32, i32* %11, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %52, label %44

44:                                               ; preds = %35
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %47 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %45, %48
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %44, %35
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %109

55:                                               ; preds = %44
  %56 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %9, align 8
  %57 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32 (%struct.agp_bridge_data*, i32)*, i32 (%struct.agp_bridge_data*, i32)** %59, align 8
  %61 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %9, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 %60(%struct.agp_bridge_data* %61, i32 %62)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %55
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %109

69:                                               ; preds = %55
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  store i64 %71, i64* %8, align 8
  br label %72

72:                                               ; preds = %91, %69
  %73 = load i64, i64* %8, align 8
  %74 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %75 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %76, %77
  %79 = sext i32 %78 to i64
  %80 = icmp ult i64 %73, %79
  br i1 %80, label %81, label %94

81:                                               ; preds = %72
  %82 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %9, align 8
  %83 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %9, align 8
  %86 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %8, align 8
  %89 = add i64 %87, %88
  %90 = call i32 @writel(i32 %84, i64 %89)
  br label %91

91:                                               ; preds = %81
  %92 = load i64, i64* %8, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %8, align 8
  br label %72

94:                                               ; preds = %72
  %95 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %9, align 8
  %96 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* %8, align 8
  %99 = add i64 %97, %98
  %100 = sub i64 %99, 1
  %101 = call i32 @readl(i64 %100)
  %102 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %9, align 8
  %103 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %102, i32 0, i32 0
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  %106 = load i32 (%struct.agp_memory*)*, i32 (%struct.agp_memory*)** %105, align 8
  %107 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %108 = call i32 %106(%struct.agp_memory* %107)
  store i32 0, i32* %4, align 4
  br label %109

109:                                              ; preds = %94, %66, %52, %32, %25, %17
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local i32 @agp_num_entries(...) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
