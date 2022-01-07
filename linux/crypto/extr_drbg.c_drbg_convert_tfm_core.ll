; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_drbg.c_drbg_convert_tfm_core.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_drbg.c_drbg_convert_tfm_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [11 x i8] c"drbg_nopr_\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"drbg_pr_\00", align 1
@drbg_cores = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32*)* @drbg_convert_tfm_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drbg_convert_tfm_core(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32*, i32** %6, align 8
  store i32 1, i32* %10, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @memcmp(i8* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 10)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %3
  store i64 10, i64* %8, align 8
  %15 = load i32*, i32** %6, align 8
  store i32 0, i32* %15, align 4
  br label %23

16:                                               ; preds = %3
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @memcmp(i8* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  store i64 8, i64* %8, align 8
  br label %22

21:                                               ; preds = %16
  br label %54

22:                                               ; preds = %20
  br label %23

23:                                               ; preds = %22, %14
  %24 = load i8*, i8** %4, align 8
  %25 = call i64 @strlen(i8* %24)
  %26 = load i64, i64* %8, align 8
  %27 = sub i64 %25, %26
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %51, %23
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** @drbg_cores, align 8
  %31 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %30)
  %32 = load i32, i32* %7, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %54

34:                                               ; preds = %29
  %35 = load i8*, i8** %4, align 8
  %36 = load i64, i64* %8, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** @drbg_cores, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @memcmp(i8* %37, i8* %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %34
  %48 = load i32, i32* %7, align 4
  %49 = load i32*, i32** %5, align 8
  store i32 %48, i32* %49, align 4
  br label %54

50:                                               ; preds = %34
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %29

54:                                               ; preds = %21, %47, %29
  ret void
}

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
