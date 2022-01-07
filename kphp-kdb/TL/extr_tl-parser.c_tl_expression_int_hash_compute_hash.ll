; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser.c_tl_expression_int_hash_compute_hash.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser.c_tl_expression_int_hash_compute_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_hashmap = type { i32 }
%struct.tl_expression = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tl_hashmap*, i8*, i32*, i32*)* @tl_expression_int_hash_compute_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tl_expression_int_hash_compute_hash(%struct.tl_hashmap* %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.tl_hashmap*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.tl_expression*, align 8
  store %struct.tl_hashmap* %0, %struct.tl_hashmap** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.tl_expression*
  store %struct.tl_expression* %11, %struct.tl_expression** %9, align 8
  %12 = load %struct.tl_expression*, %struct.tl_expression** %9, align 8
  %13 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = trunc i64 %14 to i32
  %16 = load %struct.tl_hashmap*, %struct.tl_hashmap** %5, align 8
  %17 = getelementptr inbounds %struct.tl_hashmap, %struct.tl_hashmap* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = urem i32 %15, %18
  %20 = load i32*, i32** %7, align 8
  store i32 %19, i32* %20, align 4
  %21 = load %struct.tl_expression*, %struct.tl_expression** %9, align 8
  %22 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = load %struct.tl_hashmap*, %struct.tl_hashmap** %5, align 8
  %26 = getelementptr inbounds %struct.tl_hashmap, %struct.tl_hashmap* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sub i32 %27, 1
  %29 = urem i32 %24, %28
  %30 = add i32 1, %29
  %31 = load i32*, i32** %8, align 8
  store i32 %30, i32* %31, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
