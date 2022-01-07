; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_ocxl.c_assign_actags.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_ocxl.c_assign_actags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.npu_link = type { i32, i64*, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@PNV_OCXL_ACTAG_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [61 x i8] c"link %x:%x:%x fct %d actags: start=%d count=%d (desired=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.npu_link*)* @assign_actags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assign_actags(%struct.npu_link* %0) #0 {
  %2 = alloca %struct.npu_link*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.npu_link* %0, %struct.npu_link** %2, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %20, %1
  %8 = load i32, i32* %6, align 4
  %9 = icmp slt i32 %8, 8
  br i1 %9, label %10, label %23

10:                                               ; preds = %7
  %11 = load %struct.npu_link*, %struct.npu_link** %2, align 8
  %12 = getelementptr inbounds %struct.npu_link, %struct.npu_link* %11, i32 0, i32 1
  %13 = load i64*, i64** %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i64, i64* %13, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = add nsw i64 %18, %17
  store i64 %19, i64* %5, align 8
  br label %20

20:                                               ; preds = %10
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %6, align 4
  br label %7

23:                                               ; preds = %7
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %105, %23
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 8
  br i1 %26, label %27, label %108

27:                                               ; preds = %24
  %28 = load %struct.npu_link*, %struct.npu_link** %2, align 8
  %29 = getelementptr inbounds %struct.npu_link, %struct.npu_link* %28, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %70

36:                                               ; preds = %27
  %37 = load %struct.npu_link*, %struct.npu_link** %2, align 8
  %38 = getelementptr inbounds %struct.npu_link, %struct.npu_link* %37, i32 0, i32 1
  %39 = load i64*, i64** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %5, align 8
  %45 = call i64 @assign_fn_actags(i64 %43, i64 %44)
  store i64 %45, i64* %3, align 8
  %46 = load i64, i64* %4, align 8
  %47 = load %struct.npu_link*, %struct.npu_link** %2, align 8
  %48 = getelementptr inbounds %struct.npu_link, %struct.npu_link* %47, i32 0, i32 2
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  store i64 %46, i64* %53, align 8
  %54 = load i64, i64* %3, align 8
  %55 = load %struct.npu_link*, %struct.npu_link** %2, align 8
  %56 = getelementptr inbounds %struct.npu_link, %struct.npu_link* %55, i32 0, i32 2
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i64 %54, i64* %61, align 8
  %62 = load i64, i64* %3, align 8
  %63 = load i64, i64* %4, align 8
  %64 = add nsw i64 %63, %62
  store i64 %64, i64* %4, align 8
  %65 = load i64, i64* %4, align 8
  %66 = load i64, i64* @PNV_OCXL_ACTAG_MAX, align 8
  %67 = icmp sge i64 %65, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @WARN_ON(i32 %68)
  br label %70

70:                                               ; preds = %36, %27
  %71 = load %struct.npu_link*, %struct.npu_link** %2, align 8
  %72 = getelementptr inbounds %struct.npu_link, %struct.npu_link* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.npu_link*, %struct.npu_link** %2, align 8
  %75 = getelementptr inbounds %struct.npu_link, %struct.npu_link* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.npu_link*, %struct.npu_link** %2, align 8
  %78 = getelementptr inbounds %struct.npu_link, %struct.npu_link* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = load %struct.npu_link*, %struct.npu_link** %2, align 8
  %82 = getelementptr inbounds %struct.npu_link, %struct.npu_link* %81, i32 0, i32 2
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.npu_link*, %struct.npu_link** %2, align 8
  %90 = getelementptr inbounds %struct.npu_link, %struct.npu_link* %89, i32 0, i32 2
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.npu_link*, %struct.npu_link** %2, align 8
  %98 = getelementptr inbounds %struct.npu_link, %struct.npu_link* %97, i32 0, i32 1
  %99 = load i64*, i64** %98, align 8
  %100 = load i32, i32* %6, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %99, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @pr_debug(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %76, i32 %79, i32 %80, i64 %88, i64 %96, i64 %103)
  br label %105

105:                                              ; preds = %70
  %106 = load i32, i32* %6, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %6, align 4
  br label %24

108:                                              ; preds = %24
  %109 = load %struct.npu_link*, %struct.npu_link** %2, align 8
  %110 = getelementptr inbounds %struct.npu_link, %struct.npu_link* %109, i32 0, i32 0
  store i32 1, i32* %110, align 8
  ret void
}

declare dso_local i64 @assign_fn_actags(i64, i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
