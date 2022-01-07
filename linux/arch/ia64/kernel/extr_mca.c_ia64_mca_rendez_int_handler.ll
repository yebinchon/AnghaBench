; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_mca.c_ia64_mca_rendez_int_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_mca.c_ia64_mca_rendez_int_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ia64_mca_notify_die = type { i32*, i32* }
%struct.TYPE_2__ = type { i32* }

@monarch_cpu = common dso_local global i32 0, align 4
@__const.ia64_mca_rendez_int_handler.nd = private unnamed_addr constant %struct.ia64_mca_notify_die { i32* @monarch_cpu, i32* null }, align 8
@DIE_MCA_RENDZVOUS_ENTER = common dso_local global i32 0, align 4
@IA64_MCA_RENDEZ_CHECKIN_DONE = common dso_local global i32 0, align 4
@ia64_mc_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@DIE_MCA_RENDZVOUS_PROCESS = common dso_local global i32 0, align 4
@DIE_MCA_RENDZVOUS_LEAVE = common dso_local global i32 0, align 4
@IA64_MCA_RENDEZ_CHECKIN_NOTDONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ia64_mca_rendez_int_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ia64_mca_rendez_int_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ia64_mca_notify_die, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = call i32 (...) @smp_processor_id()
  store i32 %8, i32* %6, align 4
  %9 = bitcast %struct.ia64_mca_notify_die* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 bitcast (%struct.ia64_mca_notify_die* @__const.ia64_mca_rendez_int_handler.nd to i8*), i64 16, i1 false)
  %10 = load i64, i64* %5, align 8
  %11 = call i32 @local_irq_save(i64 %10)
  %12 = load i32, i32* @DIE_MCA_RENDZVOUS_ENTER, align 4
  %13 = call i32 (...) @get_irq_regs()
  %14 = ptrtoint %struct.ia64_mca_notify_die* %7 to i64
  %15 = call i32 @NOTIFY_MCA(i32 %12, i32 %13, i64 %14, i32 1)
  %16 = load i32, i32* @IA64_MCA_RENDEZ_CHECKIN_DONE, align 4
  %17 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ia64_mc_info, i32 0, i32 0), align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  store i32 %16, i32* %20, align 4
  %21 = call i32 (...) @ia64_sal_mc_rendez()
  %22 = load i32, i32* @DIE_MCA_RENDZVOUS_PROCESS, align 4
  %23 = call i32 (...) @get_irq_regs()
  %24 = ptrtoint %struct.ia64_mca_notify_die* %7 to i64
  %25 = call i32 @NOTIFY_MCA(i32 %22, i32 %23, i64 %24, i32 1)
  br label %26

26:                                               ; preds = %29, %2
  %27 = load i32, i32* @monarch_cpu, align 4
  %28 = icmp ne i32 %27, -1
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = call i32 (...) @cpu_relax()
  br label %26

31:                                               ; preds = %26
  %32 = load i32, i32* @DIE_MCA_RENDZVOUS_LEAVE, align 4
  %33 = call i32 (...) @get_irq_regs()
  %34 = ptrtoint %struct.ia64_mca_notify_die* %7 to i64
  %35 = call i32 @NOTIFY_MCA(i32 %32, i32 %33, i64 %34, i32 1)
  %36 = load i32, i32* @IA64_MCA_RENDEZ_CHECKIN_NOTDONE, align 4
  %37 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ia64_mc_info, i32 0, i32 0), align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 %36, i32* %40, align 4
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @local_irq_restore(i64 %41)
  %43 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %43
}

declare dso_local i32 @smp_processor_id(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @NOTIFY_MCA(i32, i32, i64, i32) #1

declare dso_local i32 @get_irq_regs(...) #1

declare dso_local i32 @ia64_sal_mc_rendez(...) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
