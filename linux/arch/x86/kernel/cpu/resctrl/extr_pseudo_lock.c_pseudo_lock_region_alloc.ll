; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_pseudo_lock.c_pseudo_lock_region_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_pseudo_lock.c_pseudo_lock_region_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pseudo_lock_region = type { i64, i32 }

@KMALLOC_MAX_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"Requested region exceeds maximum size\0A\00", align 1
@E2BIG = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Unable to allocate memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pseudo_lock_region*)* @pseudo_lock_region_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pseudo_lock_region_alloc(%struct.pseudo_lock_region* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pseudo_lock_region*, align 8
  %4 = alloca i32, align 4
  store %struct.pseudo_lock_region* %0, %struct.pseudo_lock_region** %3, align 8
  %5 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %3, align 8
  %6 = call i32 @pseudo_lock_region_init(%struct.pseudo_lock_region* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %43

11:                                               ; preds = %1
  %12 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %3, align 8
  %13 = getelementptr inbounds %struct.pseudo_lock_region, %struct.pseudo_lock_region* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @KMALLOC_MAX_SIZE, align 8
  %16 = icmp sgt i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = call i32 @rdt_last_cmd_puts(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @E2BIG, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %38

21:                                               ; preds = %11
  %22 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %3, align 8
  %23 = getelementptr inbounds %struct.pseudo_lock_region, %struct.pseudo_lock_region* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i32 @kzalloc(i64 %24, i32 %25)
  %27 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %3, align 8
  %28 = getelementptr inbounds %struct.pseudo_lock_region, %struct.pseudo_lock_region* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  %29 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %3, align 8
  %30 = getelementptr inbounds %struct.pseudo_lock_region, %struct.pseudo_lock_region* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %21
  %34 = call i32 @rdt_last_cmd_puts(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %38

37:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %41

38:                                               ; preds = %33, %17
  %39 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %3, align 8
  %40 = call i32 @pseudo_lock_region_clear(%struct.pseudo_lock_region* %39)
  br label %41

41:                                               ; preds = %38, %37
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %41, %9
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @pseudo_lock_region_init(%struct.pseudo_lock_region*) #1

declare dso_local i32 @rdt_last_cmd_puts(i8*) #1

declare dso_local i32 @kzalloc(i64, i32) #1

declare dso_local i32 @pseudo_lock_region_clear(%struct.pseudo_lock_region*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
