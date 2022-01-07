; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_sun4d_smp.c_sun4d_cpu_pre_online.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_sun4d_smp.c_sun4d_cpu_pre_online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (...)*, i32 (...)* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32* }

@cpu_callin_map = common dso_local global i32* null, align 8
@local_ops = common dso_local global %struct.TYPE_4__* null, align 8
@current_set = common dso_local global %struct.TYPE_5__** null, align 8
@PAGE_OFFSET = common dso_local global i64 0, align 8
@cpu_leds = common dso_local global i32* null, align 8
@init_mm = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_6__* null, align 8
@smp_commenced_mask = common dso_local global i32 0, align 4
@sun4d_imsk_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sun4d_cpu_pre_online(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = call i32 (...) @hard_smp_processor_id()
  store i32 %5, i32* %4, align 4
  %6 = load i32*, i32** @cpu_callin_map, align 8
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i32, i32* %6, i64 %8
  %10 = bitcast i32* %9 to i64*
  %11 = call i32 @sun4d_swap(i64* %10, i32 1)
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @local_ops, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i32 (...)*, i32 (...)** %13, align 8
  %15 = call i32 (...) %14()
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @local_ops, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32 (...)*, i32 (...)** %17, align 8
  %19 = call i32 (...) %18()
  br label %20

20:                                               ; preds = %29, %1
  %21 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @current_set, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %21, i64 %23
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = ptrtoint %struct.TYPE_5__* %25 to i64
  %27 = load i64, i64* @PAGE_OFFSET, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = call i32 (...) @barrier()
  br label %20

31:                                               ; preds = %20
  br label %32

32:                                               ; preds = %42, %31
  %33 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @current_set, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %33, i64 %35
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %32
  %43 = call i32 (...) @barrier()
  br label %32

44:                                               ; preds = %32
  %45 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @current_set, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %45, i64 %47
  call void asm sideeffect "ld [$0], %g6\0A\09", "r,~{memory},~{dirflag},~{fpsr},~{flags}"(%struct.TYPE_5__** %48) #2, !srcloc !2
  %49 = load i32*, i32** @cpu_leds, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32 9, i32* %52, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @show_leds(i32 %53)
  %55 = call i32 @mmgrab(i32* @init_mm)
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  store i32* @init_mm, i32** %57, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** @local_ops, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32 (...)*, i32 (...)** %59, align 8
  %61 = call i32 (...) %60()
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** @local_ops, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32 (...)*, i32 (...)** %63, align 8
  %65 = call i32 (...) %64()
  br label %66

66:                                               ; preds = %71, %44
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @cpumask_test_cpu(i32 %67, i32* @smp_commenced_mask)
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = call i32 (...) @barrier()
  br label %66

73:                                               ; preds = %66
  %74 = load i64, i64* %3, align 8
  %75 = call i32 @spin_lock_irqsave(i32* @sun4d_imsk_lock, i64 %74)
  %76 = call i32 (...) @cc_get_imsk()
  %77 = and i32 %76, -16385
  %78 = call i32 @cc_set_imsk(i32 %77)
  %79 = load i64, i64* %3, align 8
  %80 = call i32 @spin_unlock_irqrestore(i32* @sun4d_imsk_lock, i64 %79)
  ret void
}

declare dso_local i32 @hard_smp_processor_id(...) #1

declare dso_local i32 @sun4d_swap(i64*, i32) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @show_leds(i32) #1

declare dso_local i32 @mmgrab(i32*) #1

declare dso_local i32 @cpumask_test_cpu(i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @cc_set_imsk(i32) #1

declare dso_local i32 @cc_get_imsk(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1334, i32 1350}
