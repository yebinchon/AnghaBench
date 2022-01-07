; ModuleID = '/home/carl/AnghaBench/h2o/deps/golombset/extr_golombset.h_golombset_decode.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/golombset/extr_golombset.h_golombset_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_golombset_decode_t = type { i8*, i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i64, i64*, i64*)* @golombset_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @golombset_decode(i32 %0, i8* %1, i64 %2, i64* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.st_golombset_decode_t, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  %16 = getelementptr inbounds %struct.st_golombset_decode_t, %struct.st_golombset_decode_t* %12, i32 0, i32 0
  %17 = load i8*, i8** %8, align 8
  store i8* %17, i8** %16, align 8
  %18 = getelementptr inbounds %struct.st_golombset_decode_t, %struct.st_golombset_decode_t* %12, i32 0, i32 1
  %19 = load i8*, i8** %8, align 8
  %20 = load i64, i64* %9, align 8
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  store i8* %21, i8** %18, align 8
  %22 = getelementptr inbounds %struct.st_golombset_decode_t, %struct.st_golombset_decode_t* %12, i32 0, i32 2
  store i32 8, i32* %22, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  br label %23

23:                                               ; preds = %5, %34
  %24 = load i32, i32* %7, align 4
  %25 = call i64 @golombset_decode_value(%struct.st_golombset_decode_t* %12, i32 %24, i64* %15)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %45

28:                                               ; preds = %23
  %29 = load i64, i64* %13, align 8
  %30 = load i64*, i64** %11, align 8
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %29, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 -1, i32* %6, align 4
  br label %48

34:                                               ; preds = %28
  %35 = load i64, i64* %14, align 8
  %36 = load i64, i64* %15, align 8
  %37 = add nsw i64 %36, %35
  store i64 %37, i64* %15, align 8
  %38 = load i64, i64* %15, align 8
  %39 = load i64*, i64** %10, align 8
  %40 = load i64, i64* %13, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %13, align 8
  %42 = getelementptr inbounds i64, i64* %39, i64 %40
  store i64 %38, i64* %42, align 8
  %43 = load i64, i64* %15, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %14, align 8
  br label %23

45:                                               ; preds = %27
  %46 = load i64, i64* %13, align 8
  %47 = load i64*, i64** %11, align 8
  store i64 %46, i64* %47, align 8
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %45, %33
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local i64 @golombset_decode_value(%struct.st_golombset_decode_t*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
