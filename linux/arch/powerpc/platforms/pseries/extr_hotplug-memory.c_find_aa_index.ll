; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_hotplug-memory.c_find_aa_index.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_hotplug-memory.c_find_aa_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.property = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, %struct.property*, i32*, i32*)* @find_aa_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_aa_index(%struct.device_node* %0, %struct.property* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.property*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.property*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %6, align 8
  store %struct.property* %1, %struct.property** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %18 = load %struct.property*, %struct.property** %7, align 8
  %19 = getelementptr inbounds %struct.property, %struct.property* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %10, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @be32_to_cpu(i32 %23)
  store i32 %24, i32* %13, align 4
  %25 = load i32*, i32** %10, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @be32_to_cpu(i32 %27)
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %14, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 4
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %33

33:                                               ; preds = %55, %4
  %34 = load i32, i32* %16, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %58

37:                                               ; preds = %33
  %38 = load i32, i32* %16, align 4
  %39 = load i32, i32* %14, align 4
  %40 = mul nsw i32 %38, %39
  %41 = add nsw i32 %40, 2
  store i32 %41, i32* %17, align 4
  %42 = load i32*, i32** %10, align 8
  %43 = load i32, i32* %17, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32*, i32** %8, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %15, align 4
  %49 = call i64 @memcmp(i32* %45, i32* %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %37
  br label %55

52:                                               ; preds = %37
  %53 = load i32, i32* %16, align 4
  %54 = load i32*, i32** %9, align 8
  store i32 %53, i32* %54, align 4
  store i32 1, i32* %5, align 4
  br label %100

55:                                               ; preds = %51
  %56 = load i32, i32* %16, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %16, align 4
  br label %33

58:                                               ; preds = %33
  %59 = load %struct.property*, %struct.property** %7, align 8
  %60 = getelementptr inbounds %struct.property, %struct.property* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %15, align 4
  %63 = add nsw i32 %61, %62
  store i32 %63, i32* %11, align 4
  %64 = load %struct.property*, %struct.property** %7, align 8
  %65 = load i32, i32* %11, align 4
  %66 = call %struct.property* @dlpar_clone_property(%struct.property* %64, i32 %65)
  store %struct.property* %66, %struct.property** %12, align 8
  %67 = load %struct.property*, %struct.property** %12, align 8
  %68 = icmp ne %struct.property* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %58
  store i32 0, i32* %5, align 4
  br label %100

70:                                               ; preds = %58
  %71 = load %struct.property*, %struct.property** %12, align 8
  %72 = getelementptr inbounds %struct.property, %struct.property* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  store i32* %73, i32** %10, align 8
  %74 = load i32, i32* %13, align 4
  %75 = add nsw i32 %74, 1
  %76 = call i32 @cpu_to_be32(i32 %75)
  %77 = load i32*, i32** %10, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* %14, align 4
  %81 = mul nsw i32 %79, %80
  %82 = add nsw i32 %81, 2
  store i32 %82, i32* %17, align 4
  %83 = load i32*, i32** %10, align 8
  %84 = load i32, i32* %17, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32*, i32** %8, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  %89 = load i32, i32* %15, align 4
  %90 = call i32 @memcpy(i32* %86, i32* %88, i32 %89)
  %91 = load %struct.device_node*, %struct.device_node** %6, align 8
  %92 = load %struct.property*, %struct.property** %12, align 8
  %93 = call i32 @of_update_property(%struct.device_node* %91, %struct.property* %92)
  %94 = load i32*, i32** %10, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @be32_to_cpu(i32 %96)
  %98 = sub nsw i32 %97, 1
  %99 = load i32*, i32** %9, align 8
  store i32 %98, i32* %99, align 4
  store i32 1, i32* %5, align 4
  br label %100

100:                                              ; preds = %70, %69, %52
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local %struct.property* @dlpar_clone_property(%struct.property*, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @of_update_property(%struct.device_node*, %struct.property*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
