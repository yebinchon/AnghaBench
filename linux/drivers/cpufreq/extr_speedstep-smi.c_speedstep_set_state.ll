; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_speedstep-smi.c_speedstep_set_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_speedstep-smi.c_speedstep_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@SET_SPEEDSTEP_STATE = common dso_local global i32 0, align 4
@smi_sig = common dso_local global i32 0, align 4
@smi_cmd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"trying to set frequency to state %u with command %x at port %x\0A\00", align 1
@smi_port = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"retry %u, previous result %u, waiting...\0A\00", align 1
@SMI_TRIES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [58 x i8] c"change to %u MHz succeeded after %u tries with result %u\0A\00", align 1
@speedstep_freqs = common dso_local global %struct.TYPE_2__* null, align 8
@.str.3 = private unnamed_addr constant [59 x i8] c"change to state %u failed with new_state %u and result %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @speedstep_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @speedstep_set_state(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %10 = load i32, i32* @SET_SPEEDSTEP_STATE, align 4
  store i32 %10, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* %2, align 4
  %12 = icmp ugt i32 %11, 1
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %87

14:                                               ; preds = %1
  %15 = call i32 (...) @preempt_disable()
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @local_irq_save(i64 %16)
  %18 = load i32, i32* @smi_sig, align 4
  %19 = and i32 %18, -256
  %20 = load i32, i32* @smi_cmd, align 4
  %21 = and i32 %20, 255
  %22 = or i32 %19, %21
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @smi_port, align 4
  %26 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %61, %14
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %3, align 4
  %33 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 %32)
  %34 = call i32 (...) @local_irq_enable()
  %35 = load i32, i32* %9, align 4
  %36 = mul i32 %35, 50
  %37 = call i32 @mdelay(i32 %36)
  %38 = call i32 (...) @local_irq_disable()
  br label %39

39:                                               ; preds = %30, %27
  %40 = load i32, i32* %9, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %2, align 4
  %45 = load i32, i32* @smi_port, align 4
  %46 = call { i32, i32, i32, i32, i32, i32 } asm sideeffect "push %ebp\0Aout %al, (%dx)\0Apop %ebp", "={bx},={di},={cx},={ax},={dx},={si},{ax},{bx},{cx},{dx},{si},{di},~{dirflag},~{fpsr},~{flags}"(i32 %42, i32 %43, i32 %44, i32 %45, i32 0, i32 0) #2, !srcloc !2
  %47 = extractvalue { i32, i32, i32, i32, i32, i32 } %46, 0
  %48 = extractvalue { i32, i32, i32, i32, i32, i32 } %46, 1
  %49 = extractvalue { i32, i32, i32, i32, i32, i32 } %46, 2
  %50 = extractvalue { i32, i32, i32, i32, i32, i32 } %46, 3
  %51 = extractvalue { i32, i32, i32, i32, i32, i32 } %46, 4
  %52 = extractvalue { i32, i32, i32, i32, i32, i32 } %46, 5
  store i32 %47, i32* %5, align 4
  store i32 %48, i32* %3, align 4
  store i32 %49, i32* %6, align 4
  store i32 %50, i32* %6, align 4
  store i32 %51, i32* %6, align 4
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %39
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %2, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @SMI_TRIES, align 4
  %60 = icmp ule i32 %58, %59
  br label %61

61:                                               ; preds = %57, %53
  %62 = phi i1 [ false, %53 ], [ %60, %57 ]
  br i1 %62, label %27, label %63

63:                                               ; preds = %61
  %64 = load i64, i64* %7, align 8
  %65 = call i32 @local_irq_restore(i64 %64)
  %66 = call i32 (...) @preempt_enable()
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %2, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %81

70:                                               ; preds = %63
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @speedstep_freqs, align 8
  %72 = load i32, i32* %5, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = sdiv i32 %76, 1000
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %3, align 4
  %80 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i32 %77, i32 %78, i32 %79)
  br label %86

81:                                               ; preds = %63
  %82 = load i32, i32* %2, align 4
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* %3, align 4
  %85 = call i32 @pr_err(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0), i32 %82, i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %81, %70
  br label %87

87:                                               ; preds = %86, %13
  ret void
}

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, ...) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @preempt_enable(...) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1357, i32 1376, i32 1400}
