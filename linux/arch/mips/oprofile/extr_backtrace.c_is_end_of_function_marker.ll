; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/oprofile/extr_backtrace.c_is_end_of_function_marker.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/oprofile/extr_backtrace.c_is_end_of_function_marker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.mips_instruction = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i64, i32 }

@jr_op = common dso_local global i64 0, align 8
@lui_op = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.mips_instruction*)* @is_end_of_function_marker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_end_of_function_marker(%union.mips_instruction* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.mips_instruction*, align 8
  store %union.mips_instruction* %0, %union.mips_instruction** %3, align 8
  %4 = load %union.mips_instruction*, %union.mips_instruction** %3, align 8
  %5 = bitcast %union.mips_instruction* %4 to %struct.TYPE_3__*
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @jr_op, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %union.mips_instruction*, %union.mips_instruction** %3, align 8
  %12 = bitcast %union.mips_instruction* %11 to %struct.TYPE_3__*
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 31
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  store i32 1, i32* %2, align 4
  br label %32

17:                                               ; preds = %10, %1
  %18 = load %union.mips_instruction*, %union.mips_instruction** %3, align 8
  %19 = bitcast %union.mips_instruction* %18 to %struct.TYPE_4__*
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @lui_op, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %17
  %25 = load %union.mips_instruction*, %union.mips_instruction** %3, align 8
  %26 = bitcast %union.mips_instruction* %25 to %struct.TYPE_4__*
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 1, i32* %2, align 4
  br label %32

31:                                               ; preds = %24, %17
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %30, %16
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
