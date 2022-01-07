; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_xz_dec.c_dict_get.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_xz_dec.c_dict_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dictionary = type { i32, i64, i32*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dictionary*, i32)* @dict_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dict_get(%struct.dictionary* %0, i32 %1) #0 {
  %3 = alloca %struct.dictionary*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.dictionary* %0, %struct.dictionary** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.dictionary*, %struct.dictionary** %3, align 8
  %7 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sub nsw i32 %8, %9
  %11 = sub nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.dictionary*, %struct.dictionary** %3, align 8
  %15 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sge i32 %13, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.dictionary*, %struct.dictionary** %3, align 8
  %20 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = add i64 %22, %21
  store i64 %23, i64* %5, align 8
  br label %24

24:                                               ; preds = %18, %2
  %25 = load %struct.dictionary*, %struct.dictionary** %3, align 8
  %26 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load %struct.dictionary*, %struct.dictionary** %3, align 8
  %31 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* %5, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  br label %37

36:                                               ; preds = %24
  br label %37

37:                                               ; preds = %36, %29
  %38 = phi i32 [ %35, %29 ], [ 0, %36 ]
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
