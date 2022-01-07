; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/crypto/extr_aes_s390.c__gcm_sg_unmap_and_advance.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/crypto/extr_aes_s390.c__gcm_sg_unmap_and_advance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gcm_sg_walk = type { i32, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gcm_sg_walk*, i32)* @_gcm_sg_unmap_and_advance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_gcm_sg_unmap_and_advance(%struct.gcm_sg_walk* %0, i32 %1) #0 {
  %3 = alloca %struct.gcm_sg_walk*, align 8
  %4 = alloca i32, align 4
  store %struct.gcm_sg_walk* %0, %struct.gcm_sg_walk** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %3, align 8
  %7 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = sub i32 %8, %5
  store i32 %9, i32* %7, align 8
  %10 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %3, align 8
  %11 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %10, i32 0, i32 2
  %12 = call i32 @scatterwalk_unmap(i32* %11)
  %13 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %3, align 8
  %14 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %13, i32 0, i32 2
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @scatterwalk_advance(i32* %14, i32 %15)
  %17 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %3, align 8
  %18 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %17, i32 0, i32 2
  %19 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %3, align 8
  %20 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @scatterwalk_done(i32* %18, i32 0, i32 %21)
  %23 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %3, align 8
  %24 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %23, i32 0, i32 1
  store i32* null, i32** %24, align 8
  ret void
}

declare dso_local i32 @scatterwalk_unmap(i32*) #1

declare dso_local i32 @scatterwalk_advance(i32*, i32) #1

declare dso_local i32 @scatterwalk_done(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
