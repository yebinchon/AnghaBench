; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_norx.c_cf_norx32_decrypt.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_norx.c_cf_norx32_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cf_norx32_decrypt(i32* %0, i32* %1, i32* %2, i64 %3, i32* %4, i64 %5, i32* %6, i64 %7, i32* %8, i32* %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca [16 x i32], align 16
  %23 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32* %2, i32** %13, align 8
  store i64 %3, i64* %14, align 8
  store i32* %4, i32** %15, align 8
  store i64 %5, i64* %16, align 8
  store i32* %6, i32** %17, align 8
  store i64 %7, i64* %18, align 8
  store i32* %8, i32** %19, align 8
  store i32* %9, i32** %20, align 8
  %24 = load i32*, i32** %11, align 8
  %25 = load i32*, i32** %12, align 8
  %26 = call i32 @init(i32* %21, i32* %24, i32* %25)
  %27 = load i32*, i32** %13, align 8
  %28 = load i64, i64* %14, align 8
  %29 = call i32 @do_header(i32* %21, i32* %27, i64 %28)
  %30 = load i32*, i32** %15, align 8
  %31 = load i32*, i32** %20, align 8
  %32 = load i64, i64* %16, align 8
  %33 = call i32 @decrypt_body(i32* %21, i32* %30, i32* %31, i64 %32)
  %34 = load i32*, i32** %17, align 8
  %35 = load i64, i64* %18, align 8
  %36 = call i32 @do_trailer(i32* %21, i32* %34, i64 %35)
  %37 = getelementptr inbounds [16 x i32], [16 x i32]* %22, i64 0, i64 0
  %38 = call i32 @get_tag(i32* %21, i32* %37)
  store i32 0, i32* %23, align 4
  %39 = getelementptr inbounds [16 x i32], [16 x i32]* %22, i64 0, i64 0
  %40 = load i32*, i32** %19, align 8
  %41 = call i32 @mem_eq(i32* %39, i32* %40, i32 64)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %10
  store i32 1, i32* %23, align 4
  %44 = load i32*, i32** %20, align 8
  %45 = load i64, i64* %16, align 8
  %46 = trunc i64 %45 to i32
  %47 = call i32 @mem_clean(i32* %44, i32 %46)
  %48 = getelementptr inbounds [16 x i32], [16 x i32]* %22, i64 0, i64 0
  %49 = call i32 @mem_clean(i32* %48, i32 64)
  br label %50

50:                                               ; preds = %43, %10
  %51 = call i32 @mem_clean(i32* %21, i32 4)
  %52 = load i32, i32* %23, align 4
  ret i32 %52
}

declare dso_local i32 @init(i32*, i32*, i32*) #1

declare dso_local i32 @do_header(i32*, i32*, i64) #1

declare dso_local i32 @decrypt_body(i32*, i32*, i32*, i64) #1

declare dso_local i32 @do_trailer(i32*, i32*, i64) #1

declare dso_local i32 @get_tag(i32*, i32*) #1

declare dso_local i32 @mem_eq(i32*, i32*, i32) #1

declare dso_local i32 @mem_clean(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
