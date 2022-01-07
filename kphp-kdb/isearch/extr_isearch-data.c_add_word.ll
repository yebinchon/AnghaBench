; ModuleID = '/home/carl/AnghaBench/kphp-kdb/isearch/extr_isearch-data.c_add_word.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/isearch/extr_isearch-data.c_add_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_5__ = type { i32 }

@H_ADD = common dso_local global i64 0, align 8
@h_word = common dso_local global i32 0, align 4
@wordn = common dso_local global i32 0, align 4
@wordr = common dso_local global i32 0, align 4
@words = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @add_word(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_4__, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* @H_ADD, align 8
  %7 = load i64, i64* %2, align 8
  %8 = add nsw i64 %7, %6
  store i64 %8, i64* %2, align 8
  %9 = load i64, i64* %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  store i64 %9, i64* %10, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  store i64 0, i64* %11, align 8
  %12 = bitcast %struct.TYPE_4__* %3 to { i64, i64 }*
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = call %struct.TYPE_5__* @hmap_ll_int_add(i32* @h_word, i64 %14, i64 %16)
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store i32* %18, i32** %4, align 8
  %19 = load i32, i32* @wordn, align 4
  %20 = add nsw i32 %19, 3
  %21 = load i32, i32* @wordr, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %1
  %24 = load i32, i32* @wordr, align 4
  %25 = mul nsw i32 %24, 2
  %26 = add nsw i32 %25, 3
  store i32 %26, i32* %5, align 4
  %27 = load i32*, i32** @words, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = mul i64 4, %29
  %31 = trunc i64 %30 to i32
  %32 = load i32, i32* @wordr, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 4, %33
  %35 = trunc i64 %34 to i32
  %36 = call i32* @dl_realloc(i32* %27, i32 %31, i32 %35)
  store i32* %36, i32** @words, align 8
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* @wordr, align 4
  br label %38

38:                                               ; preds = %23, %1
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %38
  %43 = load i32, i32* @wordn, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* @wordn, align 4
  %45 = load i32*, i32** %4, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i32*, i32** @words, align 8
  %47 = load i32, i32* @wordn, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @memset(i32 %50, i32 0, i32 4)
  br label %52

52:                                               ; preds = %42, %38
  %53 = load i32*, i32** %4, align 8
  %54 = load i32, i32* %53, align 4
  ret i32 %54
}

declare dso_local %struct.TYPE_5__* @hmap_ll_int_add(i32*, i64, i64) #1

declare dso_local i32* @dl_realloc(i32*, i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
