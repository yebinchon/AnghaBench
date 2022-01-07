; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_component.c___component_match_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_component.c___component_match_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.component_match = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.device*, i8*)*, i32 (%struct.device*, i32, i8*)*, void (%struct.device*, i8*)*, i32*, i8* }

@devm_component_match_release = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.component_match**, void (%struct.device*, i8*)*, i32 (%struct.device*, i8*)*, i32 (%struct.device*, i32, i8*)*, i8*)* @__component_match_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__component_match_add(%struct.device* %0, %struct.component_match** %1, void (%struct.device*, i8*)* %2, i32 (%struct.device*, i8*)* %3, i32 (%struct.device*, i32, i8*)* %4, i8* %5) #0 {
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.component_match**, align 8
  %9 = alloca void (%struct.device*, i8*)*, align 8
  %10 = alloca i32 (%struct.device*, i8*)*, align 8
  %11 = alloca i32 (%struct.device*, i32, i8*)*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.component_match*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %7, align 8
  store %struct.component_match** %1, %struct.component_match*** %8, align 8
  store void (%struct.device*, i8*)* %2, void (%struct.device*, i8*)** %9, align 8
  store i32 (%struct.device*, i8*)* %3, i32 (%struct.device*, i8*)** %10, align 8
  store i32 (%struct.device*, i32, i8*)* %4, i32 (%struct.device*, i32, i8*)** %11, align 8
  store i8* %5, i8** %12, align 8
  %16 = load %struct.component_match**, %struct.component_match*** %8, align 8
  %17 = load %struct.component_match*, %struct.component_match** %16, align 8
  store %struct.component_match* %17, %struct.component_match** %13, align 8
  %18 = load %struct.component_match*, %struct.component_match** %13, align 8
  %19 = call i64 @IS_ERR(%struct.component_match* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %6
  br label %121

22:                                               ; preds = %6
  %23 = load %struct.component_match*, %struct.component_match** %13, align 8
  %24 = icmp ne %struct.component_match* %23, null
  br i1 %24, label %42, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* @devm_component_match_release, align 4
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.component_match* @devres_alloc(i32 %26, i32 16, i32 %27)
  store %struct.component_match* %28, %struct.component_match** %13, align 8
  %29 = load %struct.component_match*, %struct.component_match** %13, align 8
  %30 = icmp ne %struct.component_match* %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  %34 = call %struct.component_match* @ERR_PTR(i32 %33)
  %35 = load %struct.component_match**, %struct.component_match*** %8, align 8
  store %struct.component_match* %34, %struct.component_match** %35, align 8
  br label %121

36:                                               ; preds = %25
  %37 = load %struct.device*, %struct.device** %7, align 8
  %38 = load %struct.component_match*, %struct.component_match** %13, align 8
  %39 = call i32 @devres_add(%struct.device* %37, %struct.component_match* %38)
  %40 = load %struct.component_match*, %struct.component_match** %13, align 8
  %41 = load %struct.component_match**, %struct.component_match*** %8, align 8
  store %struct.component_match* %40, %struct.component_match** %41, align 8
  br label %42

42:                                               ; preds = %36, %22
  %43 = load %struct.component_match*, %struct.component_match** %13, align 8
  %44 = getelementptr inbounds %struct.component_match, %struct.component_match* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.component_match*, %struct.component_match** %13, align 8
  %47 = getelementptr inbounds %struct.component_match, %struct.component_match* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %45, %48
  br i1 %49, label %50, label %67

50:                                               ; preds = %42
  %51 = load %struct.component_match*, %struct.component_match** %13, align 8
  %52 = getelementptr inbounds %struct.component_match, %struct.component_match* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 16
  %55 = sext i32 %54 to i64
  store i64 %55, i64* %14, align 8
  %56 = load %struct.device*, %struct.device** %7, align 8
  %57 = load %struct.component_match*, %struct.component_match** %13, align 8
  %58 = load i64, i64* %14, align 8
  %59 = call i32 @component_match_realloc(%struct.device* %56, %struct.component_match* %57, i64 %58)
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %15, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %50
  %63 = load i32, i32* %15, align 4
  %64 = call %struct.component_match* @ERR_PTR(i32 %63)
  %65 = load %struct.component_match**, %struct.component_match*** %8, align 8
  store %struct.component_match* %64, %struct.component_match** %65, align 8
  br label %121

66:                                               ; preds = %50
  br label %67

67:                                               ; preds = %66, %42
  %68 = load i32 (%struct.device*, i8*)*, i32 (%struct.device*, i8*)** %10, align 8
  %69 = load %struct.component_match*, %struct.component_match** %13, align 8
  %70 = getelementptr inbounds %struct.component_match, %struct.component_match* %69, i32 0, i32 2
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load %struct.component_match*, %struct.component_match** %13, align 8
  %73 = getelementptr inbounds %struct.component_match, %struct.component_match* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  store i32 (%struct.device*, i8*)* %68, i32 (%struct.device*, i8*)** %77, align 8
  %78 = load i32 (%struct.device*, i32, i8*)*, i32 (%struct.device*, i32, i8*)** %11, align 8
  %79 = load %struct.component_match*, %struct.component_match** %13, align 8
  %80 = getelementptr inbounds %struct.component_match, %struct.component_match* %79, i32 0, i32 2
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = load %struct.component_match*, %struct.component_match** %13, align 8
  %83 = getelementptr inbounds %struct.component_match, %struct.component_match* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  store i32 (%struct.device*, i32, i8*)* %78, i32 (%struct.device*, i32, i8*)** %87, align 8
  %88 = load void (%struct.device*, i8*)*, void (%struct.device*, i8*)** %9, align 8
  %89 = load %struct.component_match*, %struct.component_match** %13, align 8
  %90 = getelementptr inbounds %struct.component_match, %struct.component_match* %89, i32 0, i32 2
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = load %struct.component_match*, %struct.component_match** %13, align 8
  %93 = getelementptr inbounds %struct.component_match, %struct.component_match* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 2
  store void (%struct.device*, i8*)* %88, void (%struct.device*, i8*)** %97, align 8
  %98 = load i8*, i8** %12, align 8
  %99 = load %struct.component_match*, %struct.component_match** %13, align 8
  %100 = getelementptr inbounds %struct.component_match, %struct.component_match* %99, i32 0, i32 2
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = load %struct.component_match*, %struct.component_match** %13, align 8
  %103 = getelementptr inbounds %struct.component_match, %struct.component_match* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 4
  store i8* %98, i8** %107, align 8
  %108 = load %struct.component_match*, %struct.component_match** %13, align 8
  %109 = getelementptr inbounds %struct.component_match, %struct.component_match* %108, i32 0, i32 2
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = load %struct.component_match*, %struct.component_match** %13, align 8
  %112 = getelementptr inbounds %struct.component_match, %struct.component_match* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 3
  store i32* null, i32** %116, align 8
  %117 = load %struct.component_match*, %struct.component_match** %13, align 8
  %118 = getelementptr inbounds %struct.component_match, %struct.component_match* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %118, align 8
  br label %121

121:                                              ; preds = %67, %62, %31, %21
  ret void
}

declare dso_local i64 @IS_ERR(%struct.component_match*) #1

declare dso_local %struct.component_match* @devres_alloc(i32, i32, i32) #1

declare dso_local %struct.component_match* @ERR_PTR(i32) #1

declare dso_local i32 @devres_add(%struct.device*, %struct.component_match*) #1

declare dso_local i32 @component_match_realloc(%struct.device*, %struct.component_match*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
