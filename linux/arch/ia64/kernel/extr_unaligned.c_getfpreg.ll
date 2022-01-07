; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_unaligned.c_getfpreg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_unaligned.c_getfpreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ia64_fpreg* }
%struct.ia64_fpreg = type { i32 }
%struct.pt_regs = type { i32 }
%struct.switch_stack = type { i32 }

@IA64_FIRST_ROTATING_FR = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [35 x i8] c"is_sw=%d tmp_base=%lx offset=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.ia64_fpreg*, %struct.pt_regs*)* @getfpreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getfpreg(i64 %0, %struct.ia64_fpreg* %1, %struct.pt_regs* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.ia64_fpreg*, align 8
  %6 = alloca %struct.pt_regs*, align 8
  %7 = alloca %struct.switch_stack*, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store %struct.ia64_fpreg* %1, %struct.ia64_fpreg** %5, align 8
  store %struct.pt_regs* %2, %struct.pt_regs** %6, align 8
  %9 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %10 = bitcast %struct.pt_regs* %9 to %struct.switch_stack*
  %11 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %10, i64 -1
  store %struct.switch_stack* %11, %struct.switch_stack** %7, align 8
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @IA64_FIRST_ROTATING_FR, align 8
  %14 = icmp uge i64 %12, %13
  br i1 %14, label %15, label %29

15:                                               ; preds = %3
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %17 = call i32 @ia64_flush_fph(%struct.TYPE_5__* %16)
  %18 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %21, align 8
  %23 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %24 = load i64, i64* %4, align 8
  %25 = call i64 @fph_index(%struct.pt_regs* %23, i64 %24)
  %26 = getelementptr inbounds %struct.ia64_fpreg, %struct.ia64_fpreg* %22, i64 %25
  %27 = bitcast %struct.ia64_fpreg* %18 to i8*
  %28 = bitcast %struct.ia64_fpreg* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 %28, i64 4, i1 false)
  br label %65

29:                                               ; preds = %3
  %30 = load i64, i64* %4, align 8
  switch i64 %30, label %37 [
    i64 0, label %31
    i64 1, label %34
  ]

31:                                               ; preds = %29
  %32 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %33 = call i32 @float_spill_f0(%struct.ia64_fpreg* %32)
  br label %64

34:                                               ; preds = %29
  %35 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %36 = call i32 @float_spill_f1(%struct.ia64_fpreg* %35)
  br label %64

37:                                               ; preds = %29
  %38 = load i64, i64* %4, align 8
  %39 = call i32 @FR_IN_SW(i64 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load %struct.switch_stack*, %struct.switch_stack** %7, align 8
  %43 = ptrtoint %struct.switch_stack* %42 to i64
  br label %47

44:                                               ; preds = %37
  %45 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %46 = ptrtoint %struct.pt_regs* %45 to i64
  br label %47

47:                                               ; preds = %44, %41
  %48 = phi i64 [ %43, %41 ], [ %46, %44 ]
  store i64 %48, i64* %8, align 8
  %49 = load i64, i64* %4, align 8
  %50 = call i32 @FR_IN_SW(i64 %49)
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* %4, align 8
  %53 = call i64 @FR_OFFS(i64 %52)
  %54 = call i32 @DPRINT(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %50, i64 %51, i64 %53)
  %55 = load i64, i64* %4, align 8
  %56 = call i64 @FR_OFFS(i64 %55)
  %57 = load i64, i64* %8, align 8
  %58 = add i64 %57, %56
  store i64 %58, i64* %8, align 8
  %59 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %60 = load i64, i64* %8, align 8
  %61 = inttoptr i64 %60 to %struct.ia64_fpreg*
  %62 = bitcast %struct.ia64_fpreg* %59 to i8*
  %63 = bitcast %struct.ia64_fpreg* %61 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %62, i8* align 4 %63, i64 4, i1 false)
  br label %64

64:                                               ; preds = %47, %34, %31
  br label %65

65:                                               ; preds = %64, %15
  ret void
}

declare dso_local i32 @ia64_flush_fph(%struct.TYPE_5__*) #1

declare dso_local i64 @fph_index(%struct.pt_regs*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @float_spill_f0(%struct.ia64_fpreg*) #1

declare dso_local i32 @float_spill_f1(%struct.ia64_fpreg*) #1

declare dso_local i32 @FR_IN_SW(i64) #1

declare dso_local i32 @DPRINT(i8*, i32, i64, i64) #1

declare dso_local i64 @FR_OFFS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
