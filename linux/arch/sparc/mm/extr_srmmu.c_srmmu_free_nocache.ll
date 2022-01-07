; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/mm/extr_srmmu.c_srmmu_free_nocache.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/mm/extr_srmmu.c_srmmu_free_nocache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SRMMU_NOCACHE_VADDR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"Vaddr %lx is smaller than nocache base 0x%lx\0A\00", align 1
@srmmu_nocache_end = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"Vaddr %lx is bigger than nocache end 0x%lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Size 0x%x is not a power of 2\0A\00", align 1
@SRMMU_NOCACHE_BITMAP_SHIFT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Size 0x%x is too small\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Vaddr %lx is not aligned to size 0x%x\0A\00", align 1
@srmmu_nocache_map = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @srmmu_free_nocache(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = ptrtoint i8* %7 to i64
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @SRMMU_NOCACHE_VADDR, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @SRMMU_NOCACHE_VADDR, align 8
  %15 = call i32 (i8*, i64, ...) @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %13, i64 %14)
  %16 = call i32 (...) @BUG()
  br label %17

17:                                               ; preds = %12, %2
  %18 = load i64, i64* %5, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = add i64 %18, %20
  %22 = load i64, i64* @srmmu_nocache_end, align 8
  %23 = icmp ugt i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %17
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @srmmu_nocache_end, align 8
  %27 = call i32 (i8*, i64, ...) @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %25, i64 %26)
  %28 = call i32 (...) @BUG()
  br label %29

29:                                               ; preds = %24, %17
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @is_power_of_2(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = call i32 (i8*, i64, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %35)
  %37 = call i32 (...) @BUG()
  br label %38

38:                                               ; preds = %33, %29
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @SRMMU_NOCACHE_BITMAP_SHIFT, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = call i32 (i8*, i64, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i64 %44)
  %46 = call i32 (...) @BUG()
  br label %47

47:                                               ; preds = %42, %38
  %48 = load i64, i64* %5, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = and i64 %48, %51
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %47
  %55 = load i64, i64* %5, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call i32 (i8*, i64, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i64 %55, i32 %56)
  %58 = call i32 (...) @BUG()
  br label %59

59:                                               ; preds = %54, %47
  %60 = load i64, i64* %5, align 8
  %61 = load i64, i64* @SRMMU_NOCACHE_VADDR, align 8
  %62 = sub i64 %60, %61
  %63 = load i32, i32* @SRMMU_NOCACHE_BITMAP_SHIFT, align 4
  %64 = zext i32 %63 to i64
  %65 = lshr i64 %62, %64
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @SRMMU_NOCACHE_BITMAP_SHIFT, align 4
  %69 = ashr i32 %67, %68
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @bit_map_clear(i32* @srmmu_nocache_map, i32 %70, i32 %71)
  ret void
}

declare dso_local i32 @printk(i8*, i64, ...) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i32 @bit_map_clear(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
