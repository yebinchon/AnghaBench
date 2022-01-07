; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/fpu/extr_core.c_fpu__clear.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/fpu/extr_core.c_fpu__clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.fpu }
%struct.fpu = type { i32 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@X86_FEATURE_FPU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fpu__clear(%struct.fpu* %0) #0 {
  %2 = alloca %struct.fpu*, align 8
  store %struct.fpu* %0, %struct.fpu** %2, align 8
  %3 = load %struct.fpu*, %struct.fpu** %2, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = icmp ne %struct.fpu* %3, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 @WARN_ON_FPU(i32 %8)
  %10 = load %struct.fpu*, %struct.fpu** %2, align 8
  %11 = call i32 @fpu__drop(%struct.fpu* %10)
  %12 = load %struct.fpu*, %struct.fpu** %2, align 8
  %13 = call i32 @fpu__initialize(%struct.fpu* %12)
  %14 = load i32, i32* @X86_FEATURE_FPU, align 4
  %15 = call i64 @static_cpu_has(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = call i32 (...) @copy_init_fpstate_to_fpregs()
  br label %19

19:                                               ; preds = %17, %1
  ret void
}

declare dso_local i32 @WARN_ON_FPU(i32) #1

declare dso_local i32 @fpu__drop(%struct.fpu*) #1

declare dso_local i32 @fpu__initialize(%struct.fpu*) #1

declare dso_local i64 @static_cpu_has(i32) #1

declare dso_local i32 @copy_init_fpstate_to_fpregs(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
