; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-bootmem.c_cvmx_bootmem_phy_named_block_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-bootmem.c_cvmx_bootmem_phy_named_block_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i64 }
%struct.cvmx_bootmem_named_block_desc = type { i32, i64*, i64 }

@cvmx_bootmem_desc = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [67 x i8] c"ERROR: Incompatible bootmem descriptor version: %d.%d at addr: %p\0A\00", align 1
@CVMX_BOOTMEM_FLAG_NO_LOCKING = common dso_local global i32 0, align 4
@CVMX_BOOTMEM_ALIGNMENT_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_bootmem_phy_named_block_alloc(i64 %0, i64 %1, i64 %2, i64 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.cvmx_bootmem_named_block_desc*, align 8
  store i64 %0, i64* %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_bootmem_desc, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 3
  br i1 %19, label %20, label %30

20:                                               ; preds = %6
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_bootmem_desc, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_bootmem_desc, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_bootmem_desc, align 8
  %29 = call i32 (i8*, i32, i32, ...) @cvmx_dprintf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %27, %struct.TYPE_2__* %28)
  store i32 -1, i32* %7, align 4
  br label %112

30:                                               ; preds = %6
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* @CVMX_BOOTMEM_FLAG_NO_LOCKING, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %30
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_bootmem_desc, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = call i32 @cvmx_spinlock_lock(i32* %37)
  br label %39

39:                                               ; preds = %35, %30
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* @CVMX_BOOTMEM_FLAG_NO_LOCKING, align 4
  %42 = or i32 %40, %41
  %43 = call %struct.cvmx_bootmem_named_block_desc* @cvmx_bootmem_phy_named_block_find(i8* null, i32 %42)
  store %struct.cvmx_bootmem_named_block_desc* %43, %struct.cvmx_bootmem_named_block_desc** %15, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* @CVMX_BOOTMEM_FLAG_NO_LOCKING, align 4
  %47 = or i32 %45, %46
  %48 = call %struct.cvmx_bootmem_named_block_desc* @cvmx_bootmem_phy_named_block_find(i8* %44, i32 %47)
  %49 = icmp ne %struct.cvmx_bootmem_named_block_desc* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %39
  %51 = load %struct.cvmx_bootmem_named_block_desc*, %struct.cvmx_bootmem_named_block_desc** %15, align 8
  %52 = icmp ne %struct.cvmx_bootmem_named_block_desc* %51, null
  br i1 %52, label %63, label %53

53:                                               ; preds = %50, %39
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* @CVMX_BOOTMEM_FLAG_NO_LOCKING, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %53
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_bootmem_desc, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  %61 = call i32 @cvmx_spinlock_unlock(i32* %60)
  br label %62

62:                                               ; preds = %58, %53
  store i32 -1, i32* %7, align 4
  br label %112

63:                                               ; preds = %50
  %64 = load i64, i64* %8, align 8
  %65 = load i32, i32* @CVMX_BOOTMEM_ALIGNMENT_SIZE, align 4
  %66 = call i64 @ALIGN(i64 %64, i32 %65)
  store i64 %66, i64* %8, align 8
  %67 = load i64, i64* %8, align 8
  %68 = load i64, i64* %9, align 8
  %69 = load i64, i64* %10, align 8
  %70 = load i64, i64* %11, align 8
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* @CVMX_BOOTMEM_FLAG_NO_LOCKING, align 4
  %73 = or i32 %71, %72
  %74 = call i32 @cvmx_bootmem_phy_alloc(i64 %67, i64 %68, i64 %69, i64 %70, i32 %73)
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* %14, align 4
  %76 = icmp sge i32 %75, 0
  br i1 %76, label %77, label %101

77:                                               ; preds = %63
  %78 = load i32, i32* %14, align 4
  %79 = load %struct.cvmx_bootmem_named_block_desc*, %struct.cvmx_bootmem_named_block_desc** %15, align 8
  %80 = getelementptr inbounds %struct.cvmx_bootmem_named_block_desc, %struct.cvmx_bootmem_named_block_desc* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load i64, i64* %8, align 8
  %82 = load %struct.cvmx_bootmem_named_block_desc*, %struct.cvmx_bootmem_named_block_desc** %15, align 8
  %83 = getelementptr inbounds %struct.cvmx_bootmem_named_block_desc, %struct.cvmx_bootmem_named_block_desc* %82, i32 0, i32 2
  store i64 %81, i64* %83, align 8
  %84 = load %struct.cvmx_bootmem_named_block_desc*, %struct.cvmx_bootmem_named_block_desc** %15, align 8
  %85 = getelementptr inbounds %struct.cvmx_bootmem_named_block_desc, %struct.cvmx_bootmem_named_block_desc* %84, i32 0, i32 1
  %86 = load i64*, i64** %85, align 8
  %87 = load i8*, i8** %12, align 8
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_bootmem_desc, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @strncpy(i64* %86, i8* %87, i32 %90)
  %92 = load %struct.cvmx_bootmem_named_block_desc*, %struct.cvmx_bootmem_named_block_desc** %15, align 8
  %93 = getelementptr inbounds %struct.cvmx_bootmem_named_block_desc, %struct.cvmx_bootmem_named_block_desc* %92, i32 0, i32 1
  %94 = load i64*, i64** %93, align 8
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_bootmem_desc, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = sub nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i64, i64* %94, i64 %99
  store i64 0, i64* %100, align 8
  br label %101

101:                                              ; preds = %77, %63
  %102 = load i32, i32* %13, align 4
  %103 = load i32, i32* @CVMX_BOOTMEM_FLAG_NO_LOCKING, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %101
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_bootmem_desc, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 2
  %109 = call i32 @cvmx_spinlock_unlock(i32* %108)
  br label %110

110:                                              ; preds = %106, %101
  %111 = load i32, i32* %14, align 4
  store i32 %111, i32* %7, align 4
  br label %112

112:                                              ; preds = %110, %62, %20
  %113 = load i32, i32* %7, align 4
  ret i32 %113
}

declare dso_local i32 @cvmx_dprintf(i8*, i32, i32, ...) #1

declare dso_local i32 @cvmx_spinlock_lock(i32*) #1

declare dso_local %struct.cvmx_bootmem_named_block_desc* @cvmx_bootmem_phy_named_block_find(i8*, i32) #1

declare dso_local i32 @cvmx_spinlock_unlock(i32*) #1

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local i32 @cvmx_bootmem_phy_alloc(i64, i64, i64, i64, i32) #1

declare dso_local i32 @strncpy(i64*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
