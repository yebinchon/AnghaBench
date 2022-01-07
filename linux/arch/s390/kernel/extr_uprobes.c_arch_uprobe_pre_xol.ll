; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_uprobes.c_arch_uprobe_pre_xol.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_uprobes.c_arch_uprobe_pre_xol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.arch_uprobe = type { i32, i32 }
%struct.pt_regs = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64, i32 }

@PSW_BITS_AMODE_24BIT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@PSW_BITS_AMODE_31BIT = common dso_local global i64 0, align 8
@PIF_PER_TRAP = common dso_local global i32 0, align 4
@UPROBE_TRAP_NR = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_8__* null, align 8
@TIF_UPROBE_SINGLESTEP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arch_uprobe_pre_xol(%struct.arch_uprobe* %0, %struct.pt_regs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.arch_uprobe*, align 8
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca %struct.TYPE_9__, align 8
  %7 = alloca %struct.TYPE_9__, align 8
  %8 = alloca %struct.TYPE_9__, align 8
  store %struct.arch_uprobe* %0, %struct.arch_uprobe** %4, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %5, align 8
  %9 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %10 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call { i64, i32 } @psw_bits(i32 %12)
  %14 = bitcast %struct.TYPE_9__* %6 to { i64, i32 }*
  %15 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i32 0, i32 0
  %16 = extractvalue { i64, i32 } %13, 0
  store i64 %16, i64* %15, align 8
  %17 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i32 0, i32 1
  %18 = extractvalue { i64, i32 } %13, 1
  store i32 %18, i32* %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PSW_BITS_AMODE_24BIT, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %86

26:                                               ; preds = %2
  %27 = call i32 (...) @is_compat_task()
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %47, label %29

29:                                               ; preds = %26
  %30 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %31 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call { i64, i32 } @psw_bits(i32 %33)
  %35 = bitcast %struct.TYPE_9__* %7 to { i64, i32 }*
  %36 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %35, i32 0, i32 0
  %37 = extractvalue { i64, i32 } %34, 0
  store i64 %37, i64* %36, align 8
  %38 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %35, i32 0, i32 1
  %39 = extractvalue { i64, i32 } %34, 1
  store i32 %39, i32* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @PSW_BITS_AMODE_31BIT, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %29
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %86

47:                                               ; preds = %29, %26
  %48 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %49 = load i32, i32* @PIF_PER_TRAP, align 4
  %50 = call i32 @clear_pt_regs_flag(%struct.pt_regs* %48, i32 %49)
  %51 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %52 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call { i64, i32 } @psw_bits(i32 %54)
  %56 = bitcast %struct.TYPE_9__* %8 to { i64, i32 }*
  %57 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %56, i32 0, i32 0
  %58 = extractvalue { i64, i32 } %55, 0
  store i64 %58, i64* %57, align 8
  %59 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %56, i32 0, i32 1
  %60 = extractvalue { i64, i32 } %55, 1
  store i32 %60, i32* %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.arch_uprobe*, %struct.arch_uprobe** %4, align 8
  %64 = getelementptr inbounds %struct.arch_uprobe, %struct.arch_uprobe* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %66 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.arch_uprobe*, %struct.arch_uprobe** %4, align 8
  %69 = getelementptr inbounds %struct.arch_uprobe, %struct.arch_uprobe* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @UPROBE_TRAP_NR, align 4
  %71 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %72 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %79 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  store i32 %77, i32* %80, align 4
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %82 = load i32, i32* @TIF_UPROBE_SINGLESTEP, align 4
  %83 = call i32 @set_tsk_thread_flag(%struct.TYPE_8__* %81, i32 %82)
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %85 = call i32 @update_cr_regs(%struct.TYPE_8__* %84)
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %47, %44, %23
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local { i64, i32 } @psw_bits(i32) #1

declare dso_local i32 @is_compat_task(...) #1

declare dso_local i32 @clear_pt_regs_flag(%struct.pt_regs*, i32) #1

declare dso_local i32 @set_tsk_thread_flag(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @update_cr_regs(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
