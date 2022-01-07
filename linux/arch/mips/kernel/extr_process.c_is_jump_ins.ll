; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_process.c_is_jump_ins.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_process.c_is_jump_ins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.mips_instruction = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_7__ = type { i64 }

@j_op = common dso_local global i64 0, align 8
@jal_op = common dso_local global i64 0, align 8
@spec_op = common dso_local global i64 0, align 8
@jalr_op = common dso_local global i64 0, align 8
@jr_op = common dso_local global i64 0, align 8
@mm_j32_op = common dso_local global i64 0, align 8
@mm_jal32_op = common dso_local global i64 0, align 8
@mm_jalr_op = common dso_local global i32 0, align 4
@mm_jr16_op = common dso_local global i32 0, align 4
@mm_pool16c_op = common dso_local global i64 0, align 8
@mm_pool32a_op = common dso_local global i64 0, align 8
@mm_pool32axf_op = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.mips_instruction*)* @is_jump_ins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_jump_ins(%union.mips_instruction* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.mips_instruction*, align 8
  store %union.mips_instruction* %0, %union.mips_instruction** %3, align 8
  %4 = load %union.mips_instruction*, %union.mips_instruction** %3, align 8
  %5 = bitcast %union.mips_instruction* %4 to %struct.TYPE_7__*
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @j_op, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %44

11:                                               ; preds = %1
  %12 = load %union.mips_instruction*, %union.mips_instruction** %3, align 8
  %13 = bitcast %union.mips_instruction* %12 to %struct.TYPE_7__*
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @jal_op, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  store i32 1, i32* %2, align 4
  br label %44

19:                                               ; preds = %11
  %20 = load %union.mips_instruction*, %union.mips_instruction** %3, align 8
  %21 = bitcast %union.mips_instruction* %20 to %struct.TYPE_8__*
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @spec_op, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %44

27:                                               ; preds = %19
  %28 = load %union.mips_instruction*, %union.mips_instruction** %3, align 8
  %29 = bitcast %union.mips_instruction* %28 to %struct.TYPE_8__*
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @jalr_op, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %41, label %34

34:                                               ; preds = %27
  %35 = load %union.mips_instruction*, %union.mips_instruction** %3, align 8
  %36 = bitcast %union.mips_instruction* %35 to %struct.TYPE_8__*
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @jr_op, align 8
  %40 = icmp eq i64 %38, %39
  br label %41

41:                                               ; preds = %34, %27
  %42 = phi i1 [ true, %27 ], [ %40, %34 ]
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %41, %26, %18, %10
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
