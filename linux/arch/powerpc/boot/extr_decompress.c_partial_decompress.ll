; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_decompress.c_partial_decompress.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_decompress.c_partial_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@decompressed_bytes = common dso_local global i64 0, align 8
@output_buffer = common dso_local global i8* null, align 8
@limit = common dso_local global i64 0, align 8
@skip = common dso_local global i64 0, align 8
@flush = common dso_local global i32 0, align 4
@print_err = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @partial_decompress(i8* %0, i64 %1, i8* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load i64, i64* %11, align 8
  %14 = load i64, i64* %10, align 8
  %15 = add i64 %14, %13
  store i64 %15, i64* %10, align 8
  store i64 0, i64* @decompressed_bytes, align 8
  %16 = load i8*, i8** %9, align 8
  store i8* %16, i8** @output_buffer, align 8
  %17 = load i64, i64* %10, align 8
  store i64 %17, i64* @limit, align 8
  %18 = load i64, i64* %11, align 8
  store i64 %18, i64* @skip, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load i32, i32* @flush, align 4
  %22 = load i8*, i8** %9, align 8
  %23 = load i64, i64* %10, align 8
  %24 = load i32, i32* @print_err, align 4
  %25 = call i32 @__decompress(i8* %19, i64 %20, i32* null, i32 %21, i8* %22, i64 %23, i32* null, i32 %24)
  store i32 %25, i32* %12, align 4
  %26 = load i64, i64* @decompressed_bytes, align 8
  %27 = load i64, i64* @limit, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %5
  %30 = load i32, i32* %12, align 4
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %6, align 8
  br label %36

32:                                               ; preds = %5
  %33 = load i64, i64* @decompressed_bytes, align 8
  %34 = load i64, i64* @skip, align 8
  %35 = sub nsw i64 %33, %34
  store i64 %35, i64* %6, align 8
  br label %36

36:                                               ; preds = %32, %29
  %37 = load i64, i64* %6, align 8
  ret i64 %37
}

declare dso_local i32 @__decompress(i8*, i64, i32*, i32, i8*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
