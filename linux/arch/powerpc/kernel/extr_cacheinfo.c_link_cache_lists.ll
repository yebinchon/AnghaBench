; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_cacheinfo.c_link_cache_lists.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_cacheinfo.c_link_cache_lists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache = type { %struct.cache* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cache*, %struct.cache*)* @link_cache_lists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @link_cache_lists(%struct.cache* %0, %struct.cache* %1) #0 {
  %3 = alloca %struct.cache*, align 8
  %4 = alloca %struct.cache*, align 8
  store %struct.cache* %0, %struct.cache** %3, align 8
  store %struct.cache* %1, %struct.cache** %4, align 8
  br label %5

5:                                                ; preds = %17, %2
  %6 = load %struct.cache*, %struct.cache** %3, align 8
  %7 = getelementptr inbounds %struct.cache, %struct.cache* %6, i32 0, i32 0
  %8 = load %struct.cache*, %struct.cache** %7, align 8
  %9 = icmp ne %struct.cache* %8, null
  br i1 %9, label %10, label %21

10:                                               ; preds = %5
  %11 = load %struct.cache*, %struct.cache** %3, align 8
  %12 = getelementptr inbounds %struct.cache, %struct.cache* %11, i32 0, i32 0
  %13 = load %struct.cache*, %struct.cache** %12, align 8
  %14 = load %struct.cache*, %struct.cache** %4, align 8
  %15 = icmp eq %struct.cache* %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  br label %25

17:                                               ; preds = %10
  %18 = load %struct.cache*, %struct.cache** %3, align 8
  %19 = getelementptr inbounds %struct.cache, %struct.cache* %18, i32 0, i32 0
  %20 = load %struct.cache*, %struct.cache** %19, align 8
  store %struct.cache* %20, %struct.cache** %3, align 8
  br label %5

21:                                               ; preds = %5
  %22 = load %struct.cache*, %struct.cache** %4, align 8
  %23 = load %struct.cache*, %struct.cache** %3, align 8
  %24 = getelementptr inbounds %struct.cache, %struct.cache* %23, i32 0, i32 0
  store %struct.cache* %22, %struct.cache** %24, align 8
  br label %25

25:                                               ; preds = %21, %16
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
