; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_bread_huffman_decode_int.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_bread_huffman_decode_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitreader = type { i32 }

@decode_cur_bit = common dso_local global i64 0, align 8
@HUFFMAN_MAX_CODE_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bread_huffman_decode_int(%struct.bitreader* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.bitreader*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bitreader* %0, %struct.bitreader** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.bitreader*, %struct.bitreader** %4, align 8
  %11 = getelementptr inbounds %struct.bitreader, %struct.bitreader* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %13 = load i64, i64* @decode_cur_bit, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* %9, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %9, align 4
  br label %18

18:                                               ; preds = %15, %3
  %19 = call i32 (...) @decode_load_bit()
  store i32 1, i32* %8, align 4
  br label %20

20:                                               ; preds = %36, %18
  %21 = load i32, i32* %9, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %21, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %20
  %29 = load i32, i32* %9, align 4
  %30 = shl i32 %29, 1
  store i32 %30, i32* %9, align 4
  %31 = load i64, i64* @decode_cur_bit, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %33, %28
  %37 = call i32 (...) @decode_load_bit()
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %8, align 4
  br label %20

40:                                               ; preds = %20
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.bitreader*, %struct.bitreader** %4, align 8
  %43 = getelementptr inbounds %struct.bitreader, %struct.bitreader* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* @HUFFMAN_MAX_CODE_LENGTH, align 4
  %46 = add nsw i32 %45, 1
  %47 = load i32, i32* %9, align 4
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = sub nsw i32 %47, %52
  %54 = mul nsw i32 %46, %53
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %54, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %44, i64 %57
  %59 = load i32, i32* %58, align 4
  ret i32 %59
}

declare dso_local i32 @decode_load_bit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
