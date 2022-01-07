; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/kernel/cpu/extr_init.c_detect_cache_shape.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/kernel/cpu/extr_init.c_detect_cache_shape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.TYPE_4__, %struct.TYPE_4__, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@current_cpu_data = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@l1d_cache_shape = common dso_local global i8* null, align 8
@SH_CACHE_COMBINED = common dso_local global i32 0, align 4
@l1i_cache_shape = common dso_local global i8* null, align 8
@CPU_HAS_L2_CACHE = common dso_local global i32 0, align 4
@l2_cache_shape = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @detect_cache_shape to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @detect_cache_shape() #0 {
  %1 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @current_cpu_data, i32 0, i32 3, i32 0), align 4
  %2 = call i8* @CACHE_DESC_SHAPE(i32 %1)
  store i8* %2, i8** @l1d_cache_shape, align 8
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @current_cpu_data, i32 0, i32 3, i32 0), align 4
  %4 = load i32, i32* @SH_CACHE_COMBINED, align 4
  %5 = and i32 %3, %4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = load i8*, i8** @l1d_cache_shape, align 8
  store i8* %8, i8** @l1i_cache_shape, align 8
  br label %12

9:                                                ; preds = %0
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @current_cpu_data, i32 0, i32 2, i32 0), align 4
  %11 = call i8* @CACHE_DESC_SHAPE(i32 %10)
  store i8* %11, i8** @l1i_cache_shape, align 8
  br label %12

12:                                               ; preds = %9, %7
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @current_cpu_data, i32 0, i32 0), align 4
  %14 = load i32, i32* @CPU_HAS_L2_CACHE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @current_cpu_data, i32 0, i32 1, i32 0), align 4
  %19 = call i8* @CACHE_DESC_SHAPE(i32 %18)
  %20 = ptrtoint i8* %19 to i32
  store i32 %20, i32* @l2_cache_shape, align 4
  br label %22

21:                                               ; preds = %12
  store i32 -1, i32* @l2_cache_shape, align 4
  br label %22

22:                                               ; preds = %21, %17
  ret void
}

declare dso_local i8* @CACHE_DESC_SHAPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
