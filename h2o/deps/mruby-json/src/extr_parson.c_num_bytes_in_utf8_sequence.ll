; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby-json/src/extr_parson.c_num_bytes_in_utf8_sequence.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby-json/src/extr_parson.c_num_bytes_in_utf8_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8)* @num_bytes_in_utf8_sequence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @num_bytes_in_utf8_sequence(i8 zeroext %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  %4 = load i8, i8* %3, align 1
  %5 = zext i8 %4 to i32
  %6 = icmp eq i32 %5, 192
  br i1 %6, label %19, label %7

7:                                                ; preds = %1
  %8 = load i8, i8* %3, align 1
  %9 = zext i8 %8 to i32
  %10 = icmp eq i32 %9, 193
  br i1 %10, label %19, label %11

11:                                               ; preds = %7
  %12 = load i8, i8* %3, align 1
  %13 = zext i8 %12 to i32
  %14 = icmp sgt i32 %13, 244
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = load i8, i8* %3, align 1
  %17 = call i64 @IS_CONT(i8 zeroext %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %11, %7, %1
  store i32 0, i32* %2, align 4
  br label %49

20:                                               ; preds = %15
  %21 = load i8, i8* %3, align 1
  %22 = zext i8 %21 to i32
  %23 = and i32 %22, 128
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 1, i32* %2, align 4
  br label %49

26:                                               ; preds = %20
  %27 = load i8, i8* %3, align 1
  %28 = zext i8 %27 to i32
  %29 = and i32 %28, 224
  %30 = icmp eq i32 %29, 192
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 2, i32* %2, align 4
  br label %49

32:                                               ; preds = %26
  %33 = load i8, i8* %3, align 1
  %34 = zext i8 %33 to i32
  %35 = and i32 %34, 240
  %36 = icmp eq i32 %35, 224
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 3, i32* %2, align 4
  br label %49

38:                                               ; preds = %32
  %39 = load i8, i8* %3, align 1
  %40 = zext i8 %39 to i32
  %41 = and i32 %40, 248
  %42 = icmp eq i32 %41, 240
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 4, i32* %2, align 4
  br label %49

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %44
  br label %46

46:                                               ; preds = %45
  br label %47

47:                                               ; preds = %46
  br label %48

48:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %43, %37, %31, %25, %19
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i64 @IS_CONT(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
