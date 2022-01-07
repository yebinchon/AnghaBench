; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/zram/extr_zcomp.c_zcomp_strm_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/zram/extr_zcomp.c_zcomp_strm_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zcomp_strm = type { i8*, i32 }
%struct.zcomp = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.zcomp_strm* (%struct.zcomp*)* @zcomp_strm_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.zcomp_strm* @zcomp_strm_alloc(%struct.zcomp* %0) #0 {
  %2 = alloca %struct.zcomp_strm*, align 8
  %3 = alloca %struct.zcomp*, align 8
  %4 = alloca %struct.zcomp_strm*, align 8
  store %struct.zcomp* %0, %struct.zcomp** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.zcomp_strm* @kmalloc(i32 16, i32 %5)
  store %struct.zcomp_strm* %6, %struct.zcomp_strm** %4, align 8
  %7 = load %struct.zcomp_strm*, %struct.zcomp_strm** %4, align 8
  %8 = icmp ne %struct.zcomp_strm* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.zcomp_strm* null, %struct.zcomp_strm** %2, align 8
  br label %39

10:                                               ; preds = %1
  %11 = load %struct.zcomp*, %struct.zcomp** %3, align 8
  %12 = getelementptr inbounds %struct.zcomp, %struct.zcomp* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @crypto_alloc_comp(i32 %13, i32 0, i32 0)
  %15 = load %struct.zcomp_strm*, %struct.zcomp_strm** %4, align 8
  %16 = getelementptr inbounds %struct.zcomp_strm, %struct.zcomp_strm* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = load i32, i32* @__GFP_ZERO, align 4
  %19 = or i32 %17, %18
  %20 = call i64 @__get_free_pages(i32 %19, i32 1)
  %21 = inttoptr i64 %20 to i8*
  %22 = load %struct.zcomp_strm*, %struct.zcomp_strm** %4, align 8
  %23 = getelementptr inbounds %struct.zcomp_strm, %struct.zcomp_strm* %22, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  %24 = load %struct.zcomp_strm*, %struct.zcomp_strm** %4, align 8
  %25 = getelementptr inbounds %struct.zcomp_strm, %struct.zcomp_strm* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @IS_ERR_OR_NULL(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %10
  %30 = load %struct.zcomp_strm*, %struct.zcomp_strm** %4, align 8
  %31 = getelementptr inbounds %struct.zcomp_strm, %struct.zcomp_strm* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %29, %10
  %35 = load %struct.zcomp_strm*, %struct.zcomp_strm** %4, align 8
  %36 = call i32 @zcomp_strm_free(%struct.zcomp_strm* %35)
  store %struct.zcomp_strm* null, %struct.zcomp_strm** %4, align 8
  br label %37

37:                                               ; preds = %34, %29
  %38 = load %struct.zcomp_strm*, %struct.zcomp_strm** %4, align 8
  store %struct.zcomp_strm* %38, %struct.zcomp_strm** %2, align 8
  br label %39

39:                                               ; preds = %37, %9
  %40 = load %struct.zcomp_strm*, %struct.zcomp_strm** %2, align 8
  ret %struct.zcomp_strm* %40
}

declare dso_local %struct.zcomp_strm* @kmalloc(i32, i32) #1

declare dso_local i32 @crypto_alloc_comp(i32, i32, i32) #1

declare dso_local i64 @__get_free_pages(i32, i32) #1

declare dso_local i64 @IS_ERR_OR_NULL(i32) #1

declare dso_local i32 @zcomp_strm_free(%struct.zcomp_strm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
