; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_treeboot-currituck.c_platform_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_treeboot-currituck.c_platform_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@ibm_currituck_memsize = common dso_local global i32 0, align 4
@_end = common dso_local global i64 0, align 8
@ibm_currituck_fixups = common dso_local global i32 0, align 4
@platform_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@ibm44x_dbcr_reset = common dso_local global i32 0, align 4
@SPRN_PIR = common dso_local global i32 0, align 4
@_dtb_start = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Invalid device tree blob\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"device_type\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Cannot find cpu node\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"timebase-frequency\00", align 1
@timebase_period_ns = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @platform_init() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = call i32 (...) @ibm_currituck_detect_memsize()
  store i32 %7, i32* @ibm_currituck_memsize, align 4
  %8 = load i32, i32* @ibm_currituck_memsize, align 4
  %9 = ashr i32 %8, 32
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  store i64 -1, i64* %1, align 8
  br label %15

12:                                               ; preds = %0
  %13 = load i32, i32* @ibm_currituck_memsize, align 4
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %1, align 8
  br label %15

15:                                               ; preds = %12, %11
  %16 = load i64, i64* %1, align 8
  %17 = load i64, i64* @_end, align 8
  %18 = sub i64 %16, %17
  store i64 %18, i64* %2, align 8
  %19 = load i64, i64* @_end, align 8
  %20 = load i64, i64* %2, align 8
  %21 = call i32 @simple_alloc_init(i64 %19, i64 %20, i32 128, i32 64)
  %22 = load i32, i32* @ibm_currituck_fixups, align 4
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @platform_ops, i32 0, i32 1), align 4
  %23 = load i32, i32* @ibm44x_dbcr_reset, align 4
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @platform_ops, i32 0, i32 0), align 4
  %24 = load i32, i32* @SPRN_PIR, align 4
  %25 = call i32 @mfspr(i32 %24)
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* @_dtb_start, align 4
  %27 = call i64 @fdt_check_header(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %15
  %30 = call i32 @fatal(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %15
  %32 = load i32, i32* @_dtb_start, align 4
  %33 = call i32 @fdt_node_offset_by_prop_value(i32 %32, i32 -1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 4)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %31
  %37 = call i32 @fatal(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %31
  %39 = load i32, i32* @_dtb_start, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32* @fdt_getprop(i32 %39, i32 %40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32* %5)
  store i32* %41, i32** %6, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %38
  %45 = load i32, i32* %5, align 4
  %46 = icmp eq i32 %45, 4
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* %48, align 4
  %50 = sdiv i32 1000000000, %49
  store i32 %50, i32* @timebase_period_ns, align 4
  br label %51

51:                                               ; preds = %47, %44, %38
  %52 = load i32, i32* @_dtb_start, align 4
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @fdt_set_boot_cpuid_phys(i32 %52, i32 %53)
  %55 = load i32, i32* @_dtb_start, align 4
  %56 = call i32 @fdt_init(i32 %55)
  %57 = call i32 (...) @serial_console_init()
  ret void
}

declare dso_local i32 @ibm_currituck_detect_memsize(...) #1

declare dso_local i32 @simple_alloc_init(i64, i64, i32, i32) #1

declare dso_local i32 @mfspr(i32) #1

declare dso_local i64 @fdt_check_header(i32) #1

declare dso_local i32 @fatal(i8*) #1

declare dso_local i32 @fdt_node_offset_by_prop_value(i32, i32, i8*, i8*, i32) #1

declare dso_local i32* @fdt_getprop(i32, i32, i8*, i32*) #1

declare dso_local i32 @fdt_set_boot_cpuid_phys(i32, i32) #1

declare dso_local i32 @fdt_init(i32) #1

declare dso_local i32 @serial_console_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
