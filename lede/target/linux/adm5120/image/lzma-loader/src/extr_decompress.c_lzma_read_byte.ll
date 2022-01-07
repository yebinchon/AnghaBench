; ModuleID = '/home/carl/AnghaBench/lede/target/linux/adm5120/image/lzma-loader/src/extr_decompress.c_lzma_read_byte.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/adm5120/image/lzma-loader/src/extr_decompress.c_lzma_read_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@flash_ofs = common dso_local global i64 0, align 8
@flash_max = common dso_local global i64 0, align 8
@LZMA_RESULT_DATA_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"lzma_read_byte: ofs=%08X, len=%08X\0A\00", align 1
@flash_base = common dso_local global i8* null, align 8
@flash_ofs_mask = common dso_local global i64 0, align 8
@LZMA_RESULT_OK = common dso_local global i32 0, align 4
@FLASH_BANK_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i64*)* @lzma_read_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lzma_read_byte(i8* %0, i8** %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64* %2, i64** %7, align 8
  %9 = load i64, i64* @flash_ofs, align 8
  %10 = load i64, i64* @flash_max, align 8
  %11 = icmp uge i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @LZMA_RESULT_DATA_ERROR, align 4
  store i32 %13, i32* %4, align 4
  br label %33

14:                                               ; preds = %3
  %15 = load i64, i64* @flash_max, align 8
  %16 = load i64, i64* @flash_ofs, align 8
  %17 = sub i64 %15, %16
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* @flash_ofs, align 8
  %19 = load i64, i64* %8, align 8
  %20 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %18, i64 %19)
  %21 = load i8*, i8** @flash_base, align 8
  %22 = load i64, i64* @flash_ofs, align 8
  %23 = load i64, i64* @flash_ofs_mask, align 8
  %24 = and i64 %22, %23
  %25 = getelementptr inbounds i8, i8* %21, i64 %24
  %26 = load i8**, i8*** %6, align 8
  store i8* %25, i8** %26, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load i64*, i64** %7, align 8
  store i64 %27, i64* %28, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* @flash_ofs, align 8
  %31 = add i64 %30, %29
  store i64 %31, i64* @flash_ofs, align 8
  %32 = load i32, i32* @LZMA_RESULT_OK, align 4
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %14, %12
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @DBG(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
