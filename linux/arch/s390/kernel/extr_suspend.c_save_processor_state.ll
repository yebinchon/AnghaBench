; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_suspend.c_save_processor_state.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_suspend.c_save_processor_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@PSW_MASK_MCHECK = common dso_local global i32 0, align 4
@S390_lowcore = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @save_processor_state() #0 {
  %1 = call i32 (...) @local_mcck_disable()
  %2 = call i32 @__ctl_clear_bit(i32 0, i32 28)
  %3 = load i32, i32* @PSW_MASK_MCHECK, align 4
  %4 = xor i32 %3, -1
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @S390_lowcore, i32 0, i32 3, i32 0), align 4
  %6 = and i32 %5, %4
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @S390_lowcore, i32 0, i32 3, i32 0), align 4
  %7 = load i32, i32* @PSW_MASK_MCHECK, align 4
  %8 = xor i32 %7, -1
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @S390_lowcore, i32 0, i32 2, i32 0), align 4
  %10 = and i32 %9, %8
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @S390_lowcore, i32 0, i32 2, i32 0), align 4
  %11 = load i32, i32* @PSW_MASK_MCHECK, align 4
  %12 = xor i32 %11, -1
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @S390_lowcore, i32 0, i32 1, i32 0), align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @S390_lowcore, i32 0, i32 1, i32 0), align 4
  %15 = load i32, i32* @PSW_MASK_MCHECK, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @S390_lowcore, i32 0, i32 0, i32 0), align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @S390_lowcore, i32 0, i32 0, i32 0), align 4
  ret void
}

declare dso_local i32 @local_mcck_disable(...) #1

declare dso_local i32 @__ctl_clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
