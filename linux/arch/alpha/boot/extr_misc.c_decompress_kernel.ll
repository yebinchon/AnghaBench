; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/boot/extr_misc.c_decompress_kernel.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/boot/extr_misc.c_decompress_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@output_data = common dso_local global i32* null, align 8
@input_data = common dso_local global i32* null, align 8
@input_data_size = common dso_local global i64 0, align 8
@free_mem_ptr = common dso_local global i8* null, align 8
@free_mem_end_ptr = common dso_local global i8* null, align 8
@WSIZE = common dso_local global i32 0, align 4
@window = common dso_local global i32 0, align 4
@output_ptr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @decompress_kernel(i8* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to i32*
  store i32* %10, i32** @output_data, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** @input_data, align 8
  %13 = load i64, i64* %8, align 8
  store i64 %13, i64* @input_data_size, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = load i64, i64* %7, align 8
  %16 = getelementptr i8, i8* %14, i64 %15
  store i8* %16, i8** @free_mem_ptr, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load i64, i64* %7, align 8
  %19 = getelementptr i8, i8* %17, i64 %18
  %20 = getelementptr i8, i8* %19, i64 2097152
  store i8* %20, i8** @free_mem_end_ptr, align 8
  %21 = load i32, i32* @WSIZE, align 4
  %22 = call i32 @malloc(i32 %21)
  store i32 %22, i32* @window, align 4
  %23 = call i32 (...) @makecrc()
  %24 = call i32 (...) @gunzip()
  %25 = load i32, i32* @output_ptr, align 4
  ret i32 %25
}

declare dso_local i32 @malloc(i32) #1

declare dso_local i32 @makecrc(...) #1

declare dso_local i32 @gunzip(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
