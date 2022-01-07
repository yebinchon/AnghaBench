; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_crc32.c_crc32_check_and_repair.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_crc32.c_crc32_check_and_repair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [32 x i8] c"find_corrupted_bit returns %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"repair_bit returns %d.\0A\00", align 1
@.str.2 = private unnamed_addr constant [71 x i8] c"crc32_check_and_repair successfully repair one bit in %d bytes block.\0A\00", align 1
@.str.3 = private unnamed_addr constant [79 x i8] c"crc32_check_and_repair successfully repair one bit in crc32 (%d bytes block).\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crc32_check_and_repair(i8* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @compute_crc32(i8* %14, i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = load i32*, i32** %8, align 8
  %19 = load i32, i32* %18, align 4
  %20 = xor i32 %17, %19
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %76

24:                                               ; preds = %4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @find_corrupted_bit(i32 %25, i32 %26)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = call i32 @vkprintf(i32 3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %12, align 4
  %33 = call i32 @repair_bit(i8* %30, i32 %31, i32 %32)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = call i32 @vkprintf(i32 3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %13, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %53, label %38

38:                                               ; preds = %24
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @compute_crc32(i8* %39, i32 %40)
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %41, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %38
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @kprintf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %49, %38
  store i32 1, i32* %5, align 4
  br label %76

53:                                               ; preds = %24
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = sub i32 %55, 1
  %57 = and i32 %54, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %68, label %59

59:                                               ; preds = %53
  %60 = load i32, i32* %10, align 4
  %61 = load i32*, i32** %8, align 8
  store i32 %60, i32* %61, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @kprintf(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %64, %59
  store i32 2, i32* %5, align 4
  br label %76

68:                                               ; preds = %53
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = call i32 @assert(i32 %72)
  %74 = load i32, i32* %10, align 4
  %75 = load i32*, i32** %8, align 8
  store i32 %74, i32* %75, align 4
  store i32 -1, i32* %5, align 4
  br label %76

76:                                               ; preds = %68, %67, %52, %23
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i32 @compute_crc32(i8*, i32) #1

declare dso_local i32 @find_corrupted_bit(i32, i32) #1

declare dso_local i32 @vkprintf(i32, i8*, i32) #1

declare dso_local i32 @repair_bit(i8*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @kprintf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
