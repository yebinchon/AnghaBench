; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/agp/extr_generic.c_agp_generic_destroy_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/agp/extr_generic.c_agp_generic_destroy_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.agp_memory = type { i32, %struct.page** }
%struct.page = type { i32 }

@agp_bridge = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @agp_generic_destroy_pages(%struct.agp_memory* %0) #0 {
  %2 = alloca %struct.agp_memory*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.page*, align 8
  store %struct.agp_memory* %0, %struct.agp_memory** %2, align 8
  %5 = load %struct.agp_memory*, %struct.agp_memory** %2, align 8
  %6 = icmp ne %struct.agp_memory* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %41

8:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %38, %8
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.agp_memory*, %struct.agp_memory** %2, align 8
  %12 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %41

15:                                               ; preds = %9
  %16 = load %struct.agp_memory*, %struct.agp_memory** %2, align 8
  %17 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %16, i32 0, i32 1
  %18 = load %struct.page**, %struct.page*** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.page*, %struct.page** %18, i64 %20
  %22 = load %struct.page*, %struct.page** %21, align 8
  store %struct.page* %22, %struct.page** %4, align 8
  %23 = load %struct.page*, %struct.page** %4, align 8
  %24 = call i32 @unmap_page_from_agp(%struct.page* %23)
  %25 = load %struct.page*, %struct.page** %4, align 8
  %26 = call i32 @put_page(%struct.page* %25)
  %27 = load %struct.page*, %struct.page** %4, align 8
  %28 = call i32 @__free_page(%struct.page* %27)
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @atomic_dec(i32* %30)
  %32 = load %struct.agp_memory*, %struct.agp_memory** %2, align 8
  %33 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %32, i32 0, i32 1
  %34 = load %struct.page**, %struct.page*** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.page*, %struct.page** %34, i64 %36
  store %struct.page* null, %struct.page** %37, align 8
  br label %38

38:                                               ; preds = %15
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %9

41:                                               ; preds = %7, %9
  ret void
}

declare dso_local i32 @unmap_page_from_agp(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @__free_page(%struct.page*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
