; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/crypto/extr_camellia_glue.c_camellia_setup128.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/crypto/extr_camellia_glue.c_camellia_setup128.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CAMELLIA_SIGMA1L = common dso_local global i32 0, align 4
@CAMELLIA_SIGMA1R = common dso_local global i32 0, align 4
@CAMELLIA_SIGMA2L = common dso_local global i32 0, align 4
@CAMELLIA_SIGMA2R = common dso_local global i32 0, align 4
@CAMELLIA_SIGMA3L = common dso_local global i32 0, align 4
@CAMELLIA_SIGMA3R = common dso_local global i32 0, align 4
@CAMELLIA_SIGMA4L = common dso_local global i32 0, align 4
@CAMELLIA_SIGMA4R = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @camellia_setup128 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @camellia_setup128(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [26 x i32], align 16
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i32 @get_unaligned_be64(i8* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i8*, i8** %3, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 8
  %13 = call i32 @get_unaligned_be64(i8* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  %15 = getelementptr inbounds [26 x i32], [26 x i32]* %8, i64 0, i64 0
  store i32 %14, i32* %15, align 16
  %16 = load i32, i32* %6, align 4
  %17 = getelementptr inbounds [26 x i32], [26 x i32]* %8, i64 0, i64 1
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @ROLDQ(i32 %18, i32 %19, i32 15)
  %21 = load i32, i32* %5, align 4
  %22 = getelementptr inbounds [26 x i32], [26 x i32]* %8, i64 0, i64 4
  store i32 %21, i32* %22, align 16
  %23 = load i32, i32* %6, align 4
  %24 = getelementptr inbounds [26 x i32], [26 x i32]* %8, i64 0, i64 5
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @ROLDQ(i32 %25, i32 %26, i32 30)
  %28 = load i32, i32* %5, align 4
  %29 = getelementptr inbounds [26 x i32], [26 x i32]* %8, i64 0, i64 10
  store i32 %28, i32* %29, align 8
  %30 = load i32, i32* %6, align 4
  %31 = getelementptr inbounds [26 x i32], [26 x i32]* %8, i64 0, i64 11
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @ROLDQ(i32 %32, i32 %33, i32 15)
  %35 = load i32, i32* %6, align 4
  %36 = getelementptr inbounds [26 x i32], [26 x i32]* %8, i64 0, i64 13
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @ROLDQ(i32 %37, i32 %38, i32 17)
  %40 = load i32, i32* %5, align 4
  %41 = getelementptr inbounds [26 x i32], [26 x i32]* %8, i64 0, i64 16
  store i32 %40, i32* %41, align 16
  %42 = load i32, i32* %6, align 4
  %43 = getelementptr inbounds [26 x i32], [26 x i32]* %8, i64 0, i64 17
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @ROLDQ(i32 %44, i32 %45, i32 17)
  %47 = load i32, i32* %5, align 4
  %48 = getelementptr inbounds [26 x i32], [26 x i32]* %8, i64 0, i64 18
  store i32 %47, i32* %48, align 8
  %49 = load i32, i32* %6, align 4
  %50 = getelementptr inbounds [26 x i32], [26 x i32]* %8, i64 0, i64 19
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @ROLDQ(i32 %51, i32 %52, i32 17)
  %54 = load i32, i32* %5, align 4
  %55 = getelementptr inbounds [26 x i32], [26 x i32]* %8, i64 0, i64 22
  store i32 %54, i32* %55, align 8
  %56 = load i32, i32* %6, align 4
  %57 = getelementptr inbounds [26 x i32], [26 x i32]* %8, i64 0, i64 23
  store i32 %56, i32* %57, align 4
  %58 = getelementptr inbounds [26 x i32], [26 x i32]* %8, i64 0, i64 0
  %59 = load i32, i32* %58, align 16
  store i32 %59, i32* %5, align 4
  %60 = getelementptr inbounds [26 x i32], [26 x i32]* %8, i64 0, i64 1
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @CAMELLIA_SIGMA1L, align 4
  %64 = load i32, i32* @CAMELLIA_SIGMA1R, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @CAMELLIA_F(i32 %62, i32 %63, i32 %64, i32 %65)
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %6, align 4
  %69 = xor i32 %68, %67
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @CAMELLIA_SIGMA2L, align 4
  %72 = load i32, i32* @CAMELLIA_SIGMA2R, align 4
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @CAMELLIA_F(i32 %70, i32 %71, i32 %72, i32 %73)
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @CAMELLIA_SIGMA3L, align 4
  %77 = load i32, i32* @CAMELLIA_SIGMA3R, align 4
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @CAMELLIA_F(i32 %75, i32 %76, i32 %77, i32 %78)
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %6, align 4
  %82 = xor i32 %81, %80
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @CAMELLIA_SIGMA4L, align 4
  %85 = load i32, i32* @CAMELLIA_SIGMA4R, align 4
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @CAMELLIA_F(i32 %83, i32 %84, i32 %85, i32 %86)
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %5, align 4
  %90 = xor i32 %89, %88
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %5, align 4
  %92 = getelementptr inbounds [26 x i32], [26 x i32]* %8, i64 0, i64 2
  store i32 %91, i32* %92, align 8
  %93 = load i32, i32* %6, align 4
  %94 = getelementptr inbounds [26 x i32], [26 x i32]* %8, i64 0, i64 3
  store i32 %93, i32* %94, align 4
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @ROLDQ(i32 %95, i32 %96, i32 15)
  %98 = load i32, i32* %5, align 4
  %99 = getelementptr inbounds [26 x i32], [26 x i32]* %8, i64 0, i64 6
  store i32 %98, i32* %99, align 8
  %100 = load i32, i32* %6, align 4
  %101 = getelementptr inbounds [26 x i32], [26 x i32]* %8, i64 0, i64 7
  store i32 %100, i32* %101, align 4
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @ROLDQ(i32 %102, i32 %103, i32 15)
  %105 = load i32, i32* %5, align 4
  %106 = getelementptr inbounds [26 x i32], [26 x i32]* %8, i64 0, i64 8
  store i32 %105, i32* %106, align 16
  %107 = load i32, i32* %6, align 4
  %108 = getelementptr inbounds [26 x i32], [26 x i32]* %8, i64 0, i64 9
  store i32 %107, i32* %108, align 4
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @ROLDQ(i32 %109, i32 %110, i32 15)
  %112 = load i32, i32* %5, align 4
  %113 = getelementptr inbounds [26 x i32], [26 x i32]* %8, i64 0, i64 12
  store i32 %112, i32* %113, align 16
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* %6, align 4
  %116 = call i32 @ROLDQ(i32 %114, i32 %115, i32 15)
  %117 = load i32, i32* %5, align 4
  %118 = getelementptr inbounds [26 x i32], [26 x i32]* %8, i64 0, i64 14
  store i32 %117, i32* %118, align 8
  %119 = load i32, i32* %6, align 4
  %120 = getelementptr inbounds [26 x i32], [26 x i32]* %8, i64 0, i64 15
  store i32 %119, i32* %120, align 4
  %121 = load i32, i32* %5, align 4
  %122 = load i32, i32* %6, align 4
  %123 = call i32 @ROLDQ(i32 %121, i32 %122, i32 34)
  %124 = load i32, i32* %5, align 4
  %125 = getelementptr inbounds [26 x i32], [26 x i32]* %8, i64 0, i64 20
  store i32 %124, i32* %125, align 16
  %126 = load i32, i32* %6, align 4
  %127 = getelementptr inbounds [26 x i32], [26 x i32]* %8, i64 0, i64 21
  store i32 %126, i32* %127, align 4
  %128 = load i32, i32* %5, align 4
  %129 = load i32, i32* %6, align 4
  %130 = call i32 @ROLDQ(i32 %128, i32 %129, i32 17)
  %131 = load i32, i32* %5, align 4
  %132 = getelementptr inbounds [26 x i32], [26 x i32]* %8, i64 0, i64 24
  store i32 %131, i32* %132, align 16
  %133 = load i32, i32* %6, align 4
  %134 = getelementptr inbounds [26 x i32], [26 x i32]* %8, i64 0, i64 25
  store i32 %133, i32* %134, align 4
  %135 = load i32*, i32** %4, align 8
  %136 = getelementptr inbounds [26 x i32], [26 x i32]* %8, i64 0, i64 0
  %137 = call i32 @camellia_setup_tail(i32* %135, i32* %136, i32 24)
  ret void
}

declare dso_local i32 @get_unaligned_be64(i8*) #1

declare dso_local i32 @ROLDQ(i32, i32, i32) #1

declare dso_local i32 @CAMELLIA_F(i32, i32, i32, i32) #1

declare dso_local i32 @camellia_setup_tail(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
