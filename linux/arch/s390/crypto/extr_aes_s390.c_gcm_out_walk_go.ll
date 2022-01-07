; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/crypto/extr_aes_s390.c_gcm_out_walk_go.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/crypto/extr_aes_s390.c_gcm_out_walk_go.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gcm_sg_walk = type { i64, i32, i32, i32*, i32*, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gcm_sg_walk*, i32)* @gcm_out_walk_go to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gcm_out_walk_go(%struct.gcm_sg_walk* %0, i32 %1) #0 {
  %3 = alloca %struct.gcm_sg_walk*, align 8
  %4 = alloca i32, align 4
  store %struct.gcm_sg_walk* %0, %struct.gcm_sg_walk** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %3, align 8
  %6 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %3, align 8
  %11 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %10, i32 0, i32 4
  store i32* null, i32** %11, align 8
  %12 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %3, align 8
  %13 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %12, i32 0, i32 1
  store i32 0, i32* %13, align 8
  br label %53

14:                                               ; preds = %2
  %15 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %3, align 8
  %16 = call i32 @_gcm_sg_clamp_and_map(%struct.gcm_sg_walk* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %3, align 8
  %20 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %19, i32 0, i32 4
  store i32* null, i32** %20, align 8
  %21 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %3, align 8
  %22 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %21, i32 0, i32 1
  store i32 0, i32* %22, align 8
  br label %53

23:                                               ; preds = %14
  %24 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %3, align 8
  %25 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp uge i32 %26, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %23
  %30 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %3, align 8
  %31 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %30, i32 0, i32 5
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %3, align 8
  %34 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %33, i32 0, i32 4
  store i32* %32, i32** %34, align 8
  %35 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %3, align 8
  %36 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %3, align 8
  %39 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  br label %53

40:                                               ; preds = %23
  %41 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %3, align 8
  %42 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %41, i32 0, i32 6
  %43 = call i32 @scatterwalk_unmap(i32* %42)
  %44 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %3, align 8
  %45 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %44, i32 0, i32 5
  store i32* null, i32** %45, align 8
  %46 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %3, align 8
  %47 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %46, i32 0, i32 3
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %3, align 8
  %50 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %49, i32 0, i32 4
  store i32* %48, i32** %50, align 8
  %51 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %3, align 8
  %52 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %51, i32 0, i32 1
  store i32 8, i32* %52, align 8
  br label %53

53:                                               ; preds = %40, %29, %18, %9
  %54 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %3, align 8
  %55 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  ret i32 %56
}

declare dso_local i32 @_gcm_sg_clamp_and_map(%struct.gcm_sg_walk*) #1

declare dso_local i32 @scatterwalk_unmap(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
