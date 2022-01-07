; ModuleID = '/home/carl/AnghaBench/libevent/sample/extr_hostcheck.c_Curl_raw_toupper.c'
source_filename = "/home/carl/AnghaBench/libevent/sample/extr_hostcheck.c_Curl_raw_toupper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i8)* @Curl_raw_toupper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @Curl_raw_toupper(i8 signext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  %4 = load i8, i8* %3, align 1
  %5 = sext i8 %4 to i32
  switch i32 %5, label %32 [
    i32 97, label %6
    i32 98, label %7
    i32 99, label %8
    i32 100, label %9
    i32 101, label %10
    i32 102, label %11
    i32 103, label %12
    i32 104, label %13
    i32 105, label %14
    i32 106, label %15
    i32 107, label %16
    i32 108, label %17
    i32 109, label %18
    i32 110, label %19
    i32 111, label %20
    i32 112, label %21
    i32 113, label %22
    i32 114, label %23
    i32 115, label %24
    i32 116, label %25
    i32 117, label %26
    i32 118, label %27
    i32 119, label %28
    i32 120, label %29
    i32 121, label %30
    i32 122, label %31
  ]

6:                                                ; preds = %1
  store i8 65, i8* %2, align 1
  br label %34

7:                                                ; preds = %1
  store i8 66, i8* %2, align 1
  br label %34

8:                                                ; preds = %1
  store i8 67, i8* %2, align 1
  br label %34

9:                                                ; preds = %1
  store i8 68, i8* %2, align 1
  br label %34

10:                                               ; preds = %1
  store i8 69, i8* %2, align 1
  br label %34

11:                                               ; preds = %1
  store i8 70, i8* %2, align 1
  br label %34

12:                                               ; preds = %1
  store i8 71, i8* %2, align 1
  br label %34

13:                                               ; preds = %1
  store i8 72, i8* %2, align 1
  br label %34

14:                                               ; preds = %1
  store i8 73, i8* %2, align 1
  br label %34

15:                                               ; preds = %1
  store i8 74, i8* %2, align 1
  br label %34

16:                                               ; preds = %1
  store i8 75, i8* %2, align 1
  br label %34

17:                                               ; preds = %1
  store i8 76, i8* %2, align 1
  br label %34

18:                                               ; preds = %1
  store i8 77, i8* %2, align 1
  br label %34

19:                                               ; preds = %1
  store i8 78, i8* %2, align 1
  br label %34

20:                                               ; preds = %1
  store i8 79, i8* %2, align 1
  br label %34

21:                                               ; preds = %1
  store i8 80, i8* %2, align 1
  br label %34

22:                                               ; preds = %1
  store i8 81, i8* %2, align 1
  br label %34

23:                                               ; preds = %1
  store i8 82, i8* %2, align 1
  br label %34

24:                                               ; preds = %1
  store i8 83, i8* %2, align 1
  br label %34

25:                                               ; preds = %1
  store i8 84, i8* %2, align 1
  br label %34

26:                                               ; preds = %1
  store i8 85, i8* %2, align 1
  br label %34

27:                                               ; preds = %1
  store i8 86, i8* %2, align 1
  br label %34

28:                                               ; preds = %1
  store i8 87, i8* %2, align 1
  br label %34

29:                                               ; preds = %1
  store i8 88, i8* %2, align 1
  br label %34

30:                                               ; preds = %1
  store i8 89, i8* %2, align 1
  br label %34

31:                                               ; preds = %1
  store i8 90, i8* %2, align 1
  br label %34

32:                                               ; preds = %1
  %33 = load i8, i8* %3, align 1
  store i8 %33, i8* %2, align 1
  br label %34

34:                                               ; preds = %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6
  %35 = load i8, i8* %2, align 1
  ret i8 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
