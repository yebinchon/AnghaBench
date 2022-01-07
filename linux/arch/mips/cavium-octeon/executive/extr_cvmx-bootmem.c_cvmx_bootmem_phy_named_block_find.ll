; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-bootmem.c_cvmx_bootmem_phy_named_block_find.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-bootmem.c_cvmx_bootmem_phy_named_block_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64, i64, i32 }
%struct.cvmx_bootmem_named_block_desc = type { i64, i32 }

@CVMX_BOOTMEM_FLAG_NO_LOCKING = common dso_local global i32 0, align 4
@cvmx_bootmem_desc = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [67 x i8] c"ERROR: Incompatible bootmem descriptor version: %d.%d at addr: %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cvmx_bootmem_named_block_desc* (i8*, i32)* @cvmx_bootmem_phy_named_block_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cvmx_bootmem_named_block_desc* @cvmx_bootmem_phy_named_block_find(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.cvmx_bootmem_named_block_desc*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cvmx_bootmem_named_block_desc*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @CVMX_BOOTMEM_FLAG_NO_LOCKING, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = call i32 (...) @cvmx_bootmem_lock()
  br label %14

14:                                               ; preds = %12, %2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_bootmem_desc, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @cvmx_phys_to_ptr(i32 %17)
  %19 = inttoptr i64 %18 to %struct.cvmx_bootmem_named_block_desc*
  store %struct.cvmx_bootmem_named_block_desc* %19, %struct.cvmx_bootmem_named_block_desc** %7, align 8
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_bootmem_desc, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 3
  br i1 %23, label %24, label %84

24:                                               ; preds = %14
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %80, %24
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_bootmem_desc, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ult i32 %26, %29
  br i1 %30, label %31, label %83

31:                                               ; preds = %25
  %32 = load i8*, i8** %4, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %56

34:                                               ; preds = %31
  %35 = load %struct.cvmx_bootmem_named_block_desc*, %struct.cvmx_bootmem_named_block_desc** %7, align 8
  %36 = load i32, i32* %6, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.cvmx_bootmem_named_block_desc, %struct.cvmx_bootmem_named_block_desc* %35, i64 %37
  %39 = getelementptr inbounds %struct.cvmx_bootmem_named_block_desc, %struct.cvmx_bootmem_named_block_desc* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %34
  %43 = load i8*, i8** %4, align 8
  %44 = load %struct.cvmx_bootmem_named_block_desc*, %struct.cvmx_bootmem_named_block_desc** %7, align 8
  %45 = load i32, i32* %6, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.cvmx_bootmem_named_block_desc, %struct.cvmx_bootmem_named_block_desc* %44, i64 %46
  %48 = getelementptr inbounds %struct.cvmx_bootmem_named_block_desc, %struct.cvmx_bootmem_named_block_desc* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_bootmem_desc, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = sub nsw i64 %52, 1
  %54 = call i32 @strncmp(i8* %43, i32 %49, i64 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %42, %34, %31
  %57 = load i8*, i8** %4, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %79, label %59

59:                                               ; preds = %56
  %60 = load %struct.cvmx_bootmem_named_block_desc*, %struct.cvmx_bootmem_named_block_desc** %7, align 8
  %61 = load i32, i32* %6, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.cvmx_bootmem_named_block_desc, %struct.cvmx_bootmem_named_block_desc* %60, i64 %62
  %64 = getelementptr inbounds %struct.cvmx_bootmem_named_block_desc, %struct.cvmx_bootmem_named_block_desc* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %79, label %67

67:                                               ; preds = %59, %42
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @CVMX_BOOTMEM_FLAG_NO_LOCKING, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %67
  %73 = call i32 (...) @cvmx_bootmem_unlock()
  br label %74

74:                                               ; preds = %72, %67
  %75 = load %struct.cvmx_bootmem_named_block_desc*, %struct.cvmx_bootmem_named_block_desc** %7, align 8
  %76 = load i32, i32* %6, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.cvmx_bootmem_named_block_desc, %struct.cvmx_bootmem_named_block_desc* %75, i64 %77
  store %struct.cvmx_bootmem_named_block_desc* %78, %struct.cvmx_bootmem_named_block_desc** %3, align 8
  br label %102

79:                                               ; preds = %59, %56
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %6, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %6, align 4
  br label %25

83:                                               ; preds = %25
  br label %94

84:                                               ; preds = %14
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_bootmem_desc, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_bootmem_desc, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = trunc i64 %90 to i32
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_bootmem_desc, align 8
  %93 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %87, i32 %91, %struct.TYPE_2__* %92)
  br label %94

94:                                               ; preds = %84, %83
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* @CVMX_BOOTMEM_FLAG_NO_LOCKING, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %94
  %100 = call i32 (...) @cvmx_bootmem_unlock()
  br label %101

101:                                              ; preds = %99, %94
  store %struct.cvmx_bootmem_named_block_desc* null, %struct.cvmx_bootmem_named_block_desc** %3, align 8
  br label %102

102:                                              ; preds = %101, %74
  %103 = load %struct.cvmx_bootmem_named_block_desc*, %struct.cvmx_bootmem_named_block_desc** %3, align 8
  ret %struct.cvmx_bootmem_named_block_desc* %103
}

declare dso_local i32 @cvmx_bootmem_lock(...) #1

declare dso_local i64 @cvmx_phys_to_ptr(i32) #1

declare dso_local i32 @strncmp(i8*, i32, i64) #1

declare dso_local i32 @cvmx_bootmem_unlock(...) #1

declare dso_local i32 @cvmx_dprintf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
