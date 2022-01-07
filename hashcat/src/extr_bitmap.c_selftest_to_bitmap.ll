; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_bitmap.c_selftest_to_bitmap.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_bitmap.c_selftest_to_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i8*, i64, i64, i64, i64, i64, i64*, i64*, i64*, i64*)* @selftest_to_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @selftest_to_bitmap(i64 %0, i8* %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64* %7, i64* %8, i64* %9, i64* %10) #0 {
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i64*, align 8
  %22 = alloca i64*, align 8
  %23 = alloca i64*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  store i64 %0, i64* %12, align 8
  store i8* %1, i8** %13, align 8
  store i64 %2, i64* %14, align 8
  store i64 %3, i64* %15, align 8
  store i64 %4, i64* %16, align 8
  store i64 %5, i64* %17, align 8
  store i64 %6, i64* %18, align 8
  store i64* %7, i64** %19, align 8
  store i64* %8, i64** %20, align 8
  store i64* %9, i64** %21, align 8
  store i64* %10, i64** %22, align 8
  %32 = load i8*, i8** %13, align 8
  %33 = bitcast i8* %32 to i64*
  store i64* %33, i64** %23, align 8
  %34 = load i64*, i64** %23, align 8
  %35 = load i64, i64* %14, align 8
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = and i64 %37, 31
  %39 = trunc i64 %38 to i32
  %40 = shl i32 1, %39
  %41 = zext i32 %40 to i64
  store i64 %41, i64* %24, align 8
  %42 = load i64*, i64** %23, align 8
  %43 = load i64, i64* %15, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = and i64 %45, 31
  %47 = trunc i64 %46 to i32
  %48 = shl i32 1, %47
  %49 = zext i32 %48 to i64
  store i64 %49, i64* %25, align 8
  %50 = load i64*, i64** %23, align 8
  %51 = load i64, i64* %16, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = and i64 %53, 31
  %55 = trunc i64 %54 to i32
  %56 = shl i32 1, %55
  %57 = zext i32 %56 to i64
  store i64 %57, i64* %26, align 8
  %58 = load i64*, i64** %23, align 8
  %59 = load i64, i64* %17, align 8
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = and i64 %61, 31
  %63 = trunc i64 %62 to i32
  %64 = shl i32 1, %63
  %65 = zext i32 %64 to i64
  store i64 %65, i64* %27, align 8
  %66 = load i64*, i64** %23, align 8
  %67 = load i64, i64* %14, align 8
  %68 = getelementptr inbounds i64, i64* %66, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %12, align 8
  %71 = lshr i64 %69, %70
  %72 = load i64, i64* %18, align 8
  %73 = and i64 %71, %72
  store i64 %73, i64* %28, align 8
  %74 = load i64*, i64** %23, align 8
  %75 = load i64, i64* %15, align 8
  %76 = getelementptr inbounds i64, i64* %74, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %12, align 8
  %79 = lshr i64 %77, %78
  %80 = load i64, i64* %18, align 8
  %81 = and i64 %79, %80
  store i64 %81, i64* %29, align 8
  %82 = load i64*, i64** %23, align 8
  %83 = load i64, i64* %16, align 8
  %84 = getelementptr inbounds i64, i64* %82, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %12, align 8
  %87 = lshr i64 %85, %86
  %88 = load i64, i64* %18, align 8
  %89 = and i64 %87, %88
  store i64 %89, i64* %30, align 8
  %90 = load i64*, i64** %23, align 8
  %91 = load i64, i64* %17, align 8
  %92 = getelementptr inbounds i64, i64* %90, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %12, align 8
  %95 = lshr i64 %93, %94
  %96 = load i64, i64* %18, align 8
  %97 = and i64 %95, %96
  store i64 %97, i64* %31, align 8
  %98 = load i64, i64* %24, align 8
  %99 = load i64*, i64** %19, align 8
  %100 = load i64, i64* %28, align 8
  %101 = getelementptr inbounds i64, i64* %99, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = or i64 %102, %98
  store i64 %103, i64* %101, align 8
  %104 = load i64, i64* %25, align 8
  %105 = load i64*, i64** %20, align 8
  %106 = load i64, i64* %29, align 8
  %107 = getelementptr inbounds i64, i64* %105, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = or i64 %108, %104
  store i64 %109, i64* %107, align 8
  %110 = load i64, i64* %26, align 8
  %111 = load i64*, i64** %21, align 8
  %112 = load i64, i64* %30, align 8
  %113 = getelementptr inbounds i64, i64* %111, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = or i64 %114, %110
  store i64 %115, i64* %113, align 8
  %116 = load i64, i64* %27, align 8
  %117 = load i64*, i64** %22, align 8
  %118 = load i64, i64* %31, align 8
  %119 = getelementptr inbounds i64, i64* %117, i64 %118
  %120 = load i64, i64* %119, align 8
  %121 = or i64 %120, %116
  store i64 %121, i64* %119, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
