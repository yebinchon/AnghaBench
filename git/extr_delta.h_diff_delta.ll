; ModuleID = '/home/carl/AnghaBench/git/extr_delta.h_diff_delta.c'
source_filename = "/home/carl/AnghaBench/git/extr_delta.h_diff_delta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delta_index = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64, i8*, i64, i64*, i64)* @diff_delta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @diff_delta(i8* %0, i64 %1, i8* %2, i64 %3, i64* %4, i64 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.delta_index*, align 8
  %15 = alloca i8*, align 8
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64* %4, i64** %12, align 8
  store i64 %5, i64* %13, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = load i64, i64* %9, align 8
  %18 = call %struct.delta_index* @create_delta_index(i8* %16, i64 %17)
  store %struct.delta_index* %18, %struct.delta_index** %14, align 8
  %19 = load %struct.delta_index*, %struct.delta_index** %14, align 8
  %20 = icmp ne %struct.delta_index* %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %6
  %22 = load %struct.delta_index*, %struct.delta_index** %14, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = load i64, i64* %11, align 8
  %25 = load i64*, i64** %12, align 8
  %26 = load i64, i64* %13, align 8
  %27 = call i8* @create_delta(%struct.delta_index* %22, i8* %23, i64 %24, i64* %25, i64 %26)
  store i8* %27, i8** %15, align 8
  %28 = load %struct.delta_index*, %struct.delta_index** %14, align 8
  %29 = call i32 @free_delta_index(%struct.delta_index* %28)
  %30 = load i8*, i8** %15, align 8
  store i8* %30, i8** %7, align 8
  br label %32

31:                                               ; preds = %6
  store i8* null, i8** %7, align 8
  br label %32

32:                                               ; preds = %31, %21
  %33 = load i8*, i8** %7, align 8
  ret i8* %33
}

declare dso_local %struct.delta_index* @create_delta_index(i8*, i64) #1

declare dso_local i8* @create_delta(%struct.delta_index*, i8*, i64, i64*, i64) #1

declare dso_local i32 @free_delta_index(%struct.delta_index*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
