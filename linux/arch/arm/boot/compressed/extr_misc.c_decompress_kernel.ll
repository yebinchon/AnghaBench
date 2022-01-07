; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/boot/compressed/extr_misc.c_decompress_kernel.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/boot/compressed/extr_misc.c_decompress_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@output_data = common dso_local global i8* null, align 8
@free_mem_ptr = common dso_local global i64 0, align 8
@free_mem_end_ptr = common dso_local global i64 0, align 8
@__machine_arch_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Uncompressing Linux...\00", align 1
@input_data = common dso_local global i64 0, align 8
@input_data_end = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"decompressor returned an error\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c" done, booting the kernel.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @decompress_kernel(i64 %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i64, i64* %5, align 8
  %11 = inttoptr i64 %10 to i8*
  store i8* %11, i8** @output_data, align 8
  %12 = load i64, i64* %6, align 8
  store i64 %12, i64* @free_mem_ptr, align 8
  %13 = load i64, i64* %7, align 8
  store i64 %13, i64* @free_mem_end_ptr, align 8
  %14 = load i32, i32* %8, align 4
  store i32 %14, i32* @__machine_arch_type, align 4
  %15 = call i32 (...) @arch_decomp_setup()
  %16 = call i32 @putstr(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %17 = load i64, i64* @input_data, align 8
  %18 = load i64, i64* @input_data_end, align 8
  %19 = load i64, i64* @input_data, align 8
  %20 = sub nsw i64 %18, %19
  %21 = load i8*, i8** @output_data, align 8
  %22 = call i32 @do_decompress(i64 %17, i64 %20, i8* %21, i32 (i8*)* @error)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = call i32 @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %29

27:                                               ; preds = %4
  %28 = call i32 @putstr(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %25
  ret void
}

declare dso_local i32 @arch_decomp_setup(...) #1

declare dso_local i32 @putstr(i8*) #1

declare dso_local i32 @do_decompress(i64, i64, i8*, i32 (i8*)*) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
