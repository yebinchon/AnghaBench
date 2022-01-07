; ModuleID = '/home/carl/AnghaBench/git/extr_hashmap.c_memihash.c'
source_filename = "/home/carl/AnghaBench/git/extr_hashmap.c_memihash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FNV32_BASE = common dso_local global i32 0, align 4
@FNV32_PRIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memihash(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i32, i32* @FNV32_BASE, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i8*, i8** %3, align 8
  store i8* %9, i8** %6, align 8
  br label %10

10:                                               ; preds = %27, %2
  %11 = load i64, i64* %4, align 8
  %12 = add i64 %11, -1
  store i64 %12, i64* %4, align 8
  %13 = icmp ne i64 %11, 0
  br i1 %13, label %14, label %33

14:                                               ; preds = %10
  %15 = load i8*, i8** %6, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %6, align 8
  %17 = load i8, i8* %15, align 1
  %18 = zext i8 %17 to i32
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp uge i32 %19, 97
  br i1 %20, label %21, label %27

21:                                               ; preds = %14
  %22 = load i32, i32* %7, align 4
  %23 = icmp ule i32 %22, 122
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* %7, align 4
  %26 = sub i32 %25, 32
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %24, %21, %14
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @FNV32_PRIME, align 4
  %30 = mul i32 %28, %29
  %31 = load i32, i32* %7, align 4
  %32 = xor i32 %30, %31
  store i32 %32, i32* %5, align 4
  br label %10

33:                                               ; preds = %10
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
