; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/xmon/extr_xmon.c_bootcmds.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/xmon/extr_xmon.c_bootcmds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (...)*, i32 (i32*)* }

@ppc_md = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @bootcmds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bootcmds() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @inchar()
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* %1, align 4
  %4 = icmp eq i32 %3, 114
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ppc_md, i32 0, i32 1), align 8
  %7 = call i32 %6(i32* null)
  br label %23

8:                                                ; preds = %0
  %9 = load i32, i32* %1, align 4
  %10 = icmp eq i32 %9, 104
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ppc_md, i32 0, i32 0), align 8
  %13 = call i32 (...) %12()
  br label %22

14:                                               ; preds = %8
  %15 = load i32, i32* %1, align 4
  %16 = icmp eq i32 %15, 112
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  br i1 true, label %18, label %20

18:                                               ; preds = %17
  %19 = call i32 (...) @pm_power_off()
  br label %20

20:                                               ; preds = %18, %17
  br label %21

21:                                               ; preds = %20, %14
  br label %22

22:                                               ; preds = %21, %11
  br label %23

23:                                               ; preds = %22, %5
  ret void
}

declare dso_local i32 @inchar(...) #1

declare dso_local i32 @pm_power_off(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
