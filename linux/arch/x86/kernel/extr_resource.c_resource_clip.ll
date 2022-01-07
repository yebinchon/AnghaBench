; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_resource.c_resource_clip.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_resource.c_resource_clip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.resource*, i64, i64)* @resource_clip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resource_clip(%struct.resource* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.resource*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.resource* %0, %struct.resource** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %9 = load %struct.resource*, %struct.resource** %4, align 8
  %10 = getelementptr inbounds %struct.resource, %struct.resource* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %5, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %20, label %14

14:                                               ; preds = %3
  %15 = load %struct.resource*, %struct.resource** %4, align 8
  %16 = getelementptr inbounds %struct.resource, %struct.resource* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %6, align 8
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14, %3
  br label %59

21:                                               ; preds = %14
  %22 = load %struct.resource*, %struct.resource** %4, align 8
  %23 = getelementptr inbounds %struct.resource, %struct.resource* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load i64, i64* %5, align 8
  %29 = load %struct.resource*, %struct.resource** %4, align 8
  %30 = getelementptr inbounds %struct.resource, %struct.resource* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = sub nsw i64 %28, %31
  store i64 %32, i64* %7, align 8
  br label %33

33:                                               ; preds = %27, %21
  %34 = load %struct.resource*, %struct.resource** %4, align 8
  %35 = getelementptr inbounds %struct.resource, %struct.resource* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %6, align 8
  %38 = icmp sgt i64 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = load %struct.resource*, %struct.resource** %4, align 8
  %41 = getelementptr inbounds %struct.resource, %struct.resource* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %6, align 8
  %44 = sub nsw i64 %42, %43
  store i64 %44, i64* %8, align 8
  br label %45

45:                                               ; preds = %39, %33
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* %8, align 8
  %48 = icmp sgt i64 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load i64, i64* %5, align 8
  %51 = sub nsw i64 %50, 1
  %52 = load %struct.resource*, %struct.resource** %4, align 8
  %53 = getelementptr inbounds %struct.resource, %struct.resource* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  br label %59

54:                                               ; preds = %45
  %55 = load i64, i64* %6, align 8
  %56 = add nsw i64 %55, 1
  %57 = load %struct.resource*, %struct.resource** %4, align 8
  %58 = getelementptr inbounds %struct.resource, %struct.resource* %57, i32 0, i32 1
  store i64 %56, i64* %58, align 8
  br label %59

59:                                               ; preds = %20, %54, %49
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
