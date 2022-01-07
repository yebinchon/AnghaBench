; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_golomb_decode_int_big_k.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_golomb_decode_int_big_k.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_decoder = type { i32, i32, i32, i64, %struct.bitreader }
%struct.bitreader = type { i32 }

@decode_cur_bit = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.list_decoder*)* @golomb_decode_int_big_k to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @golomb_decode_int_big_k(%struct.list_decoder* %0) #0 {
  %2 = alloca %struct.list_decoder*, align 8
  %3 = alloca %struct.bitreader*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.list_decoder* %0, %struct.list_decoder** %2, align 8
  %8 = load %struct.list_decoder*, %struct.list_decoder** %2, align 8
  %9 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %8, i32 0, i32 4
  store %struct.bitreader* %9, %struct.bitreader** %3, align 8
  %10 = load %struct.bitreader*, %struct.bitreader** %3, align 8
  %11 = getelementptr inbounds %struct.bitreader, %struct.bitreader* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %13 = load %struct.list_decoder*, %struct.list_decoder** %2, align 8
  %14 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  br label %16

16:                                               ; preds = %19, %1
  %17 = load i64, i64* @decode_cur_bit, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = load %struct.list_decoder*, %struct.list_decoder** %2, align 8
  %21 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %24, %22
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %6, align 4
  %27 = call i32 (...) @decode_load_bit()
  br label %16

28:                                               ; preds = %16
  %29 = call i32 (...) @decode_load_bit()
  %30 = load %struct.list_decoder*, %struct.list_decoder** %2, align 8
  %31 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %43, %28
  %34 = load i32, i32* %5, align 4
  %35 = shl i32 %34, 1
  store i32 %35, i32* %5, align 4
  %36 = load i64, i64* @decode_cur_bit, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %38, %33
  %42 = call i32 (...) @decode_load_bit()
  br label %43

43:                                               ; preds = %41
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %7, align 4
  %46 = icmp sgt i32 %45, 1
  br i1 %46, label %33, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.list_decoder*, %struct.list_decoder** %2, align 8
  %50 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = icmp sge i32 %48, %51
  br i1 %52, label %53, label %68

53:                                               ; preds = %47
  %54 = load i32, i32* %5, align 4
  %55 = shl i32 %54, 1
  store i32 %55, i32* %5, align 4
  %56 = load i64, i64* @decode_cur_bit, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %58, %53
  %62 = call i32 (...) @decode_load_bit()
  %63 = load %struct.list_decoder*, %struct.list_decoder** %2, align 8
  %64 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sub nsw i32 %66, %65
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %61, %47
  %69 = load i32, i32* %4, align 4
  %70 = load %struct.bitreader*, %struct.bitreader** %3, align 8
  %71 = getelementptr inbounds %struct.bitreader, %struct.bitreader* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %72, %73
  %75 = add nsw i32 %74, 1
  %76 = load %struct.list_decoder*, %struct.list_decoder** %2, align 8
  %77 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  ret i32 %75
}

declare dso_local i32 @decode_load_bit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
