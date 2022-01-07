; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-bootmem.c_cvmx_bootmem_phy_named_block_free.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-bootmem.c_cvmx_bootmem_phy_named_block_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }
%struct.cvmx_bootmem_named_block_desc = type { i64, i64 }

@cvmx_bootmem_desc = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [67 x i8] c"ERROR: Incompatible bootmem descriptor version: %d.%d at addr: %p\0A\00", align 1
@CVMX_BOOTMEM_FLAG_NO_LOCKING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @cvmx_bootmem_phy_named_block_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cvmx_bootmem_phy_named_block_free(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cvmx_bootmem_named_block_desc*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_bootmem_desc, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 3
  br i1 %10, label %11, label %21

11:                                               ; preds = %2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_bootmem_desc, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_bootmem_desc, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = trunc i64 %17 to i32
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_bootmem_desc, align 8
  %20 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %18, %struct.TYPE_2__* %19)
  store i32 0, i32* %3, align 4
  br label %44

21:                                               ; preds = %2
  %22 = call i32 (...) @cvmx_bootmem_lock()
  %23 = load i8*, i8** %4, align 8
  %24 = load i32, i32* @CVMX_BOOTMEM_FLAG_NO_LOCKING, align 4
  %25 = call %struct.cvmx_bootmem_named_block_desc* @cvmx_bootmem_phy_named_block_find(i8* %23, i32 %24)
  store %struct.cvmx_bootmem_named_block_desc* %25, %struct.cvmx_bootmem_named_block_desc** %6, align 8
  %26 = load %struct.cvmx_bootmem_named_block_desc*, %struct.cvmx_bootmem_named_block_desc** %6, align 8
  %27 = icmp ne %struct.cvmx_bootmem_named_block_desc* %26, null
  br i1 %27, label %28, label %39

28:                                               ; preds = %21
  %29 = load %struct.cvmx_bootmem_named_block_desc*, %struct.cvmx_bootmem_named_block_desc** %6, align 8
  %30 = getelementptr inbounds %struct.cvmx_bootmem_named_block_desc, %struct.cvmx_bootmem_named_block_desc* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.cvmx_bootmem_named_block_desc*, %struct.cvmx_bootmem_named_block_desc** %6, align 8
  %33 = getelementptr inbounds %struct.cvmx_bootmem_named_block_desc, %struct.cvmx_bootmem_named_block_desc* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* @CVMX_BOOTMEM_FLAG_NO_LOCKING, align 4
  %36 = call i32 @__cvmx_bootmem_phy_free(i64 %31, i64 %34, i32 %35)
  %37 = load %struct.cvmx_bootmem_named_block_desc*, %struct.cvmx_bootmem_named_block_desc** %6, align 8
  %38 = getelementptr inbounds %struct.cvmx_bootmem_named_block_desc, %struct.cvmx_bootmem_named_block_desc* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  br label %39

39:                                               ; preds = %28, %21
  %40 = call i32 (...) @cvmx_bootmem_unlock()
  %41 = load %struct.cvmx_bootmem_named_block_desc*, %struct.cvmx_bootmem_named_block_desc** %6, align 8
  %42 = icmp ne %struct.cvmx_bootmem_named_block_desc* %41, null
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %39, %11
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @cvmx_dprintf(i8*, ...) #1

declare dso_local i32 @cvmx_bootmem_lock(...) #1

declare dso_local %struct.cvmx_bootmem_named_block_desc* @cvmx_bootmem_phy_named_block_find(i8*, i32) #1

declare dso_local i32 @__cvmx_bootmem_phy_free(i64, i64, i32) #1

declare dso_local i32 @cvmx_bootmem_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
