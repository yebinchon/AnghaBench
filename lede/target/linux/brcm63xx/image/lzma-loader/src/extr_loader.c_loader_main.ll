; ModuleID = '/home/carl/AnghaBench/lede/target/linux/brcm63xx/image/lzma-loader/src/extr_loader.c_loader_main.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/brcm63xx/image/lzma-loader/src/extr_loader.c_loader_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [37 x i8] c"\0A\0AOpenWrt kernel loader for BCM63XX\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"Copyright (C) 2011 Gabor Juhos <juhosg@openwrt.org>\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"Copyright (C) 2014 Jonas Gorski <jogo@openwrt.org>\0A\00", align 1
@LZMA_RESULT_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Incorrect LZMA stream properties!\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Decompressing kernel... \00", align 1
@kernel_la = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"failed, \00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"data error!\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"unknown error %d!\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"done!\0A\00", align 1
@lzma_outsize = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [29 x i8] c"Starting kernel at %08x...\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @loader_main(i64 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca void (i64, i64, i64, i64)*, align 8
  %10 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = call i32 (...) @board_init()
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  %15 = call i32 (...) @lzma_init_data()
  %16 = call i32 (...) @lzma_init_props()
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* @LZMA_RESULT_OK, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %22 = call i32 (...) @halt()
  br label %23

23:                                               ; preds = %20, %4
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %25 = load i32, i32* @kernel_la, align 4
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to i8*
  %28 = call i32 @lzma_decompress(i8* %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @LZMA_RESULT_OK, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %23
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %34 = load i32, i32* %10, align 4
  switch i32 %34, label %37 [
    i32 128, label %35
  ]

35:                                               ; preds = %32
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  br label %40

37:                                               ; preds = %32
  %38 = load i32, i32* %10, align 4
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %37, %35
  %41 = call i32 (...) @halt()
  br label %44

42:                                               ; preds = %23
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %40
  %45 = load i32, i32* @kernel_la, align 4
  %46 = load i32, i32* @lzma_outsize, align 4
  %47 = call i32 @flush_cache(i32 %45, i32 %46)
  %48 = load i32, i32* @kernel_la, align 4
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @kernel_la, align 4
  %51 = sext i32 %50 to i64
  %52 = inttoptr i64 %51 to i8*
  %53 = bitcast i8* %52 to void (i64, i64, i64, i64)*
  store void (i64, i64, i64, i64)* %53, void (i64, i64, i64, i64)** %9, align 8
  %54 = load void (i64, i64, i64, i64)*, void (i64, i64, i64, i64)** %9, align 8
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* %8, align 8
  call void %54(i64 %55, i64 %56, i64 %57, i64 %58)
  ret void
}

declare dso_local i32 @board_init(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @lzma_init_data(...) #1

declare dso_local i32 @lzma_init_props(...) #1

declare dso_local i32 @halt(...) #1

declare dso_local i32 @lzma_decompress(i8*) #1

declare dso_local i32 @flush_cache(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
