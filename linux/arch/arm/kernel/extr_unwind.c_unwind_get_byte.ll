; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/kernel/extr_unwind.c_unwind_get_byte.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/kernel/extr_unwind.c_unwind_get_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unwind_ctrl_block = type { i64, i32*, i32 }

@.str = private unnamed_addr constant [30 x i8] c"unwind: Corrupt unwind table\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.unwind_ctrl_block*)* @unwind_get_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @unwind_get_byte(%struct.unwind_ctrl_block* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.unwind_ctrl_block*, align 8
  %4 = alloca i64, align 8
  store %struct.unwind_ctrl_block* %0, %struct.unwind_ctrl_block** %3, align 8
  %5 = load %struct.unwind_ctrl_block*, %struct.unwind_ctrl_block** %3, align 8
  %6 = getelementptr inbounds %struct.unwind_ctrl_block, %struct.unwind_ctrl_block* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp sle i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 @pr_warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %2, align 8
  br label %45

11:                                               ; preds = %1
  %12 = load %struct.unwind_ctrl_block*, %struct.unwind_ctrl_block** %3, align 8
  %13 = getelementptr inbounds %struct.unwind_ctrl_block, %struct.unwind_ctrl_block* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.unwind_ctrl_block*, %struct.unwind_ctrl_block** %3, align 8
  %17 = getelementptr inbounds %struct.unwind_ctrl_block, %struct.unwind_ctrl_block* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = mul nsw i32 %18, 8
  %20 = ashr i32 %15, %19
  %21 = and i32 %20, 255
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %4, align 8
  %23 = load %struct.unwind_ctrl_block*, %struct.unwind_ctrl_block** %3, align 8
  %24 = getelementptr inbounds %struct.unwind_ctrl_block, %struct.unwind_ctrl_block* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %11
  %28 = load %struct.unwind_ctrl_block*, %struct.unwind_ctrl_block** %3, align 8
  %29 = getelementptr inbounds %struct.unwind_ctrl_block, %struct.unwind_ctrl_block* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %29, align 8
  %32 = load %struct.unwind_ctrl_block*, %struct.unwind_ctrl_block** %3, align 8
  %33 = getelementptr inbounds %struct.unwind_ctrl_block, %struct.unwind_ctrl_block* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, -1
  store i64 %35, i64* %33, align 8
  %36 = load %struct.unwind_ctrl_block*, %struct.unwind_ctrl_block** %3, align 8
  %37 = getelementptr inbounds %struct.unwind_ctrl_block, %struct.unwind_ctrl_block* %36, i32 0, i32 2
  store i32 3, i32* %37, align 8
  br label %43

38:                                               ; preds = %11
  %39 = load %struct.unwind_ctrl_block*, %struct.unwind_ctrl_block** %3, align 8
  %40 = getelementptr inbounds %struct.unwind_ctrl_block, %struct.unwind_ctrl_block* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %40, align 8
  br label %43

43:                                               ; preds = %38, %27
  %44 = load i64, i64* %4, align 8
  store i64 %44, i64* %2, align 8
  br label %45

45:                                               ; preds = %43, %9
  %46 = load i64, i64* %2, align 8
  ret i64 %46
}

declare dso_local i32 @pr_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
