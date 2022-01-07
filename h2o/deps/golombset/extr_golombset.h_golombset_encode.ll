; ModuleID = '/home/carl/AnghaBench/h2o/deps/golombset/extr_golombset.h_golombset_encode.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/golombset/extr_golombset.h_golombset_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_golombset_encode_t = type { i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*, i64, i8*, i64*)* @golombset_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @golombset_encode(i32 %0, i64* %1, i64 %2, i8* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.st_golombset_encode_t, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i64* %1, i64** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64* %4, i64** %11, align 8
  %15 = getelementptr inbounds %struct.st_golombset_encode_t, %struct.st_golombset_encode_t* %12, i32 0, i32 0
  %16 = load i8*, i8** %10, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 -1
  store i8* %17, i8** %15, align 8
  %18 = getelementptr inbounds %struct.st_golombset_encode_t, %struct.st_golombset_encode_t* %12, i32 0, i32 1
  %19 = load i8*, i8** %10, align 8
  %20 = load i64*, i64** %11, align 8
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  store i8* %22, i8** %18, align 8
  %23 = getelementptr inbounds %struct.st_golombset_encode_t, %struct.st_golombset_encode_t* %12, i32 0, i32 2
  store i8* null, i8** %23, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %13, align 8
  br label %24

24:                                               ; preds = %45, %5
  %25 = load i64, i64* %13, align 8
  %26 = load i64, i64* %9, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %48

28:                                               ; preds = %24
  %29 = load i32, i32* %7, align 4
  %30 = load i64*, i64** %8, align 8
  %31 = load i64, i64* %13, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %14, align 8
  %35 = sub nsw i64 %33, %34
  %36 = call i64 @golombset_encode_value(%struct.st_golombset_encode_t* %12, i32 %29, i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  store i32 -1, i32* %6, align 4
  br label %57

39:                                               ; preds = %28
  %40 = load i64*, i64** %8, align 8
  %41 = load i64, i64* %13, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %14, align 8
  br label %45

45:                                               ; preds = %39
  %46 = load i64, i64* %13, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %13, align 8
  br label %24

48:                                               ; preds = %24
  %49 = getelementptr inbounds %struct.st_golombset_encode_t, %struct.st_golombset_encode_t* %12, i32 0, i32 2
  %50 = load i8*, i8** %49, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  %52 = load i8*, i8** %10, align 8
  %53 = ptrtoint i8* %51 to i64
  %54 = ptrtoint i8* %52 to i64
  %55 = sub i64 %53, %54
  %56 = load i64*, i64** %11, align 8
  store i64 %55, i64* %56, align 8
  store i32 0, i32* %6, align 4
  br label %57

57:                                               ; preds = %48, %38
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local i64 @golombset_encode_value(%struct.st_golombset_encode_t*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
