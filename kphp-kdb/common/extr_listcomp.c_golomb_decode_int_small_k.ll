; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_golomb_decode_int_small_k.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_golomb_decode_int_small_k.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_decoder = type { i32, i64, %struct.bitreader }
%struct.bitreader = type { i32 }

@decode_cur_bit = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.list_decoder*)* @golomb_decode_int_small_k to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @golomb_decode_int_small_k(%struct.list_decoder* %0) #0 {
  %2 = alloca %struct.list_decoder*, align 8
  %3 = alloca %struct.bitreader*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.list_decoder* %0, %struct.list_decoder** %2, align 8
  %6 = load %struct.list_decoder*, %struct.list_decoder** %2, align 8
  %7 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %6, i32 0, i32 2
  store %struct.bitreader* %7, %struct.bitreader** %3, align 8
  %8 = load %struct.bitreader*, %struct.bitreader** %3, align 8
  %9 = getelementptr inbounds %struct.bitreader, %struct.bitreader* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = load %struct.list_decoder*, %struct.list_decoder** %2, align 8
  %12 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %5, align 4
  br label %14

14:                                               ; preds = %17, %1
  %15 = load i64, i64* @decode_cur_bit, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %14
  %18 = load %struct.list_decoder*, %struct.list_decoder** %2, align 8
  %19 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %22, %20
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %5, align 4
  %25 = call i32 (...) @decode_load_bit()
  br label %14

26:                                               ; preds = %14
  %27 = call i32 (...) @decode_load_bit()
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.bitreader*, %struct.bitreader** %3, align 8
  %30 = getelementptr inbounds %struct.bitreader, %struct.bitreader* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  %33 = load %struct.list_decoder*, %struct.list_decoder** %2, align 8
  %34 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  ret i32 %32
}

declare dso_local i32 @decode_load_bit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
