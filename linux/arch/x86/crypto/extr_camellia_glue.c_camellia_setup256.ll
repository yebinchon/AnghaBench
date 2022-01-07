; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/crypto/extr_camellia_glue.c_camellia_setup256.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/crypto/extr_camellia_glue.c_camellia_setup256.c"
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
@CAMELLIA_SIGMA5L = common dso_local global i32 0, align 4
@CAMELLIA_SIGMA5R = common dso_local global i32 0, align 4
@CAMELLIA_SIGMA6L = common dso_local global i32 0, align 4
@CAMELLIA_SIGMA6R = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @camellia_setup256 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @camellia_setup256(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [34 x i32], align 16
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 @get_unaligned_be64(i8* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 8
  %15 = call i32 @get_unaligned_be64(i8* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i8*, i8** %3, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 16
  %18 = call i32 @get_unaligned_be64(i8* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i8*, i8** %3, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 24
  %21 = call i32 @get_unaligned_be64(i8* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %5, align 4
  %23 = getelementptr inbounds [34 x i32], [34 x i32]* %10, i64 0, i64 0
  store i32 %22, i32* %23, align 16
  %24 = load i32, i32* %6, align 4
  %25 = getelementptr inbounds [34 x i32], [34 x i32]* %10, i64 0, i64 1
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @ROLDQ(i32 %26, i32 %27, i32 45)
  %29 = load i32, i32* %5, align 4
  %30 = getelementptr inbounds [34 x i32], [34 x i32]* %10, i64 0, i64 12
  store i32 %29, i32* %30, align 16
  %31 = load i32, i32* %6, align 4
  %32 = getelementptr inbounds [34 x i32], [34 x i32]* %10, i64 0, i64 13
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @ROLDQ(i32 %33, i32 %34, i32 15)
  %36 = load i32, i32* %5, align 4
  %37 = getelementptr inbounds [34 x i32], [34 x i32]* %10, i64 0, i64 16
  store i32 %36, i32* %37, align 16
  %38 = load i32, i32* %6, align 4
  %39 = getelementptr inbounds [34 x i32], [34 x i32]* %10, i64 0, i64 17
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @ROLDQ(i32 %40, i32 %41, i32 17)
  %43 = load i32, i32* %5, align 4
  %44 = getelementptr inbounds [34 x i32], [34 x i32]* %10, i64 0, i64 22
  store i32 %43, i32* %44, align 8
  %45 = load i32, i32* %6, align 4
  %46 = getelementptr inbounds [34 x i32], [34 x i32]* %10, i64 0, i64 23
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @ROLDQ(i32 %47, i32 %48, i32 34)
  %50 = load i32, i32* %5, align 4
  %51 = getelementptr inbounds [34 x i32], [34 x i32]* %10, i64 0, i64 30
  store i32 %50, i32* %51, align 8
  %52 = load i32, i32* %6, align 4
  %53 = getelementptr inbounds [34 x i32], [34 x i32]* %10, i64 0, i64 31
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @ROLDQ(i32 %54, i32 %55, i32 15)
  %57 = load i32, i32* %7, align 4
  %58 = getelementptr inbounds [34 x i32], [34 x i32]* %10, i64 0, i64 4
  store i32 %57, i32* %58, align 16
  %59 = load i32, i32* %8, align 4
  %60 = getelementptr inbounds [34 x i32], [34 x i32]* %10, i64 0, i64 5
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @ROLDQ(i32 %61, i32 %62, i32 15)
  %64 = load i32, i32* %7, align 4
  %65 = getelementptr inbounds [34 x i32], [34 x i32]* %10, i64 0, i64 8
  store i32 %64, i32* %65, align 16
  %66 = load i32, i32* %8, align 4
  %67 = getelementptr inbounds [34 x i32], [34 x i32]* %10, i64 0, i64 9
  store i32 %66, i32* %67, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @ROLDQ(i32 %68, i32 %69, i32 30)
  %71 = load i32, i32* %7, align 4
  %72 = getelementptr inbounds [34 x i32], [34 x i32]* %10, i64 0, i64 18
  store i32 %71, i32* %72, align 8
  %73 = load i32, i32* %8, align 4
  %74 = getelementptr inbounds [34 x i32], [34 x i32]* %10, i64 0, i64 19
  store i32 %73, i32* %74, align 4
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @ROLDQ(i32 %75, i32 %76, i32 34)
  %78 = load i32, i32* %7, align 4
  %79 = getelementptr inbounds [34 x i32], [34 x i32]* %10, i64 0, i64 26
  store i32 %78, i32* %79, align 8
  %80 = load i32, i32* %8, align 4
  %81 = getelementptr inbounds [34 x i32], [34 x i32]* %10, i64 0, i64 27
  store i32 %80, i32* %81, align 4
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @ROLDQ(i32 %82, i32 %83, i32 34)
  %85 = getelementptr inbounds [34 x i32], [34 x i32]* %10, i64 0, i64 0
  %86 = load i32, i32* %85, align 16
  %87 = load i32, i32* %7, align 4
  %88 = xor i32 %86, %87
  store i32 %88, i32* %5, align 4
  %89 = getelementptr inbounds [34 x i32], [34 x i32]* %10, i64 0, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %8, align 4
  %92 = xor i32 %90, %91
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* @CAMELLIA_SIGMA1L, align 4
  %95 = load i32, i32* @CAMELLIA_SIGMA1R, align 4
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @CAMELLIA_F(i32 %93, i32 %94, i32 %95, i32 %96)
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* %6, align 4
  %100 = xor i32 %99, %98
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* @CAMELLIA_SIGMA2L, align 4
  %103 = load i32, i32* @CAMELLIA_SIGMA2R, align 4
  %104 = load i32, i32* %5, align 4
  %105 = call i32 @CAMELLIA_F(i32 %101, i32 %102, i32 %103, i32 %104)
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* %5, align 4
  %108 = xor i32 %107, %106
  store i32 %108, i32* %5, align 4
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* @CAMELLIA_SIGMA3L, align 4
  %111 = load i32, i32* @CAMELLIA_SIGMA3R, align 4
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @CAMELLIA_F(i32 %109, i32 %110, i32 %111, i32 %112)
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* %8, align 4
  %116 = xor i32 %114, %115
  %117 = load i32, i32* %6, align 4
  %118 = xor i32 %117, %116
  store i32 %118, i32* %6, align 4
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* @CAMELLIA_SIGMA4L, align 4
  %121 = load i32, i32* @CAMELLIA_SIGMA4R, align 4
  %122 = load i32, i32* %9, align 4
  %123 = call i32 @CAMELLIA_F(i32 %119, i32 %120, i32 %121, i32 %122)
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* %5, align 4
  %126 = xor i32 %125, %124
  store i32 %126, i32* %5, align 4
  %127 = load i32, i32* %5, align 4
  %128 = load i32, i32* %7, align 4
  %129 = xor i32 %128, %127
  store i32 %129, i32* %7, align 4
  %130 = load i32, i32* %6, align 4
  %131 = load i32, i32* %8, align 4
  %132 = xor i32 %131, %130
  store i32 %132, i32* %8, align 4
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* @CAMELLIA_SIGMA5L, align 4
  %135 = load i32, i32* @CAMELLIA_SIGMA5R, align 4
  %136 = load i32, i32* %9, align 4
  %137 = call i32 @CAMELLIA_F(i32 %133, i32 %134, i32 %135, i32 %136)
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* %8, align 4
  %140 = xor i32 %139, %138
  store i32 %140, i32* %8, align 4
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* @CAMELLIA_SIGMA6L, align 4
  %143 = load i32, i32* @CAMELLIA_SIGMA6R, align 4
  %144 = load i32, i32* %9, align 4
  %145 = call i32 @CAMELLIA_F(i32 %141, i32 %142, i32 %143, i32 %144)
  %146 = load i32, i32* %9, align 4
  %147 = load i32, i32* %7, align 4
  %148 = xor i32 %147, %146
  store i32 %148, i32* %7, align 4
  %149 = load i32, i32* %5, align 4
  %150 = load i32, i32* %6, align 4
  %151 = call i32 @ROLDQ(i32 %149, i32 %150, i32 15)
  %152 = load i32, i32* %5, align 4
  %153 = getelementptr inbounds [34 x i32], [34 x i32]* %10, i64 0, i64 6
  store i32 %152, i32* %153, align 8
  %154 = load i32, i32* %6, align 4
  %155 = getelementptr inbounds [34 x i32], [34 x i32]* %10, i64 0, i64 7
  store i32 %154, i32* %155, align 4
  %156 = load i32, i32* %5, align 4
  %157 = load i32, i32* %6, align 4
  %158 = call i32 @ROLDQ(i32 %156, i32 %157, i32 30)
  %159 = load i32, i32* %5, align 4
  %160 = getelementptr inbounds [34 x i32], [34 x i32]* %10, i64 0, i64 14
  store i32 %159, i32* %160, align 8
  %161 = load i32, i32* %6, align 4
  %162 = getelementptr inbounds [34 x i32], [34 x i32]* %10, i64 0, i64 15
  store i32 %161, i32* %162, align 4
  %163 = load i32, i32* %5, align 4
  %164 = load i32, i32* %6, align 4
  %165 = call i32 @ROLDQ(i32 %163, i32 %164, i32 32)
  %166 = load i32, i32* %5, align 4
  %167 = getelementptr inbounds [34 x i32], [34 x i32]* %10, i64 0, i64 24
  store i32 %166, i32* %167, align 16
  %168 = load i32, i32* %6, align 4
  %169 = getelementptr inbounds [34 x i32], [34 x i32]* %10, i64 0, i64 25
  store i32 %168, i32* %169, align 4
  %170 = load i32, i32* %5, align 4
  %171 = load i32, i32* %6, align 4
  %172 = call i32 @ROLDQ(i32 %170, i32 %171, i32 17)
  %173 = load i32, i32* %5, align 4
  %174 = getelementptr inbounds [34 x i32], [34 x i32]* %10, i64 0, i64 28
  store i32 %173, i32* %174, align 16
  %175 = load i32, i32* %6, align 4
  %176 = getelementptr inbounds [34 x i32], [34 x i32]* %10, i64 0, i64 29
  store i32 %175, i32* %176, align 4
  %177 = load i32, i32* %7, align 4
  %178 = getelementptr inbounds [34 x i32], [34 x i32]* %10, i64 0, i64 2
  store i32 %177, i32* %178, align 8
  %179 = load i32, i32* %8, align 4
  %180 = getelementptr inbounds [34 x i32], [34 x i32]* %10, i64 0, i64 3
  store i32 %179, i32* %180, align 4
  %181 = load i32, i32* %7, align 4
  %182 = load i32, i32* %8, align 4
  %183 = call i32 @ROLDQ(i32 %181, i32 %182, i32 30)
  %184 = load i32, i32* %7, align 4
  %185 = getelementptr inbounds [34 x i32], [34 x i32]* %10, i64 0, i64 10
  store i32 %184, i32* %185, align 8
  %186 = load i32, i32* %8, align 4
  %187 = getelementptr inbounds [34 x i32], [34 x i32]* %10, i64 0, i64 11
  store i32 %186, i32* %187, align 4
  %188 = load i32, i32* %7, align 4
  %189 = load i32, i32* %8, align 4
  %190 = call i32 @ROLDQ(i32 %188, i32 %189, i32 30)
  %191 = load i32, i32* %7, align 4
  %192 = getelementptr inbounds [34 x i32], [34 x i32]* %10, i64 0, i64 20
  store i32 %191, i32* %192, align 16
  %193 = load i32, i32* %8, align 4
  %194 = getelementptr inbounds [34 x i32], [34 x i32]* %10, i64 0, i64 21
  store i32 %193, i32* %194, align 4
  %195 = load i32, i32* %7, align 4
  %196 = load i32, i32* %8, align 4
  %197 = call i32 @ROLDQ(i32 %195, i32 %196, i32 51)
  %198 = load i32, i32* %7, align 4
  %199 = getelementptr inbounds [34 x i32], [34 x i32]* %10, i64 0, i64 32
  store i32 %198, i32* %199, align 16
  %200 = load i32, i32* %8, align 4
  %201 = getelementptr inbounds [34 x i32], [34 x i32]* %10, i64 0, i64 33
  store i32 %200, i32* %201, align 4
  %202 = load i32*, i32** %4, align 8
  %203 = getelementptr inbounds [34 x i32], [34 x i32]* %10, i64 0, i64 0
  %204 = call i32 @camellia_setup_tail(i32* %202, i32* %203, i32 32)
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
