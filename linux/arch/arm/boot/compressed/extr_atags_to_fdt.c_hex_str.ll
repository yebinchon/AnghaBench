; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/boot/compressed/extr_atags_to_fdt.c_hex_str.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/boot/compressed/extr_atags_to_fdt.c_hex_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @hex_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hex_str(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 7, i32* %6, align 4
  br label %7

7:                                                ; preds = %30, %2
  %8 = load i32, i32* %6, align 4
  %9 = icmp sge i32 %8, 0
  br i1 %9, label %10, label %33

10:                                               ; preds = %7
  %11 = load i32, i32* %4, align 4
  %12 = ashr i32 %11, 28
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = shl i32 %13, 4
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, 15
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 10
  br i1 %18, label %19, label %22

19:                                               ; preds = %10
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 %20, 48
  store i32 %21, i32* %5, align 4
  br label %25

22:                                               ; preds = %10
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 55
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %22, %19
  %26 = load i32, i32* %5, align 4
  %27 = trunc i32 %26 to i8
  %28 = load i8*, i8** %3, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %3, align 8
  store i8 %27, i8* %28, align 1
  br label %30

30:                                               ; preds = %25
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %6, align 4
  br label %7

33:                                               ; preds = %7
  %34 = load i8*, i8** %3, align 8
  store i8 0, i8* %34, align 1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
