; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_imagetag.c_compute_crc32.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_imagetag.c_compute_crc32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEEK_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @compute_crc32(i32 %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca [1024 x i32], align 16
  %10 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i32, i32* @SEEK_SET, align 4
  %14 = call i32 @fseek(i32* %11, i64 %12, i32 %13)
  br label %15

15:                                               ; preds = %31, %4
  %16 = load i32*, i32** %6, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %29

18:                                               ; preds = %15
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @feof(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %18
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @ferror(i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = load i64, i64* %8, align 8
  %28 = icmp uge i64 %27, 4096
  br label %29

29:                                               ; preds = %26, %22, %18, %15
  %30 = phi i1 [ false, %22 ], [ false, %18 ], [ false, %15 ], [ %28, %26 ]
  br i1 %30, label %31, label %42

31:                                               ; preds = %29
  %32 = getelementptr inbounds [1024 x i32], [1024 x i32]* %9, i64 0, i64 0
  %33 = load i32*, i32** %6, align 8
  %34 = call i64 @fread(i32* %32, i32 4, i64 4096, i32* %33)
  store i64 %34, i64* %10, align 8
  %35 = load i32, i32* %5, align 4
  %36 = getelementptr inbounds [1024 x i32], [1024 x i32]* %9, i64 0, i64 0
  %37 = load i64, i64* %10, align 8
  %38 = call i32 @cyg_crc32_accumulate(i32 %35, i32* %36, i64 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* %10, align 8
  %41 = sub i64 %39, %40
  store i64 %41, i64* %8, align 8
  br label %15

42:                                               ; preds = %29
  %43 = load i32*, i32** %6, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %65

45:                                               ; preds = %42
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @feof(i32* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %65, label %49

49:                                               ; preds = %45
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @ferror(i32* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %65, label %53

53:                                               ; preds = %49
  %54 = load i64, i64* %8, align 8
  %55 = icmp ugt i64 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %53
  %57 = getelementptr inbounds [1024 x i32], [1024 x i32]* %9, i64 0, i64 0
  %58 = load i64, i64* %8, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = call i64 @fread(i32* %57, i32 4, i64 %58, i32* %59)
  store i64 %60, i64* %10, align 8
  %61 = load i32, i32* %5, align 4
  %62 = getelementptr inbounds [1024 x i32], [1024 x i32]* %9, i64 0, i64 0
  %63 = load i64, i64* %10, align 8
  %64 = call i32 @cyg_crc32_accumulate(i32 %61, i32* %62, i64 %63)
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %56, %53, %49, %45, %42
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i32 @fseek(i32*, i64, i32) #1

declare dso_local i32 @feof(i32*) #1

declare dso_local i32 @ferror(i32*) #1

declare dso_local i64 @fread(i32*, i32, i64, i32*) #1

declare dso_local i32 @cyg_crc32_accumulate(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
