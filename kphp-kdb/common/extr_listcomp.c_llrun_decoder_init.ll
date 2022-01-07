; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_llrun_decoder_init.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_llrun_decoder_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_decoder = type { i32, i32, i32, i32*, i64, %struct.bitreader }
%struct.bitreader = type { i32 }

@llrun_decode_int_single_bucket = common dso_local global i32 0, align 4
@HUFFMAN_MAX_CODE_LENGTH = common dso_local global i64 0, align 8
@llrun_decode_int = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.list_decoder*)* @llrun_decoder_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @llrun_decoder_init(%struct.list_decoder* %0) #0 {
  %2 = alloca %struct.list_decoder*, align 8
  %3 = alloca %struct.bitreader*, align 8
  %4 = alloca [32 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.list_decoder* %0, %struct.list_decoder** %2, align 8
  %7 = load %struct.list_decoder*, %struct.list_decoder** %2, align 8
  %8 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %7, i32 0, i32 5
  store %struct.bitreader* %8, %struct.bitreader** %3, align 8
  %9 = load %struct.bitreader*, %struct.bitreader** %3, align 8
  %10 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 0
  %11 = load %struct.list_decoder*, %struct.list_decoder** %2, align 8
  %12 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @bread_huffman_codes(%struct.bitreader* %9, i32* %10, i32 %13, i32* %6)
  %15 = load i32, i32* %6, align 4
  %16 = icmp sle i32 %15, 1
  br i1 %16, label %17, label %41

17:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %35, %17
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.list_decoder*, %struct.list_decoder** %2, align 8
  %21 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %18
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.list_decoder*, %struct.list_decoder** %2, align 8
  %33 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  br label %38

34:                                               ; preds = %24
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %18

38:                                               ; preds = %30, %18
  %39 = load %struct.list_decoder*, %struct.list_decoder** %2, align 8
  %40 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %39, i32 0, i32 3
  store i32* @llrun_decode_int_single_bucket, i32** %40, align 8
  br label %61

41:                                               ; preds = %1
  %42 = load %struct.list_decoder*, %struct.list_decoder** %2, align 8
  %43 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %42, i32 0, i32 1
  store i32 -1, i32* %43, align 4
  %44 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 0
  %45 = load %struct.list_decoder*, %struct.list_decoder** %2, align 8
  %46 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i64, i64* @HUFFMAN_MAX_CODE_LENGTH, align 8
  %49 = load %struct.list_decoder*, %struct.list_decoder** %2, align 8
  %50 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.list_decoder*, %struct.list_decoder** %2, align 8
  %53 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @HUFFMAN_MAX_CODE_LENGTH, align 8
  %56 = add nsw i64 %55, 1
  %57 = add nsw i64 %54, %56
  %58 = call i32 @canonical_huffman(i32* %44, i32 %47, i64 %48, i64 %51, i32* null, i64 %57)
  %59 = load %struct.list_decoder*, %struct.list_decoder** %2, align 8
  %60 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %59, i32 0, i32 3
  store i32* @llrun_decode_int, i32** %60, align 8
  br label %61

61:                                               ; preds = %41, %38
  %62 = load %struct.list_decoder*, %struct.list_decoder** %2, align 8
  %63 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %62, i32 0, i32 2
  store i32 -1, i32* %63, align 8
  ret void
}

declare dso_local i32 @bread_huffman_codes(%struct.bitreader*, i32*, i32, i32*) #1

declare dso_local i32 @canonical_huffman(i32*, i32, i64, i64, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
