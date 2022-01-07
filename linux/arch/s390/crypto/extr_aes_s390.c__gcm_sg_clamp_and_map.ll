; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/crypto/extr_aes_s390.c__gcm_sg_clamp_and_map.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/crypto/extr_aes_s390.c__gcm_sg_clamp_and_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gcm_sg_walk = type { i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.scatterlist = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gcm_sg_walk*)* @_gcm_sg_clamp_and_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_gcm_sg_clamp_and_map(%struct.gcm_sg_walk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gcm_sg_walk*, align 8
  %4 = alloca %struct.scatterlist*, align 8
  store %struct.gcm_sg_walk* %0, %struct.gcm_sg_walk** %3, align 8
  %5 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %3, align 8
  %6 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %5, i32 0, i32 1
  %7 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %3, align 8
  %8 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = call i8* @scatterwalk_clamp(%struct.TYPE_4__* %6, i32 %9)
  %11 = ptrtoint i8* %10 to i32
  %12 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %3, align 8
  %13 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  br label %14

14:                                               ; preds = %29, %1
  %15 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %3, align 8
  %16 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br i1 %19, label %20, label %43

20:                                               ; preds = %14
  %21 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %3, align 8
  %22 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.scatterlist* @sg_next(i32 %24)
  store %struct.scatterlist* %25, %struct.scatterlist** %4, align 8
  %26 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %27 = icmp ne %struct.scatterlist* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %52

29:                                               ; preds = %20
  %30 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %3, align 8
  %31 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %30, i32 0, i32 1
  %32 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %33 = call i32 @scatterwalk_start(%struct.TYPE_4__* %31, %struct.scatterlist* %32)
  %34 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %3, align 8
  %35 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %34, i32 0, i32 1
  %36 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %3, align 8
  %37 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @scatterwalk_clamp(%struct.TYPE_4__* %35, i32 %38)
  %40 = ptrtoint i8* %39 to i32
  %41 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %3, align 8
  %42 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  br label %14

43:                                               ; preds = %14
  %44 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %3, align 8
  %45 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %44, i32 0, i32 1
  %46 = call i32 @scatterwalk_map(%struct.TYPE_4__* %45)
  %47 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %3, align 8
  %48 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %3, align 8
  %50 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %43, %28
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i8* @scatterwalk_clamp(%struct.TYPE_4__*, i32) #1

declare dso_local %struct.scatterlist* @sg_next(i32) #1

declare dso_local i32 @scatterwalk_start(%struct.TYPE_4__*, %struct.scatterlist*) #1

declare dso_local i32 @scatterwalk_map(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
