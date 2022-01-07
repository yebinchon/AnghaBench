; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_virtio-rng.c_virtio_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_virtio-rng.c_virtio_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwrng = type { i64 }
%struct.virtrng_info = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hwrng*)* @virtio_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @virtio_cleanup(%struct.hwrng* %0) #0 {
  %2 = alloca %struct.hwrng*, align 8
  %3 = alloca %struct.virtrng_info*, align 8
  store %struct.hwrng* %0, %struct.hwrng** %2, align 8
  %4 = load %struct.hwrng*, %struct.hwrng** %2, align 8
  %5 = getelementptr inbounds %struct.hwrng, %struct.hwrng* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.virtrng_info*
  store %struct.virtrng_info* %7, %struct.virtrng_info** %3, align 8
  %8 = load %struct.virtrng_info*, %struct.virtrng_info** %3, align 8
  %9 = getelementptr inbounds %struct.virtrng_info, %struct.virtrng_info* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.virtrng_info*, %struct.virtrng_info** %3, align 8
  %14 = getelementptr inbounds %struct.virtrng_info, %struct.virtrng_info* %13, i32 0, i32 0
  %15 = call i32 @wait_for_completion(i32* %14)
  br label %16

16:                                               ; preds = %12, %1
  ret void
}

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
