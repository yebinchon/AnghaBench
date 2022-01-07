; ModuleID = '/home/carl/AnghaBench/git/extr_pack-bitmap.c_rebuild_bitmap.c'
source_filename = "/home/carl/AnghaBench/git/extr_pack-bitmap.c_rebuild_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ewah_bitmap = type { i32 }
%struct.bitmap = type { i32 }
%struct.ewah_iterator = type { i32 }

@BITS_IN_EWORD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, %struct.ewah_bitmap*, %struct.bitmap*)* @rebuild_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rebuild_bitmap(i64* %0, %struct.ewah_bitmap* %1, %struct.bitmap* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca %struct.ewah_bitmap*, align 8
  %7 = alloca %struct.bitmap*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ewah_iterator, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store %struct.ewah_bitmap* %1, %struct.ewah_bitmap** %6, align 8
  store %struct.bitmap* %2, %struct.bitmap** %7, align 8
  store i64 0, i64* %8, align 8
  %13 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %6, align 8
  %14 = call i32 @ewah_iterator_init(%struct.ewah_iterator* %9, %struct.ewah_bitmap* %13)
  br label %15

15:                                               ; preds = %54, %3
  %16 = call i64 @ewah_iterator_next(i64* %10, %struct.ewah_iterator* %9)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %58

18:                                               ; preds = %15
  store i64 0, i64* %11, align 8
  br label %19

19:                                               ; preds = %51, %18
  %20 = load i64, i64* %11, align 8
  %21 = load i64, i64* @BITS_IN_EWORD, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %54

23:                                               ; preds = %19
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* %11, align 8
  %26 = lshr i64 %24, %25
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %54

29:                                               ; preds = %23
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* %11, align 8
  %32 = lshr i64 %30, %31
  %33 = call i64 @ewah_bit_ctz64(i64 %32)
  %34 = load i64, i64* %11, align 8
  %35 = add i64 %34, %33
  store i64 %35, i64* %11, align 8
  %36 = load i64*, i64** %5, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %11, align 8
  %39 = add i64 %37, %38
  %40 = getelementptr inbounds i64, i64* %36, i64 %39
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %12, align 8
  %42 = load i64, i64* %12, align 8
  %43 = icmp ugt i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %29
  %45 = load %struct.bitmap*, %struct.bitmap** %7, align 8
  %46 = load i64, i64* %12, align 8
  %47 = sub i64 %46, 1
  %48 = call i32 @bitmap_set(%struct.bitmap* %45, i64 %47)
  br label %50

49:                                               ; preds = %29
  store i32 -1, i32* %4, align 4
  br label %59

50:                                               ; preds = %44
  br label %51

51:                                               ; preds = %50
  %52 = load i64, i64* %11, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %11, align 8
  br label %19

54:                                               ; preds = %28, %19
  %55 = load i64, i64* @BITS_IN_EWORD, align 8
  %56 = load i64, i64* %8, align 8
  %57 = add i64 %56, %55
  store i64 %57, i64* %8, align 8
  br label %15

58:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %58, %49
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @ewah_iterator_init(%struct.ewah_iterator*, %struct.ewah_bitmap*) #1

declare dso_local i64 @ewah_iterator_next(i64*, %struct.ewah_iterator*) #1

declare dso_local i64 @ewah_bit_ctz64(i64) #1

declare dso_local i32 @bitmap_set(%struct.bitmap*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
