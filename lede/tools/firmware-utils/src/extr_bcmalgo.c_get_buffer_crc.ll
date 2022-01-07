; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_bcmalgo.c_get_buffer_crc.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_bcmalgo.c_get_buffer_crc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_buffer_crc(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 4294967295, i64* %5, align 8
  store i64 4294967295, i64* %6, align 8
  store i64 4294967295, i64* %7, align 8
  %20 = load i64, i64* %4, align 8
  store i64 %20, i64* %8, align 8
  store i64 79764919, i64* %9, align 8
  store i64 2147483648, i64* %10, align 8
  store i32 0, i32* %11, align 4
  br label %21

21:                                               ; preds = %62, %2
  %22 = load i32, i32* %11, align 4
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* %8, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %65

26:                                               ; preds = %21
  %27 = load i8*, i8** %3, align 8
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i64
  store i64 %32, i64* %13, align 8
  store i64 128, i64* %12, align 8
  br label %33

33:                                               ; preds = %58, %26
  %34 = load i64, i64* %12, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %61

36:                                               ; preds = %33
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* %10, align 8
  %39 = and i64 %37, %38
  store i64 %39, i64* %14, align 8
  %40 = load i64, i64* %5, align 8
  %41 = shl i64 %40, 1
  store i64 %41, i64* %5, align 8
  %42 = load i64, i64* %13, align 8
  %43 = load i64, i64* %12, align 8
  %44 = and i64 %42, %43
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %36
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* %14, align 8
  %49 = xor i64 %48, %47
  store i64 %49, i64* %14, align 8
  br label %50

50:                                               ; preds = %46, %36
  %51 = load i64, i64* %14, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* %5, align 8
  %56 = xor i64 %55, %54
  store i64 %56, i64* %5, align 8
  br label %57

57:                                               ; preds = %53, %50
  br label %58

58:                                               ; preds = %57
  %59 = load i64, i64* %12, align 8
  %60 = ashr i64 %59, 1
  store i64 %60, i64* %12, align 8
  br label %33

61:                                               ; preds = %33
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %11, align 4
  br label %21

65:                                               ; preds = %21
  %66 = load i64, i64* %6, align 8
  %67 = load i64, i64* %5, align 8
  %68 = xor i64 %67, %66
  store i64 %68, i64* %5, align 8
  %69 = load i64, i64* %7, align 8
  %70 = load i64, i64* %5, align 8
  %71 = and i64 %70, %69
  store i64 %71, i64* %5, align 8
  %72 = load i64, i64* %5, align 8
  %73 = and i64 %72, -16777216
  %74 = ashr i64 %73, 24
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %15, align 4
  %76 = load i64, i64* %5, align 8
  %77 = and i64 %76, 16711680
  %78 = ashr i64 %77, 16
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %16, align 4
  %80 = load i64, i64* %5, align 8
  %81 = and i64 %80, 65280
  %82 = ashr i64 %81, 8
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %17, align 4
  %84 = load i64, i64* %5, align 8
  %85 = and i64 %84, 255
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %18, align 4
  %87 = load i32, i32* %15, align 4
  %88 = load i32, i32* %16, align 4
  %89 = shl i32 %88, 8
  %90 = or i32 %87, %89
  %91 = load i32, i32* %17, align 4
  %92 = shl i32 %91, 16
  %93 = or i32 %90, %92
  %94 = load i32, i32* %18, align 4
  %95 = shl i32 %94, 24
  %96 = or i32 %93, %95
  store i32 %96, i32* %19, align 4
  %97 = load i32, i32* %19, align 4
  %98 = call i32 @reverse_endian32(i32 %97)
  ret i32 %98
}

declare dso_local i32 @reverse_endian32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
