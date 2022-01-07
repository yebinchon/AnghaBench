; ModuleID = '/home/carl/AnghaBench/kphp-kdb/image/extr_image-data.c_get_max_save_size.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/image/extr_image-data.c_get_max_save_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @get_max_save_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_max_save_size(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i32 @strlen(i8* %4)
  %6 = icmp ne i32 %5, 1
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 5, i32* %2, align 4
  br label %20

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  switch i32 %12, label %19 [
    i32 119, label %13
    i32 122, label %14
    i32 121, label %15
    i32 120, label %16
    i32 109, label %17
    i32 115, label %18
  ]

13:                                               ; preds = %8
  store i32 5, i32* %2, align 4
  br label %20

14:                                               ; preds = %8
  store i32 4, i32* %2, align 4
  br label %20

15:                                               ; preds = %8
  store i32 3, i32* %2, align 4
  br label %20

16:                                               ; preds = %8
  store i32 2, i32* %2, align 4
  br label %20

17:                                               ; preds = %8
  store i32 1, i32* %2, align 4
  br label %20

18:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %20

19:                                               ; preds = %8
  store i32 5, i32* %2, align 4
  br label %20

20:                                               ; preds = %19, %18, %17, %16, %15, %14, %13, %7
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
