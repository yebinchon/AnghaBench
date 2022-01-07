; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_fsl-mc-allocator.c_fsl_mc_resource_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_fsl-mc-allocator.c_fsl_mc_resource_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_mc_resource = type { i64, i32, %struct.fsl_mc_resource_pool* }
%struct.fsl_mc_resource_pool = type { i64, i64, i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fsl_mc_resource_free(%struct.fsl_mc_resource* %0) #0 {
  %2 = alloca %struct.fsl_mc_resource*, align 8
  %3 = alloca %struct.fsl_mc_resource_pool*, align 8
  store %struct.fsl_mc_resource* %0, %struct.fsl_mc_resource** %2, align 8
  %4 = load %struct.fsl_mc_resource*, %struct.fsl_mc_resource** %2, align 8
  %5 = getelementptr inbounds %struct.fsl_mc_resource, %struct.fsl_mc_resource* %4, i32 0, i32 2
  %6 = load %struct.fsl_mc_resource_pool*, %struct.fsl_mc_resource_pool** %5, align 8
  store %struct.fsl_mc_resource_pool* %6, %struct.fsl_mc_resource_pool** %3, align 8
  %7 = load %struct.fsl_mc_resource*, %struct.fsl_mc_resource** %2, align 8
  %8 = getelementptr inbounds %struct.fsl_mc_resource, %struct.fsl_mc_resource* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.fsl_mc_resource_pool*, %struct.fsl_mc_resource_pool** %3, align 8
  %11 = getelementptr inbounds %struct.fsl_mc_resource_pool, %struct.fsl_mc_resource_pool* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %9, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %52

15:                                               ; preds = %1
  %16 = load %struct.fsl_mc_resource_pool*, %struct.fsl_mc_resource_pool** %3, align 8
  %17 = getelementptr inbounds %struct.fsl_mc_resource_pool, %struct.fsl_mc_resource_pool* %16, i32 0, i32 3
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.fsl_mc_resource_pool*, %struct.fsl_mc_resource_pool** %3, align 8
  %20 = getelementptr inbounds %struct.fsl_mc_resource_pool, %struct.fsl_mc_resource_pool* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %15
  %24 = load %struct.fsl_mc_resource_pool*, %struct.fsl_mc_resource_pool** %3, align 8
  %25 = getelementptr inbounds %struct.fsl_mc_resource_pool, %struct.fsl_mc_resource_pool* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.fsl_mc_resource_pool*, %struct.fsl_mc_resource_pool** %3, align 8
  %28 = getelementptr inbounds %struct.fsl_mc_resource_pool, %struct.fsl_mc_resource_pool* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp sge i64 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %23, %15
  br label %48

32:                                               ; preds = %23
  %33 = load %struct.fsl_mc_resource*, %struct.fsl_mc_resource** %2, align 8
  %34 = getelementptr inbounds %struct.fsl_mc_resource, %struct.fsl_mc_resource* %33, i32 0, i32 1
  %35 = call i32 @list_empty(i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  br label %48

38:                                               ; preds = %32
  %39 = load %struct.fsl_mc_resource*, %struct.fsl_mc_resource** %2, align 8
  %40 = getelementptr inbounds %struct.fsl_mc_resource, %struct.fsl_mc_resource* %39, i32 0, i32 1
  %41 = load %struct.fsl_mc_resource_pool*, %struct.fsl_mc_resource_pool** %3, align 8
  %42 = getelementptr inbounds %struct.fsl_mc_resource_pool, %struct.fsl_mc_resource_pool* %41, i32 0, i32 4
  %43 = call i32 @list_add_tail(i32* %40, i32* %42)
  %44 = load %struct.fsl_mc_resource_pool*, %struct.fsl_mc_resource_pool** %3, align 8
  %45 = getelementptr inbounds %struct.fsl_mc_resource_pool, %struct.fsl_mc_resource_pool* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %45, align 8
  br label %48

48:                                               ; preds = %38, %37, %31
  %49 = load %struct.fsl_mc_resource_pool*, %struct.fsl_mc_resource_pool** %3, align 8
  %50 = getelementptr inbounds %struct.fsl_mc_resource_pool, %struct.fsl_mc_resource_pool* %49, i32 0, i32 3
  %51 = call i32 @mutex_unlock(i32* %50)
  br label %52

52:                                               ; preds = %48, %14
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
