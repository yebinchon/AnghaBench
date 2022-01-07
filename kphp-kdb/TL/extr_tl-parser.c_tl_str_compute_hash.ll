; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser.c_tl_str_compute_hash.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser.c_tl_str_compute_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_hashmap = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tl_hashmap*, i8*, i32*, i32*)* @tl_str_compute_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tl_str_compute_hash(%struct.tl_hashmap* %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.tl_hashmap*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tl_hashmap* %0, %struct.tl_hashmap** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %15, %4
  %12 = load i8*, i8** %6, align 8
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %11
  %16 = load i32, i32* %9, align 4
  %17 = mul i32 239, %16
  %18 = load i8*, i8** %6, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = add i32 %17, %20
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %10, align 4
  %23 = mul i32 3, %22
  %24 = load i8*, i8** %6, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = add i32 %23, %26
  store i32 %27, i32* %10, align 4
  %28 = load i8*, i8** %6, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %6, align 8
  br label %11

30:                                               ; preds = %11
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.tl_hashmap*, %struct.tl_hashmap** %5, align 8
  %33 = getelementptr inbounds %struct.tl_hashmap, %struct.tl_hashmap* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = urem i32 %31, %34
  %36 = load i32*, i32** %7, align 8
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.tl_hashmap*, %struct.tl_hashmap** %5, align 8
  %39 = getelementptr inbounds %struct.tl_hashmap, %struct.tl_hashmap* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sub i32 %40, 1
  %42 = urem i32 %37, %41
  %43 = add i32 1, %42
  %44 = load i32*, i32** %8, align 8
  store i32 %43, i32* %44, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
