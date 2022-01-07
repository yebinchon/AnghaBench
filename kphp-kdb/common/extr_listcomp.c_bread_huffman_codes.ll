; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_bread_huffman_codes.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_bread_huffman_codes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitreader = type { i32 }

@decode_cur_bit = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bread_huffman_codes(%struct.bitreader* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.bitreader*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bitreader* %0, %struct.bitreader** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %12 = load %struct.bitreader*, %struct.bitreader** %5, align 8
  %13 = getelementptr inbounds %struct.bitreader, %struct.bitreader* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %10, align 4
  %15 = load i32*, i32** %8, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %67, %4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %70

20:                                               ; preds = %16
  store i32 0, i32* %11, align 4
  %21 = load i64, i64* @decode_cur_bit, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* %11, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %11, align 4
  br label %26

26:                                               ; preds = %23, %20
  %27 = call i32 (...) @decode_load_bit()
  %28 = load i32, i32* %11, align 4
  %29 = shl i32 %28, 1
  store i32 %29, i32* %11, align 4
  %30 = load i64, i64* @decode_cur_bit, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* %11, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %11, align 4
  br label %35

35:                                               ; preds = %32, %26
  %36 = call i32 (...) @decode_load_bit()
  %37 = load i32, i32* %11, align 4
  %38 = shl i32 %37, 1
  store i32 %38, i32* %11, align 4
  %39 = load i64, i64* @decode_cur_bit, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32, i32* %11, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %11, align 4
  br label %44

44:                                               ; preds = %41, %35
  %45 = call i32 (...) @decode_load_bit()
  %46 = load i32, i32* %11, align 4
  %47 = shl i32 %46, 1
  store i32 %47, i32* %11, align 4
  %48 = load i64, i64* @decode_cur_bit, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %11, align 4
  br label %53

53:                                               ; preds = %50, %44
  %54 = call i32 (...) @decode_load_bit()
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i32*, i32** %8, align 8
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %57, %53
  %62 = load i32, i32* %11, align 4
  %63 = load i32*, i32** %6, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32 %62, i32* %66, align 4
  br label %67

67:                                               ; preds = %61
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %9, align 4
  br label %16

70:                                               ; preds = %16
  %71 = load i32, i32* %10, align 4
  %72 = load %struct.bitreader*, %struct.bitreader** %5, align 8
  %73 = getelementptr inbounds %struct.bitreader, %struct.bitreader* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  ret void
}

declare dso_local i32 @decode_load_bit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
