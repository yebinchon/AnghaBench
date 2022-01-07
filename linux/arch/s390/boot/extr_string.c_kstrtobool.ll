; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/boot/extr_string.c_kstrtobool.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/boot/extr_string.c_kstrtobool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kstrtobool(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %3, align 4
  br label %35

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  switch i32 %15, label %31 [
    i32 121, label %16
    i32 89, label %16
    i32 49, label %16
    i32 110, label %18
    i32 78, label %18
    i32 48, label %18
    i32 111, label %20
    i32 79, label %20
  ]

16:                                               ; preds = %11, %11, %11
  %17 = load i32*, i32** %5, align 8
  store i32 1, i32* %17, align 4
  store i32 0, i32* %3, align 4
  br label %35

18:                                               ; preds = %11, %11, %11
  %19 = load i32*, i32** %5, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %3, align 4
  br label %35

20:                                               ; preds = %11, %11
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  switch i32 %24, label %29 [
    i32 110, label %25
    i32 78, label %25
    i32 102, label %27
    i32 70, label %27
  ]

25:                                               ; preds = %20, %20
  %26 = load i32*, i32** %5, align 8
  store i32 1, i32* %26, align 4
  store i32 0, i32* %3, align 4
  br label %35

27:                                               ; preds = %20, %20
  %28 = load i32*, i32** %5, align 8
  store i32 0, i32* %28, align 4
  store i32 0, i32* %3, align 4
  br label %35

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %29
  br label %31

31:                                               ; preds = %11, %30
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %32, %27, %25, %18, %16, %8
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
