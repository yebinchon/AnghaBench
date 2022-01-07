; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_diag.c_diag210.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_diag.c_diag210.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diag210 = type { i32 }
%struct.TYPE_2__ = type { i32 (%struct.diag210*)* }

@diag210.diag210_lock = internal global i32 0, align 4
@__diag210_tmp_dma = common dso_local global %struct.diag210* null, align 8
@DIAG_STAT_X210 = common dso_local global i32 0, align 4
@diag_dma_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @diag210(%struct.diag210* %0) #0 {
  %2 = alloca %struct.diag210*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.diag210* %0, %struct.diag210** %2, align 8
  %5 = load i64, i64* %3, align 8
  %6 = call i32 @spin_lock_irqsave(i32* @diag210.diag210_lock, i64 %5)
  %7 = load %struct.diag210*, %struct.diag210** @__diag210_tmp_dma, align 8
  %8 = load %struct.diag210*, %struct.diag210** %2, align 8
  %9 = bitcast %struct.diag210* %7 to i8*
  %10 = bitcast %struct.diag210* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 %10, i64 4, i1 false)
  %11 = load i32, i32* @DIAG_STAT_X210, align 4
  %12 = call i32 @diag_stat_inc(i32 %11)
  %13 = load i32 (%struct.diag210*)*, i32 (%struct.diag210*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @diag_dma_ops, i32 0, i32 0), align 8
  %14 = load %struct.diag210*, %struct.diag210** @__diag210_tmp_dma, align 8
  %15 = call i32 %13(%struct.diag210* %14)
  store i32 %15, i32* %4, align 4
  %16 = load %struct.diag210*, %struct.diag210** %2, align 8
  %17 = load %struct.diag210*, %struct.diag210** @__diag210_tmp_dma, align 8
  %18 = bitcast %struct.diag210* %16 to i8*
  %19 = bitcast %struct.diag210* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 %19, i64 4, i1 false)
  %20 = load i64, i64* %3, align 8
  %21 = call i32 @spin_unlock_irqrestore(i32* @diag210.diag210_lock, i64 %20)
  %22 = load i32, i32* %4, align 4
  ret i32 %22
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @diag_stat_inc(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
