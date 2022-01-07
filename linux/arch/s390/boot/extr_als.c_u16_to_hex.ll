; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/boot/extr_als.c_u16_to_hex.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/boot/extr_als.c_u16_to_hex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @u16_to_hex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @u16_to_hex(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %5, align 4
  br label %7

7:                                                ; preds = %28, %2
  %8 = load i32, i32* %5, align 4
  %9 = icmp sle i32 %8, 4
  br i1 %9, label %10, label %31

10:                                               ; preds = %7
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %5, align 4
  %13 = mul nsw i32 4, %12
  %14 = sub nsw i32 16, %13
  %15 = ashr i32 %11, %14
  %16 = and i32 %15, 15
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp sge i32 %17, 10
  br i1 %18, label %19, label %22

19:                                               ; preds = %10
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %20, 7
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %19, %10
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 48, %23
  %25 = trunc i32 %24 to i8
  %26 = load i8*, i8** %3, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %3, align 8
  store i8 %25, i8* %26, align 1
  br label %28

28:                                               ; preds = %22
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %7

31:                                               ; preds = %7
  %32 = load i8*, i8** %3, align 8
  store i8 0, i8* %32, align 1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
