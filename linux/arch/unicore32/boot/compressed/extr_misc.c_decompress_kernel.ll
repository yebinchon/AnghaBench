; ModuleID = '/home/carl/AnghaBench/linux/arch/unicore32/boot/compressed/extr_misc.c_decompress_kernel.c'
source_filename = "/home/carl/AnghaBench/linux/arch/unicore32/boot/compressed/extr_misc.c_decompress_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@output_data = common dso_local global i8* null, align 8
@free_mem_ptr = common dso_local global i64 0, align 8
@free_mem_end_ptr = common dso_local global i64 0, align 8
@input_data_end = common dso_local global i64 0, align 8
@output_ptr = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Uncompressing Linux...\00", align 1
@input_data = common dso_local global i64 0, align 8
@error = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c" done, booting the kernel.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decompress_kernel(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %4, align 8
  %9 = inttoptr i64 %8 to i8*
  store i8* %9, i8** @output_data, align 8
  %10 = load i64, i64* %5, align 8
  store i64 %10, i64* @free_mem_ptr, align 8
  %11 = load i64, i64* %6, align 8
  store i64 %11, i64* @free_mem_end_ptr, align 8
  %12 = call i32 (...) @arch_decomp_setup()
  %13 = load i64, i64* @input_data_end, align 8
  %14 = sub i64 %13, 4
  %15 = inttoptr i64 %14 to i8*
  store i8* %15, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i64 @get_unaligned_le32(i8* %16)
  store i64 %17, i64* @output_ptr, align 8
  %18 = call i32 @arch_decomp_puts(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %19 = load i64, i64* @input_data, align 8
  %20 = load i64, i64* @input_data_end, align 8
  %21 = load i64, i64* @input_data, align 8
  %22 = sub nsw i64 %20, %21
  %23 = load i8*, i8** @output_data, align 8
  %24 = load i32, i32* @error, align 4
  %25 = call i32 @__decompress(i64 %19, i64 %22, i32* null, i32* null, i8* %23, i32 0, i32* null, i32 %24)
  %26 = call i32 @arch_decomp_puts(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i64, i64* @output_ptr, align 8
  ret i64 %27
}

declare dso_local i32 @arch_decomp_setup(...) #1

declare dso_local i64 @get_unaligned_le32(i8*) #1

declare dso_local i32 @arch_decomp_puts(i8*) #1

declare dso_local i32 @__decompress(i64, i64, i32*, i32*, i8*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
