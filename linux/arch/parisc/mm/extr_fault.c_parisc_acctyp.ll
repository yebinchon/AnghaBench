; ModuleID = '/home/carl/AnghaBench/linux/arch/parisc/mm/extr_fault.c_parisc_acctyp.c'
source_filename = "/home/carl/AnghaBench/linux/arch/parisc/mm/extr_fault.c_parisc_acctyp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VM_EXEC = common dso_local global i64 0, align 8
@VM_READ = common dso_local global i64 0, align 8
@VM_WRITE = common dso_local global i64 0, align 8
@BITSSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32)* @parisc_acctyp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @parisc_acctyp(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i64, i64* %4, align 8
  %7 = icmp eq i64 %6, 6
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8
  %10 = icmp eq i64 %9, 16
  br i1 %10, label %11, label %13

11:                                               ; preds = %8, %2
  %12 = load i64, i64* @VM_EXEC, align 8
  store i64 %12, i64* %3, align 8
  br label %51

13:                                               ; preds = %8
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, -268435456
  switch i32 %15, label %49 [
    i32 1073741824, label %16
    i32 1342177280, label %16
    i32 1610612736, label %18
    i32 1879048192, label %18
    i32 536870912, label %20
    i32 805306368, label %20
    i32 0, label %27
  ]

16:                                               ; preds = %13, %13
  %17 = load i64, i64* @VM_READ, align 8
  store i64 %17, i64* %3, align 8
  br label %51

18:                                               ; preds = %13, %13
  %19 = load i64, i64* @VM_WRITE, align 8
  store i64 %19, i64* %3, align 8
  br label %51

20:                                               ; preds = %13, %13
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @bit22set(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i64, i64* @VM_WRITE, align 8
  store i64 %25, i64* %3, align 8
  br label %51

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %13, %26
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @bit22set(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @isGraphicsFlushRead(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i64, i64* @VM_READ, align 8
  store i64 %36, i64* %3, align 8
  br label %51

37:                                               ; preds = %31
  %38 = load i64, i64* @VM_WRITE, align 8
  store i64 %38, i64* %3, align 8
  br label %51

39:                                               ; preds = %27
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @bits23_25set(i32 %40)
  %42 = load i32, i32* @BITSSET, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i64, i64* @VM_WRITE, align 8
  store i64 %45, i64* %3, align 8
  br label %51

46:                                               ; preds = %39
  br label %47

47:                                               ; preds = %46
  %48 = load i64, i64* @VM_READ, align 8
  store i64 %48, i64* %3, align 8
  br label %51

49:                                               ; preds = %13
  %50 = load i64, i64* @VM_READ, align 8
  store i64 %50, i64* %3, align 8
  br label %51

51:                                               ; preds = %49, %47, %44, %37, %35, %24, %18, %16, %11
  %52 = load i64, i64* %3, align 8
  ret i64 %52
}

declare dso_local i32 @bit22set(i32) #1

declare dso_local i32 @isGraphicsFlushRead(i32) #1

declare dso_local i32 @bits23_25set(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
