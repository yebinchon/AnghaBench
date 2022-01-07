; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mm/extr_alignment.c_do_alignment_t32_to_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mm/extr_alignment.c_do_alignment_t32_to_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }
%union.offset_union = type { i32 }

@do_alignment_ldmstm = common dso_local global i8* null, align 8
@__const.do_alignment_t32_to_handler.subset = private unnamed_addr constant [2 x i32] [i32 -382926848, i32 -390266880], align 4
@do_alignment_ldrdstrd = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, %struct.pt_regs*, %union.offset_union*)* @do_alignment_t32_to_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @do_alignment_t32_to_handler(i32* %0, %struct.pt_regs* %1, %union.offset_union* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.pt_regs*, align 8
  %7 = alloca %union.offset_union*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [2 x i32], align 4
  store i32* %0, i32** %5, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %6, align 8
  store %union.offset_union* %2, %union.offset_union** %7, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = ashr i32 %15, 16
  %17 = and i32 %16, 65535
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %8, align 4
  %19 = and i32 %18, 65535
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %9, align 4
  %21 = and i32 %20, 65504
  switch i32 %21, label %59 [
    i32 59520, label %22
    i32 59552, label %22
    i32 59648, label %22
    i32 59680, label %22
    i32 63552, label %24
    i32 59488, label %51
    i32 59744, label %51
    i32 59616, label %51
    i32 59872, label %51
    i32 59712, label %57
    i32 59840, label %57
  ]

22:                                               ; preds = %3, %3, %3, %3
  %23 = load i8*, i8** @do_alignment_ldmstm, align 8
  store i8* %23, i8** %4, align 8
  br label %61

24:                                               ; preds = %3
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @RN_BITS(i32 %25)
  %27 = icmp eq i32 %26, 13
  br i1 %27, label %28, label %50

28:                                               ; preds = %24
  %29 = load i32, i32* %10, align 4
  %30 = and i32 %29, 2559
  %31 = icmp eq i32 %30, 2308
  br i1 %31, label %32, label %50

32:                                               ; preds = %28
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @LDST_L_BIT(i32 %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %11, align 4
  %39 = bitcast [2 x i32]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %39, i8* align 4 bitcast ([2 x i32]* @__const.do_alignment_t32_to_handler.subset to i8*), i64 8, i1 false)
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @RD_BITS(i32 %44)
  %46 = shl i32 1, %45
  %47 = or i32 %43, %46
  %48 = load i32*, i32** %5, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i8*, i8** @do_alignment_ldmstm, align 8
  store i8* %49, i8** %4, align 8
  br label %61

50:                                               ; preds = %28, %24
  br label %60

51:                                               ; preds = %3, %3, %3, %3
  %52 = load i32, i32* %10, align 4
  %53 = and i32 %52, 255
  %54 = shl i32 %53, 2
  %55 = load %union.offset_union*, %union.offset_union** %7, align 8
  %56 = bitcast %union.offset_union* %55 to i32*
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %3, %3, %51
  %58 = load i8*, i8** @do_alignment_ldrdstrd, align 8
  store i8* %58, i8** %4, align 8
  br label %61

59:                                               ; preds = %3
  br label %60

60:                                               ; preds = %59, %50
  store i8* null, i8** %4, align 8
  br label %61

61:                                               ; preds = %60, %57, %32, %22
  %62 = load i8*, i8** %4, align 8
  ret i8* %62
}

declare dso_local i32 @RN_BITS(i32) #1

declare dso_local i32 @LDST_L_BIT(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @RD_BITS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
