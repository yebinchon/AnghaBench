; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_fault.c_check_prefetch_opcode.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_fault.c_check_prefetch_opcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*, i8*, i8, i32*)* @check_prefetch_opcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_prefetch_opcode(%struct.pt_regs* %0, i8* %1, i8 zeroext %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pt_regs*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  store %struct.pt_regs* %0, %struct.pt_regs** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8 %2, i8* %8, align 1
  store i32* %3, i32** %9, align 8
  %12 = load i8, i8* %8, align 1
  %13 = zext i8 %12 to i32
  %14 = and i32 %13, 240
  %15 = trunc i32 %14 to i8
  store i8 %15, i8* %10, align 1
  %16 = load i8, i8* %8, align 1
  %17 = zext i8 %16 to i32
  %18 = and i32 %17, 15
  %19 = trunc i32 %18 to i8
  store i8 %19, i8* %11, align 1
  %20 = load i8, i8* %10, align 1
  %21 = zext i8 %20 to i32
  switch i32 %21, label %69 [
    i32 32, label %22
    i32 48, label %22
    i32 96, label %28
    i32 240, label %34
    i32 0, label %45
  ]

22:                                               ; preds = %4, %4
  %23 = load i8, i8* %11, align 1
  %24 = zext i8 %23 to i32
  %25 = and i32 %24, 7
  %26 = icmp eq i32 %25, 6
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %5, align 4
  br label %70

28:                                               ; preds = %4
  %29 = load i8, i8* %11, align 1
  %30 = zext i8 %29 to i32
  %31 = and i32 %30, 12
  %32 = icmp eq i32 %31, 4
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %5, align 4
  br label %70

34:                                               ; preds = %4
  %35 = load i8, i8* %11, align 1
  %36 = icmp ne i8 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load i8, i8* %11, align 1
  %39 = zext i8 %38 to i32
  %40 = ashr i32 %39, 1
  %41 = icmp eq i32 %40, 1
  br label %42

42:                                               ; preds = %37, %34
  %43 = phi i1 [ true, %34 ], [ %41, %37 ]
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %5, align 4
  br label %70

45:                                               ; preds = %4
  %46 = load i8*, i8** %7, align 8
  %47 = load i8, i8* %8, align 1
  %48 = call i32 @probe_kernel_address(i8* %46, i8 zeroext %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i32 0, i32* %5, align 4
  br label %70

51:                                               ; preds = %45
  %52 = load i8, i8* %11, align 1
  %53 = zext i8 %52 to i32
  %54 = icmp eq i32 %53, 15
  br i1 %54, label %55, label %65

55:                                               ; preds = %51
  %56 = load i8, i8* %8, align 1
  %57 = zext i8 %56 to i32
  %58 = icmp eq i32 %57, 13
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = load i8, i8* %8, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp eq i32 %61, 24
  br label %63

63:                                               ; preds = %59, %55
  %64 = phi i1 [ true, %55 ], [ %62, %59 ]
  br label %65

65:                                               ; preds = %63, %51
  %66 = phi i1 [ false, %51 ], [ %64, %63 ]
  %67 = zext i1 %66 to i32
  %68 = load i32*, i32** %9, align 8
  store i32 %67, i32* %68, align 4
  store i32 0, i32* %5, align 4
  br label %70

69:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %69, %65, %50, %42, %28, %22
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i32 @probe_kernel_address(i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
