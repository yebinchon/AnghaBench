; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_free_skmsg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_free_skmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skd_device = type { i64, %struct.skd_fitmsg_context*, %struct.TYPE_2__* }
%struct.skd_fitmsg_context = type { i64, i32* }
%struct.TYPE_2__ = type { i32 }

@SKD_N_FITMSG_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skd_device*)* @skd_free_skmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skd_free_skmsg(%struct.skd_device* %0) #0 {
  %2 = alloca %struct.skd_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.skd_fitmsg_context*, align 8
  store %struct.skd_device* %0, %struct.skd_device** %2, align 8
  %5 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %6 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %5, i32 0, i32 1
  %7 = load %struct.skd_fitmsg_context*, %struct.skd_fitmsg_context** %6, align 8
  %8 = icmp eq %struct.skd_fitmsg_context* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %55

10:                                               ; preds = %1
  store i64 0, i64* %3, align 8
  br label %11

11:                                               ; preds = %45, %10
  %12 = load i64, i64* %3, align 8
  %13 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %14 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %12, %15
  br i1 %16, label %17, label %48

17:                                               ; preds = %11
  %18 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %19 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %18, i32 0, i32 1
  %20 = load %struct.skd_fitmsg_context*, %struct.skd_fitmsg_context** %19, align 8
  %21 = load i64, i64* %3, align 8
  %22 = getelementptr inbounds %struct.skd_fitmsg_context, %struct.skd_fitmsg_context* %20, i64 %21
  store %struct.skd_fitmsg_context* %22, %struct.skd_fitmsg_context** %4, align 8
  %23 = load %struct.skd_fitmsg_context*, %struct.skd_fitmsg_context** %4, align 8
  %24 = getelementptr inbounds %struct.skd_fitmsg_context, %struct.skd_fitmsg_context* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %40

27:                                               ; preds = %17
  %28 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %29 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* @SKD_N_FITMSG_BYTES, align 4
  %33 = load %struct.skd_fitmsg_context*, %struct.skd_fitmsg_context** %4, align 8
  %34 = getelementptr inbounds %struct.skd_fitmsg_context, %struct.skd_fitmsg_context* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.skd_fitmsg_context*, %struct.skd_fitmsg_context** %4, align 8
  %37 = getelementptr inbounds %struct.skd_fitmsg_context, %struct.skd_fitmsg_context* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @dma_free_coherent(i32* %31, i32 %32, i32* %35, i64 %38)
  br label %40

40:                                               ; preds = %27, %17
  %41 = load %struct.skd_fitmsg_context*, %struct.skd_fitmsg_context** %4, align 8
  %42 = getelementptr inbounds %struct.skd_fitmsg_context, %struct.skd_fitmsg_context* %41, i32 0, i32 1
  store i32* null, i32** %42, align 8
  %43 = load %struct.skd_fitmsg_context*, %struct.skd_fitmsg_context** %4, align 8
  %44 = getelementptr inbounds %struct.skd_fitmsg_context, %struct.skd_fitmsg_context* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  br label %45

45:                                               ; preds = %40
  %46 = load i64, i64* %3, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %3, align 8
  br label %11

48:                                               ; preds = %11
  %49 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %50 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %49, i32 0, i32 1
  %51 = load %struct.skd_fitmsg_context*, %struct.skd_fitmsg_context** %50, align 8
  %52 = call i32 @kfree(%struct.skd_fitmsg_context* %51)
  %53 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %54 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %53, i32 0, i32 1
  store %struct.skd_fitmsg_context* null, %struct.skd_fitmsg_context** %54, align 8
  br label %55

55:                                               ; preds = %48, %9
  ret void
}

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i64) #1

declare dso_local i32 @kfree(%struct.skd_fitmsg_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
