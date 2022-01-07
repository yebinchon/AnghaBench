; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_vm_armv7l.c__j_rel.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_vm_armv7l.c__j_rel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [27 x i8] c"jump %d out of range at %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @_j_rel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_j_rel(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = and i32 %6, 3
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %32

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = ashr i32 %11, 2
  %13 = sub nsw i32 %12, 2
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %10
  %17 = load i32, i32* %4, align 4
  %18 = and i32 %17, -16777216
  %19 = icmp ne i32 %18, -16777216
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %32

21:                                               ; preds = %16
  %22 = load i32, i32* %4, align 4
  %23 = and i32 %22, 16777215
  store i32 %23, i32* %4, align 4
  br label %30

24:                                               ; preds = %10
  %25 = load i32, i32* %4, align 4
  %26 = and i32 %25, -16777216
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %32

29:                                               ; preds = %24
  br label %30

30:                                               ; preds = %29, %21
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %3, align 4
  br label %36

32:                                               ; preds = %28, %20, %9
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @DIE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %32, %30
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @DIE(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
