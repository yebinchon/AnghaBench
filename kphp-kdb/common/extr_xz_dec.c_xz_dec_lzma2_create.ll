; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_xz_dec.c_xz_dec_lzma2_create.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_xz_dec.c_xz_dec_lzma2_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xz_dec_lzma2 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.xz_dec_lzma2* @xz_dec_lzma2_create(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.xz_dec_lzma2*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.xz_dec_lzma2*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = call %struct.xz_dec_lzma2* @calloc(i32 32, i32 1)
  store %struct.xz_dec_lzma2* %7, %struct.xz_dec_lzma2** %6, align 8
  %8 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %6, align 8
  %9 = icmp eq %struct.xz_dec_lzma2* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store %struct.xz_dec_lzma2* null, %struct.xz_dec_lzma2** %3, align 8
  br label %52

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %6, align 8
  %14 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 %12, i32* %15, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %6, align 8
  %18 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 3
  store i32 %16, i32* %19, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i64 @DEC_IS_PREALLOC(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %11
  %24 = load i32, i32* %5, align 4
  %25 = call i32* @malloc(i32 %24)
  %26 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %6, align 8
  %27 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  store i32* %25, i32** %28, align 8
  %29 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %6, align 8
  %30 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %23
  %35 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %6, align 8
  %36 = call i32 @free(%struct.xz_dec_lzma2* %35)
  store %struct.xz_dec_lzma2* null, %struct.xz_dec_lzma2** %3, align 8
  br label %52

37:                                               ; preds = %23
  br label %50

38:                                               ; preds = %11
  %39 = load i32, i32* %4, align 4
  %40 = call i64 @DEC_IS_DYNALLOC(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %6, align 8
  %44 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  store i32* null, i32** %45, align 8
  %46 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %6, align 8
  %47 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  store i64 0, i64* %48, align 8
  br label %49

49:                                               ; preds = %42, %38
  br label %50

50:                                               ; preds = %49, %37
  %51 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %6, align 8
  store %struct.xz_dec_lzma2* %51, %struct.xz_dec_lzma2** %3, align 8
  br label %52

52:                                               ; preds = %50, %34, %10
  %53 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %3, align 8
  ret %struct.xz_dec_lzma2* %53
}

declare dso_local %struct.xz_dec_lzma2* @calloc(i32, i32) #1

declare dso_local i64 @DEC_IS_PREALLOC(i32) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @free(%struct.xz_dec_lzma2*) #1

declare dso_local i64 @DEC_IS_DYNALLOC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
