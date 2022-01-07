; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_tcabdb.c_get_iu64_min_max.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_tcabdb.c_get_iu64_min_max.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64*, i64*)* @get_iu64_min_max to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_iu64_min_max(i8* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i64 0, i64* %10, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @tcadbiterinit(i8* %13)
  br label %15

15:                                               ; preds = %54, %25, %3
  %16 = load i8*, i8** %4, align 8
  %17 = call i8* @tcadbiternext(i8* %16, i32* %8)
  store i8* %17, i8** %11, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %59

19:                                               ; preds = %15
  %20 = load i8*, i8** %4, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i8* @tcadbget(i8* %20, i8* %21, i32 %22, i32* %9)
  store i8* %23, i8** %12, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i8*, i8** %11, align 8
  %27 = call i32 @free(i8* %26)
  br label %15

28:                                               ; preds = %19
  %29 = load i8*, i8** %12, align 8
  %30 = bitcast i8* %29 to i64*
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %10, align 8
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %7, align 4
  %34 = icmp eq i32 %32, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i64, i64* %10, align 8
  %37 = load i64*, i64** %5, align 8
  store i64 %36, i64* %37, align 8
  br label %38

38:                                               ; preds = %35, %28
  %39 = load i64, i64* %10, align 8
  %40 = load i64*, i64** %6, align 8
  %41 = load i64, i64* %40, align 8
  %42 = icmp sgt i64 %39, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i64, i64* %10, align 8
  %45 = load i64*, i64** %6, align 8
  store i64 %44, i64* %45, align 8
  br label %46

46:                                               ; preds = %43, %38
  %47 = load i64, i64* %10, align 8
  %48 = load i64*, i64** %5, align 8
  %49 = load i64, i64* %48, align 8
  %50 = icmp slt i64 %47, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i64, i64* %10, align 8
  %53 = load i64*, i64** %5, align 8
  store i64 %52, i64* %53, align 8
  br label %54

54:                                               ; preds = %51, %46
  %55 = load i8*, i8** %11, align 8
  %56 = call i32 @free(i8* %55)
  %57 = load i8*, i8** %12, align 8
  %58 = call i32 @free(i8* %57)
  br label %15

59:                                               ; preds = %15
  ret void
}

declare dso_local i32 @tcadbiterinit(i8*) #1

declare dso_local i8* @tcadbiternext(i8*, i32*) #1

declare dso_local i8* @tcadbget(i8*, i8*, i32, i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
