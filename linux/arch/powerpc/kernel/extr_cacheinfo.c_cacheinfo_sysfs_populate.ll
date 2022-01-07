; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_cacheinfo.c_cacheinfo_sysfs_populate.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_cacheinfo.c_cacheinfo_sysfs_populate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache = type { %struct.cache* }
%struct.cache_dir = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.cache*)* @cacheinfo_sysfs_populate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cacheinfo_sysfs_populate(i32 %0, %struct.cache* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cache*, align 8
  %5 = alloca %struct.cache_dir*, align 8
  %6 = alloca %struct.cache*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.cache* %1, %struct.cache** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.cache_dir* @cacheinfo_create_cache_dir(i32 %8)
  store %struct.cache_dir* %9, %struct.cache_dir** %5, align 8
  %10 = load %struct.cache_dir*, %struct.cache_dir** %5, align 8
  %11 = icmp ne %struct.cache_dir* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %28

13:                                               ; preds = %2
  %14 = load %struct.cache*, %struct.cache** %4, align 8
  store %struct.cache* %14, %struct.cache** %6, align 8
  br label %15

15:                                               ; preds = %18, %13
  %16 = load %struct.cache*, %struct.cache** %6, align 8
  %17 = icmp ne %struct.cache* %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %15
  %19 = load %struct.cache*, %struct.cache** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.cache_dir*, %struct.cache_dir** %5, align 8
  %22 = call i32 @cacheinfo_create_index_dir(%struct.cache* %19, i32 %20, %struct.cache_dir* %21)
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %7, align 4
  %25 = load %struct.cache*, %struct.cache** %6, align 8
  %26 = getelementptr inbounds %struct.cache, %struct.cache* %25, i32 0, i32 0
  %27 = load %struct.cache*, %struct.cache** %26, align 8
  store %struct.cache* %27, %struct.cache** %6, align 8
  br label %15

28:                                               ; preds = %12, %15
  ret void
}

declare dso_local %struct.cache_dir* @cacheinfo_create_cache_dir(i32) #1

declare dso_local i32 @cacheinfo_create_index_dir(%struct.cache*, i32, %struct.cache_dir*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
