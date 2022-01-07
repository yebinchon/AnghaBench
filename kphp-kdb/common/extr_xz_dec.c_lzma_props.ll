; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_xz_dec.c_lzma_props.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_xz_dec.c_lzma_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xz_dec_lzma2 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.xz_dec_lzma2*, i32)* @lzma_props to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @lzma_props(%struct.xz_dec_lzma2* %0, i32 %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.xz_dec_lzma2*, align 8
  %5 = alloca i32, align 4
  store %struct.xz_dec_lzma2* %0, %struct.xz_dec_lzma2** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp sgt i32 %6, 224
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i8 0, i8* %3, align 1
  br label %76

9:                                                ; preds = %2
  %10 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %11 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i32 0, i32* %12, align 4
  br label %13

13:                                               ; preds = %16, %9
  %14 = load i32, i32* %5, align 4
  %15 = icmp sge i32 %14, 45
  br i1 %15, label %16, label %24

16:                                               ; preds = %13
  %17 = load i32, i32* %5, align 4
  %18 = sub nsw i32 %17, 45
  store i32 %18, i32* %5, align 4
  %19 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %20 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  br label %13

24:                                               ; preds = %13
  %25 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %26 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 1, %28
  %30 = sub nsw i32 %29, 1
  %31 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %32 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 4
  %34 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %35 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i32 0, i32* %36, align 4
  br label %37

37:                                               ; preds = %40, %24
  %38 = load i32, i32* %5, align 4
  %39 = icmp sge i32 %38, 9
  br i1 %39, label %40, label %48

40:                                               ; preds = %37
  %41 = load i32, i32* %5, align 4
  %42 = sub nsw i32 %41, 9
  store i32 %42, i32* %5, align 4
  %43 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %44 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  br label %37

48:                                               ; preds = %37
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %51 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  store i32 %49, i32* %52, align 4
  %53 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %54 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %58 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %56, %60
  %62 = icmp sgt i32 %61, 4
  br i1 %62, label %63, label %64

63:                                               ; preds = %48
  store i8 0, i8* %3, align 1
  br label %76

64:                                               ; preds = %48
  %65 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %66 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = shl i32 1, %68
  %70 = sub nsw i32 %69, 1
  %71 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %72 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  store i32 %70, i32* %73, align 4
  %74 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %4, align 8
  %75 = call i32 @lzma_reset(%struct.xz_dec_lzma2* %74)
  store i8 1, i8* %3, align 1
  br label %76

76:                                               ; preds = %64, %63, %8
  %77 = load i8, i8* %3, align 1
  ret i8 %77
}

declare dso_local i32 @lzma_reset(%struct.xz_dec_lzma2*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
