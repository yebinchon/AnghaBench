; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/common/extr_dmabounce.c_find_safe_buffer_dev.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/common/extr_dmabounce.c_find_safe_buffer_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.safe_buffer = type { i32 }
%struct.device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Trying to %s invalid mapping\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.safe_buffer* (%struct.device*, i32, i8*)* @find_safe_buffer_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.safe_buffer* @find_safe_buffer_dev(%struct.device* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.safe_buffer*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %8 = load %struct.device*, %struct.device** %5, align 8
  %9 = icmp ne %struct.device* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %3
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %10, %3
  store %struct.safe_buffer* null, %struct.safe_buffer** %4, align 8
  br label %33

17:                                               ; preds = %10
  %18 = load %struct.device*, %struct.device** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i64 @dma_mapping_error(%struct.device* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load %struct.device*, %struct.device** %5, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @dev_err(%struct.device* %23, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %24)
  store %struct.safe_buffer* null, %struct.safe_buffer** %4, align 8
  br label %33

26:                                               ; preds = %17
  %27 = load %struct.device*, %struct.device** %5, align 8
  %28 = getelementptr inbounds %struct.device, %struct.device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call %struct.safe_buffer* @find_safe_buffer(i32 %30, i32 %31)
  store %struct.safe_buffer* %32, %struct.safe_buffer** %4, align 8
  br label %33

33:                                               ; preds = %26, %22, %16
  %34 = load %struct.safe_buffer*, %struct.safe_buffer** %4, align 8
  ret %struct.safe_buffer* %34
}

declare dso_local i64 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i8*) #1

declare dso_local %struct.safe_buffer* @find_safe_buffer(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
