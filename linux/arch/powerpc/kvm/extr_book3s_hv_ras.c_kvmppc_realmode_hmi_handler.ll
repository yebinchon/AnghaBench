; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_ras.c_kvmppc_realmode_hmi_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_ras.c_kvmppc_realmode_hmi_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32 (i32*)* }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@irq_stat = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@ppc_md = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@local_paca = common dso_local global %struct.TYPE_9__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kvmppc_realmode_hmi_handler() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @irq_stat, i32 0, i32 0), align 4
  %4 = call i32 @__this_cpu_inc(i32 %3)
  %5 = call i64 @hmi_handle_debugtrig(i32* null)
  %6 = icmp sge i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  store i64 1, i64* %1, align 8
  br label %38

8:                                                ; preds = %0
  %9 = call i32 (...) @kvmppc_tb_resync_required()
  store i32 %9, i32* %2, align 4
  %10 = call i32 (...) @kvmppc_subcore_exit_guest()
  %11 = call i32 (...) @wait_for_subcore_guest_exit()
  %12 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ppc_md, i32 0, i32 0), align 8
  %13 = icmp ne i32 (i32*)* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ppc_md, i32 0, i32 0), align 8
  %16 = call i32 %15(i32* null)
  br label %17

17:                                               ; preds = %14, %8
  %18 = load i32, i32* %2, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = call i32 (...) @opal_resync_timebase()
  %22 = call i32 (...) @kvmppc_tb_resync_done()
  br label %25

23:                                               ; preds = %17
  %24 = call i32 (...) @wait_for_tb_resync()
  br label %25

25:                                               ; preds = %23, %20
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** @local_paca, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = icmp ne %struct.TYPE_6__* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** @local_paca, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  br label %37

37:                                               ; preds = %31, %25
  store i64 0, i64* %1, align 8
  br label %38

38:                                               ; preds = %37, %7
  %39 = load i64, i64* %1, align 8
  ret i64 %39
}

declare dso_local i32 @__this_cpu_inc(i32) #1

declare dso_local i64 @hmi_handle_debugtrig(i32*) #1

declare dso_local i32 @kvmppc_tb_resync_required(...) #1

declare dso_local i32 @kvmppc_subcore_exit_guest(...) #1

declare dso_local i32 @wait_for_subcore_guest_exit(...) #1

declare dso_local i32 @opal_resync_timebase(...) #1

declare dso_local i32 @kvmppc_tb_resync_done(...) #1

declare dso_local i32 @wait_for_tb_resync(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
