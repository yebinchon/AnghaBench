; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_postop_sg_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_postop_sg_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skd_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.skd_request_context = type { i32, i32, i32*, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skd_device*, %struct.skd_request_context*)* @skd_postop_sg_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skd_postop_sg_list(%struct.skd_device* %0, %struct.skd_request_context* %1) #0 {
  %3 = alloca %struct.skd_device*, align 8
  %4 = alloca %struct.skd_request_context*, align 8
  store %struct.skd_device* %0, %struct.skd_device** %3, align 8
  store %struct.skd_request_context* %1, %struct.skd_request_context** %4, align 8
  %5 = load %struct.skd_request_context*, %struct.skd_request_context** %4, align 8
  %6 = getelementptr inbounds %struct.skd_request_context, %struct.skd_request_context* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.skd_request_context*, %struct.skd_request_context** %4, align 8
  %9 = getelementptr inbounds %struct.skd_request_context, %struct.skd_request_context* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = sext i32 %10 to i64
  %12 = mul i64 %11, 4
  %13 = add i64 %7, %12
  %14 = load %struct.skd_request_context*, %struct.skd_request_context** %4, align 8
  %15 = getelementptr inbounds %struct.skd_request_context, %struct.skd_request_context* %14, i32 0, i32 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = load %struct.skd_request_context*, %struct.skd_request_context** %4, align 8
  %18 = getelementptr inbounds %struct.skd_request_context, %struct.skd_request_context* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sub nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i64 %13, i64* %23, align 8
  %24 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %25 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.skd_request_context*, %struct.skd_request_context** %4, align 8
  %29 = getelementptr inbounds %struct.skd_request_context, %struct.skd_request_context* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load %struct.skd_request_context*, %struct.skd_request_context** %4, align 8
  %33 = getelementptr inbounds %struct.skd_request_context, %struct.skd_request_context* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.skd_request_context*, %struct.skd_request_context** %4, align 8
  %36 = getelementptr inbounds %struct.skd_request_context, %struct.skd_request_context* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dma_unmap_sg(i32* %27, i32* %31, i32 %34, i32 %37)
  ret void
}

declare dso_local i32 @dma_unmap_sg(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
