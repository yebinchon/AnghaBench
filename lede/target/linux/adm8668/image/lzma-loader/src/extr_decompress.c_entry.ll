; ModuleID = '/home/carl/AnghaBench/lede/target/linux/adm8668/image/lzma-loader/src/extr_decompress.c_entry.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/adm8668/image/lzma-loader/src/extr_decompress.c_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }

@_binary_vmlinux_lzma_start = common dso_local global i32 0, align 4
@data = common dso_local global i8* null, align 8
@_binary_vmlinux_lzma_end = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"\0ALZMA kernel loader\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"lzma data @ %#x - %#x\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"load addr @ %#x\0A\0A\00", align 1
@KERNEL_ENTRY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"jump table @ %#x\0A\00", align 1
@gd = common dso_local global %struct.TYPE_7__* null, align 8
@buffer = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [25 x i8] c"\0ADecompressing kernel...\00", align 1
@LZMA_RESULT_OK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"success!\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"failure!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @entry(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca i8**, align 8
  %15 = alloca %struct.TYPE_6__, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %6, align 4
  %18 = zext i32 %17 to i64
  %19 = inttoptr i64 %18 to i8**
  store i8** %19, i8*** %13, align 8
  %20 = load i32, i32* %7, align 4
  %21 = zext i32 %20 to i64
  %22 = inttoptr i64 %21 to i8**
  store i8** %22, i8*** %14, align 8
  %23 = load i32, i32* @_binary_vmlinux_lzma_start, align 4
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i8*
  store i8* %25, i8** @data, align 8
  %26 = load i32, i32* @_binary_vmlinux_lzma_end, align 4
  %27 = load i32, i32* @_binary_vmlinux_lzma_start, align 4
  %28 = sub nsw i32 %26, %27
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %10, align 4
  %30 = call i32 @puts(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @_binary_vmlinux_lzma_start, align 4
  %32 = load i32, i32* @_binary_vmlinux_lzma_end, align 4
  %33 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 %32)
  %34 = load i32, i32* @KERNEL_ENTRY, align 4
  %35 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** @gd, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %40)
  %42 = call i32 (...) @get_byte()
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = urem i32 %43, 9
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* %9, align 4
  %48 = udiv i32 %47, 9
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = urem i32 %49, 5
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %9, align 4
  %54 = udiv i32 %53, 5
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load i64, i64* @buffer, align 8
  %58 = inttoptr i64 %57 to i32*
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  store i32* %58, i32** %59, align 8
  %60 = load i8*, i8** @data, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 4
  store i8* %61, i8** @data, align 8
  %62 = call i32 (...) @get_byte()
  %63 = call i32 (...) @get_byte()
  %64 = shl i32 %63, 8
  %65 = add i32 %62, %64
  %66 = call i32 (...) @get_byte()
  %67 = shl i32 %66, 16
  %68 = add i32 %65, %67
  %69 = call i32 (...) @get_byte()
  %70 = shl i32 %69, 24
  %71 = add i32 %68, %70
  store i32 %71, i32* %11, align 4
  %72 = load i8*, i8** @data, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 4
  store i8* %73, i8** @data, align 8
  %74 = call i32 @puts(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %75 = load i8*, i8** @data, align 8
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* @KERNEL_ENTRY, align 4
  %78 = sext i32 %77 to i64
  %79 = inttoptr i64 %78 to i8*
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @LzmaDecode(%struct.TYPE_6__* %15, i8* %75, i32 %76, i32* %10, i8* %79, i32 %80, i32* %11)
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* @LZMA_RESULT_OK, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %93

84:                                               ; preds = %4
  %85 = call i32 @puts(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %86 = load i32, i32* @KERNEL_ENTRY, align 4
  %87 = sext i32 %86 to i64
  %88 = inttoptr i64 %87 to void (i32, i32, i32, i32)*
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %8, align 4
  call void %88(i32 %89, i32 %90, i32 %91, i32 %92)
  br label %93

93:                                               ; preds = %84, %4
  %94 = call i32 @puts(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i32 @get_byte(...) #1

declare dso_local i32 @LzmaDecode(%struct.TYPE_6__*, i8*, i32, i32*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
