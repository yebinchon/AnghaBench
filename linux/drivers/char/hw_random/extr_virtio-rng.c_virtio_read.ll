; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_virtio-rng.c_virtio_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_virtio-rng.c_virtio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwrng = type { i64 }
%struct.virtrng_info = type { i32, i32, i32, i64 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hwrng*, i8*, i64, i32)* @virtio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtio_read(%struct.hwrng* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hwrng*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.virtrng_info*, align 8
  store %struct.hwrng* %0, %struct.hwrng** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.hwrng*, %struct.hwrng** %6, align 8
  %13 = getelementptr inbounds %struct.hwrng, %struct.hwrng* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.virtrng_info*
  store %struct.virtrng_info* %15, %struct.virtrng_info** %11, align 8
  %16 = load %struct.virtrng_info*, %struct.virtrng_info** %11, align 8
  %17 = getelementptr inbounds %struct.virtrng_info, %struct.virtrng_info* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %56

23:                                               ; preds = %4
  %24 = load %struct.virtrng_info*, %struct.virtrng_info** %11, align 8
  %25 = getelementptr inbounds %struct.virtrng_info, %struct.virtrng_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %23
  %29 = load %struct.virtrng_info*, %struct.virtrng_info** %11, align 8
  %30 = getelementptr inbounds %struct.virtrng_info, %struct.virtrng_info* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load %struct.virtrng_info*, %struct.virtrng_info** %11, align 8
  %32 = getelementptr inbounds %struct.virtrng_info, %struct.virtrng_info* %31, i32 0, i32 2
  %33 = call i32 @reinit_completion(i32* %32)
  %34 = load %struct.virtrng_info*, %struct.virtrng_info** %11, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @register_buffer(%struct.virtrng_info* %34, i8* %35, i64 %36)
  br label %38

38:                                               ; preds = %28, %23
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  br label %56

42:                                               ; preds = %38
  %43 = load %struct.virtrng_info*, %struct.virtrng_info** %11, align 8
  %44 = getelementptr inbounds %struct.virtrng_info, %struct.virtrng_info* %43, i32 0, i32 2
  %45 = call i32 @wait_for_completion_killable(i32* %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %5, align 4
  br label %56

50:                                               ; preds = %42
  %51 = load %struct.virtrng_info*, %struct.virtrng_info** %11, align 8
  %52 = getelementptr inbounds %struct.virtrng_info, %struct.virtrng_info* %51, i32 0, i32 0
  store i32 0, i32* %52, align 8
  %53 = load %struct.virtrng_info*, %struct.virtrng_info** %11, align 8
  %54 = getelementptr inbounds %struct.virtrng_info, %struct.virtrng_info* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %50, %48, %41, %20
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @register_buffer(%struct.virtrng_info*, i8*, i64) #1

declare dso_local i32 @wait_for_completion_killable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
