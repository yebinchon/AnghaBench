; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/mm/extr_alignment.c_unaligned_user_action.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/mm/extr_alignment.c_unaligned_user_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@se_usermode = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8
@SH_THREAD_UAC_SIGBUS = common dso_local global i32 0, align 4
@UM_FIXUP = common dso_local global i32 0, align 4
@UM_SIGNAL = common dso_local global i32 0, align 4
@SH_THREAD_UAC_NOPRINT = common dso_local global i32 0, align 4
@UM_WARN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unaligned_user_action() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @se_usermode, align 4
  store i32 %2, i32* %1, align 4
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @SH_THREAD_UAC_SIGBUS, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %0
  %11 = load i32, i32* @UM_FIXUP, align 4
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %1, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %1, align 4
  %15 = load i32, i32* @UM_SIGNAL, align 4
  %16 = load i32, i32* %1, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %1, align 4
  br label %18

18:                                               ; preds = %10, %0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @SH_THREAD_UAC_NOPRINT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %18
  %27 = load i32, i32* @UM_WARN, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %1, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %1, align 4
  br label %31

31:                                               ; preds = %26, %18
  %32 = load i32, i32* %1, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
