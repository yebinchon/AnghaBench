; ModuleID = '/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_pci-dma.c_proc_pcxl_dma_show.c'
source_filename = "/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_pci-dma.c_proc_pcxl_dma_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }

@pcxl_res_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"\0ADMA Mapping Area size    : %d bytes (%ld pages)\0A\00", align 1
@PCXL_DMA_MAP_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Resource bitmap : %d bytes\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"     \09  total:    free:    used:   % used:\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"blocks  %8d %8ld %8ld %8ld%%\0A\00", align 1
@pcxl_used_bytes = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"pages   %8ld %8ld %8ld %8ld%%\0A\00", align 1
@pcxl_used_pages = common dso_local global i64 0, align 8
@buf = common dso_local global i32 0, align 4
@pcxl_res_map = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @proc_pcxl_dma_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_pcxl_dma_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i32, i32* @pcxl_res_size, align 4
  %7 = shl i32 %6, 3
  %8 = sext i32 %7 to i64
  store i64 %8, i64* %5, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %10 = load i32, i32* @PCXL_DMA_MAP_SIZE, align 4
  %11 = load i64, i64* %5, align 8
  %12 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %9, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %10, i64 %11)
  %13 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %14 = load i32, i32* @pcxl_res_size, align 4
  %15 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %13, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  %16 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %17 = call i32 @seq_puts(%struct.seq_file* %16, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %18 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %19 = load i32, i32* @pcxl_res_size, align 4
  %20 = load i32, i32* @pcxl_res_size, align 4
  %21 = load i32, i32* @pcxl_used_bytes, align 4
  %22 = sub nsw i32 %20, %21
  %23 = load i32, i32* @pcxl_used_bytes, align 4
  %24 = load i32, i32* @pcxl_used_bytes, align 4
  %25 = mul nsw i32 %24, 100
  %26 = load i32, i32* @pcxl_res_size, align 4
  %27 = sdiv i32 %25, %26
  %28 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %18, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %19, i32 %22, i32 %23, i32 %27)
  %29 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %30 = load i64, i64* %5, align 8
  %31 = trunc i64 %30 to i32
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* @pcxl_used_pages, align 8
  %34 = sub i64 %32, %33
  %35 = load i64, i64* @pcxl_used_pages, align 8
  %36 = load i64, i64* @pcxl_used_pages, align 8
  %37 = mul i64 %36, 100
  %38 = load i64, i64* %5, align 8
  %39 = udiv i64 %37, %38
  %40 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %29, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %31, i64 %34, i64 %35, i64 %39)
  %41 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %42 = call i32 @seq_putc(%struct.seq_file* %41, i8 signext 10)
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, ...) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
