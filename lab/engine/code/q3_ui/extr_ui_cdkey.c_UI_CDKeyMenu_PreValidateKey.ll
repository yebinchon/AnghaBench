; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_cdkey.c_UI_CDKeyMenu_PreValidateKey.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_cdkey.c_UI_CDKeyMenu_PreValidateKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @UI_CDKeyMenu_PreValidateKey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @UI_CDKeyMenu_PreValidateKey(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call i32 @strlen(i8* %5)
  %7 = icmp ne i32 %6, 16
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %21

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %18, %9
  %11 = load i8*, i8** %3, align 8
  %12 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %12, i8** %3, align 8
  %13 = load i8, i8* %11, align 1
  store i8 %13, i8* %4, align 1
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = load i8, i8* %4, align 1
  %17 = sext i8 %16 to i32
  switch i32 %17, label %19 [
    i32 50, label %18
    i32 51, label %18
    i32 55, label %18
    i32 97, label %18
    i32 98, label %18
    i32 99, label %18
    i32 100, label %18
    i32 103, label %18
    i32 104, label %18
    i32 106, label %18
    i32 108, label %18
    i32 112, label %18
    i32 114, label %18
    i32 115, label %18
    i32 116, label %18
    i32 119, label %18
  ]

18:                                               ; preds = %15, %15, %15, %15, %15, %15, %15, %15, %15, %15, %15, %15, %15, %15, %15, %15
  br label %10

19:                                               ; preds = %15
  store i32 -1, i32* %2, align 4
  br label %21

20:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %20, %19, %8
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
