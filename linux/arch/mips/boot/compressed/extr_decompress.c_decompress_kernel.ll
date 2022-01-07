; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/boot/compressed/extr_decompress.c_decompress_kernel.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/boot/compressed/extr_decompress.c_decompress_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__image_begin = common dso_local global i32 0, align 4
@__image_end = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"zimage at:     \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@free_mem_ptr = common dso_local global i64 0, align 8
@BOOT_HEAP_SIZE = common dso_local global i64 0, align 8
@free_mem_end_ptr = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [37 x i8] c"Uncompressing Linux at load address \00", align 1
@VMLINUX_LOAD_ADDRESS_ULL = common dso_local global i64 0, align 8
@error = common dso_local global i32 0, align 4
@CONFIG_MIPS_RAW_APPENDED_DTB = common dso_local global i32 0, align 4
@__appended_dtb = common dso_local global i32 0, align 4
@FDT_MAGIC = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"Now, booting the kernel...\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @decompress_kernel(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  store i64 ptrtoint (i32* @__image_begin to i64), i64* %3, align 8
  store i64 sub (i64 ptrtoint (i32* @__image_end to i64), i64 ptrtoint (i32* @__image_begin to i64)), i64* %4, align 8
  %7 = call i32 @puts(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %8 = load i64, i64* %3, align 8
  %9 = call i32 @puthex(i64 %8)
  %10 = call i32 @puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* %3, align 8
  %13 = add i64 %11, %12
  %14 = call i32 @puthex(i64 %13)
  %15 = call i32 @puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %16 = load i64, i64* %2, align 8
  store i64 %16, i64* @free_mem_ptr, align 8
  %17 = load i64, i64* %2, align 8
  %18 = load i64, i64* @BOOT_HEAP_SIZE, align 8
  %19 = add i64 %17, %18
  store i64 %19, i64* @free_mem_end_ptr, align 8
  %20 = call i32 @puts(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %21 = load i64, i64* @VMLINUX_LOAD_ADDRESS_ULL, align 8
  %22 = call i32 @puthex(i64 %21)
  %23 = call i32 @puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %24 = load i64, i64* %3, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* @VMLINUX_LOAD_ADDRESS_ULL, align 8
  %28 = inttoptr i64 %27 to i8*
  %29 = load i32, i32* @error, align 4
  %30 = call i32 @__decompress(i8* %25, i64 %26, i32 0, i32 0, i8* %28, i32 0, i32 0, i32 %29)
  %31 = load i32, i32* @CONFIG_MIPS_RAW_APPENDED_DTB, align 4
  %32 = call i64 @IS_ENABLED(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %1
  %35 = call i64 @fdt_magic(i8* bitcast (i32* @__appended_dtb to i8*))
  %36 = load i64, i64* @FDT_MAGIC, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %34
  %39 = call i32 @fdt_totalsize(i8* bitcast (i32* @__appended_dtb to i8*))
  store i32 %39, i32* %6, align 4
  %40 = call i32 @le32_to_cpup(i8* getelementptr (i8, i8* bitcast (i32* @__image_end to i8*), i64 -4))
  store i32 %40, i32* %5, align 4
  %41 = load i64, i64* @VMLINUX_LOAD_ADDRESS_ULL, align 8
  %42 = inttoptr i64 %41 to i8*
  %43 = load i32, i32* %5, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr i8, i8* %42, i64 %44
  %46 = load i32, i32* @__appended_dtb, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @memcpy(i8* %45, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %38, %34, %1
  %50 = call i32 @puts(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @puthex(i64) #1

declare dso_local i32 @__decompress(i8*, i64, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i64 @fdt_magic(i8*) #1

declare dso_local i32 @fdt_totalsize(i8*) #1

declare dso_local i32 @le32_to_cpup(i8*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
