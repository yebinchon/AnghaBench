; ModuleID = '/home/carl/AnghaBench/git/t/helper/extr_test-hashmap.c_hash.c'
source_filename = "/home/carl/AnghaBench/git/t/helper/extr_test-hashmap.c_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HASH_METHOD_X2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*)* @hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hash(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %4, align 4
  %9 = and i32 %8, 3
  switch i32 %9, label %19 [
    i32 130, label %10
    i32 129, label %13
    i32 128, label %15
    i32 131, label %18
  ]

10:                                               ; preds = %3
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @strhash(i8* %11)
  store i32 %12, i32* %7, align 4
  br label %19

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %7, align 4
  br label %19

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = udiv i32 %16, 10
  store i32 %17, i32* %7, align 4
  br label %19

18:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %3, %18, %15, %13, %10
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @HASH_METHOD_X2, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* %7, align 4
  %26 = mul i32 2, %25
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %24, %19
  %28 = load i32, i32* %7, align 4
  ret i32 %28
}

declare dso_local i32 @strhash(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
