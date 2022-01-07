; ModuleID = '/home/carl/AnghaBench/h2o/deps/klib/test/extr_khash_test.c_ht_init_data.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/klib/test/extr_khash_test.c_ht_init_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"--- generating data... \00", align 1
@data_size = common dso_local global i32 0, align 4
@int_data = common dso_local global i32* null, align 8
@str_data = common dso_local global i8** null, align 8
@UINT_MAX = common dso_local global double 0.000000e+00, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"done!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ht_init_data() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca i64, align 8
  store i64 11, i64* %3, align 8
  %4 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* @data_size, align 4
  %6 = call i64 @calloc(i32 %5, i32 4)
  %7 = inttoptr i64 %6 to i32*
  store i32* %7, i32** @int_data, align 8
  %8 = load i32, i32* @data_size, align 4
  %9 = call i64 @calloc(i32 %8, i32 8)
  %10 = inttoptr i64 %9 to i8**
  store i8** %10, i8*** @str_data, align 8
  store i32 0, i32* %1, align 4
  br label %11

11:                                               ; preds = %46, %0
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* @data_size, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %49

15:                                               ; preds = %11
  %16 = load i32, i32* @data_size, align 4
  %17 = sitofp i32 %16 to double
  %18 = load i64, i64* %3, align 8
  %19 = sitofp i64 %18 to double
  %20 = load double, double* @UINT_MAX, align 8
  %21 = fdiv double %19, %20
  %22 = fmul double %17, %21
  %23 = fdiv double %22, 4.000000e+00
  %24 = fptoui double %23 to i32
  %25 = mul i32 %24, 271828183
  %26 = load i32*, i32** @int_data, align 8
  %27 = load i32, i32* %1, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  store i32 %25, i32* %29, align 4
  %30 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %31 = load i32*, i32** @int_data, align 8
  %32 = load i32, i32* %1, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @sprintf(i8* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %38 = call i8* @strdup(i8* %37)
  %39 = load i8**, i8*** @str_data, align 8
  %40 = load i32, i32* %1, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  store i8* %38, i8** %42, align 8
  %43 = load i64, i64* %3, align 8
  %44 = mul nsw i64 1664525, %43
  %45 = add nsw i64 %44, 1013904223
  store i64 %45, i64* %3, align 8
  br label %46

46:                                               ; preds = %15
  %47 = load i32, i32* %1, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %1, align 4
  br label %11

49:                                               ; preds = %11
  %50 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
