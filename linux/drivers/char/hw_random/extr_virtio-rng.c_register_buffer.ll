; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_virtio-rng.c_register_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_virtio-rng.c_register_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtrng_info = type { i32 }
%struct.scatterlist = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtrng_info*, i32*, i64)* @register_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @register_buffer(%struct.virtrng_info* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.virtrng_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.scatterlist, align 4
  store %struct.virtrng_info* %0, %struct.virtrng_info** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @sg_init_one(%struct.scatterlist* %7, i32* %8, i64 %9)
  %11 = load %struct.virtrng_info*, %struct.virtrng_info** %4, align 8
  %12 = getelementptr inbounds %struct.virtrng_info, %struct.virtrng_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i32 @virtqueue_add_inbuf(i32 %13, %struct.scatterlist* %7, i32 1, i32* %14, i32 %15)
  %17 = load %struct.virtrng_info*, %struct.virtrng_info** %4, align 8
  %18 = getelementptr inbounds %struct.virtrng_info, %struct.virtrng_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @virtqueue_kick(i32 %19)
  ret void
}

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i32*, i64) #1

declare dso_local i32 @virtqueue_add_inbuf(i32, %struct.scatterlist*, i32, i32*, i32) #1

declare dso_local i32 @virtqueue_kick(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
