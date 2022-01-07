; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/micro-ecc/extr_curve-specific.inc_vli_mmod_fast_secp192r1.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/micro-ecc/extr_curve-specific.inc_vli_mmod_fast_secp192r1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@num_words_secp192r1 = common dso_local global i32 0, align 4
@curve_secp192r1 = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64*)* @vli_mmod_fast_secp192r1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vli_mmod_fast_secp192r1(i64* %0, i64* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  store i64* %1, i64** %4, align 8
  %8 = load i32, i32* @num_words_secp192r1, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %5, align 8
  %11 = alloca i64, i64 %9, align 16
  store i64 %9, i64* %6, align 8
  %12 = load i64*, i64** %3, align 8
  %13 = load i64*, i64** %4, align 8
  %14 = load i32, i32* @num_words_secp192r1, align 4
  %15 = call i32 @uECC_vli_set(i64* %12, i64* %13, i32 %14)
  %16 = load i64*, i64** %4, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 3
  %18 = load i32, i32* @num_words_secp192r1, align 4
  %19 = call i32 @uECC_vli_set(i64* %11, i64* %17, i32 %18)
  %20 = load i64*, i64** %3, align 8
  %21 = load i64*, i64** %3, align 8
  %22 = load i32, i32* @num_words_secp192r1, align 4
  %23 = call i64 @uECC_vli_add(i64* %20, i64* %21, i64* %11, i32 %22)
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %7, align 4
  %25 = getelementptr inbounds i64, i64* %11, i64 0
  store i64 0, i64* %25, align 16
  %26 = load i64*, i64** %4, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 3
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i64, i64* %11, i64 1
  store i64 %28, i64* %29, align 8
  %30 = load i64*, i64** %4, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 4
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i64, i64* %11, i64 2
  store i64 %32, i64* %33, align 16
  %34 = load i64*, i64** %3, align 8
  %35 = load i64*, i64** %3, align 8
  %36 = load i32, i32* @num_words_secp192r1, align 4
  %37 = call i64 @uECC_vli_add(i64* %34, i64* %35, i64* %11, i32 %36)
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %39, %37
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %7, align 4
  %42 = load i64*, i64** %4, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 5
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds i64, i64* %11, i64 1
  store i64 %44, i64* %45, align 8
  %46 = getelementptr inbounds i64, i64* %11, i64 0
  store i64 %44, i64* %46, align 16
  %47 = getelementptr inbounds i64, i64* %11, i64 2
  store i64 0, i64* %47, align 16
  %48 = load i64*, i64** %3, align 8
  %49 = load i64*, i64** %3, align 8
  %50 = load i32, i32* @num_words_secp192r1, align 4
  %51 = call i64 @uECC_vli_add(i64* %48, i64* %49, i64* %11, i32 %50)
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %53, %51
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %67, %2
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @curve_secp192r1, i32 0, i32 0), align 4
  %61 = load i64*, i64** %3, align 8
  %62 = load i32, i32* @num_words_secp192r1, align 4
  %63 = call i32 @uECC_vli_cmp_unsafe(i32 %60, i64* %61, i32 %62)
  %64 = icmp ne i32 %63, 1
  br label %65

65:                                               ; preds = %59, %56
  %66 = phi i1 [ true, %56 ], [ %64, %59 ]
  br i1 %66, label %67, label %77

67:                                               ; preds = %65
  %68 = load i64*, i64** %3, align 8
  %69 = load i64*, i64** %3, align 8
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @curve_secp192r1, i32 0, i32 0), align 4
  %71 = load i32, i32* @num_words_secp192r1, align 4
  %72 = call i64 @uECC_vli_sub(i64* %68, i64* %69, i32 %70, i32 %71)
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = sub nsw i64 %74, %72
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %7, align 4
  br label %56

77:                                               ; preds = %65
  %78 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %78)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @uECC_vli_set(i64*, i64*, i32) #2

declare dso_local i64 @uECC_vli_add(i64*, i64*, i64*, i32) #2

declare dso_local i32 @uECC_vli_cmp_unsafe(i32, i64*, i32) #2

declare dso_local i64 @uECC_vli_sub(i64*, i64*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
