; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/um/extr_tls_32.c_arch_switch_tls.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/um/extr_tls_32.c_arch_switch_tls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@host_supports_tls = common dso_local global i32 0, align 4
@O_FORCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arch_switch_tls(%struct.task_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.task_struct*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  %4 = load i32, i32* @host_supports_tls, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %18

7:                                                ; preds = %1
  %8 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %9 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @likely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %7
  %14 = load i32, i32* @O_FORCE, align 4
  %15 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %16 = call i32 @load_TLS(i32 %14, %struct.task_struct* %15)
  store i32 %16, i32* %2, align 4
  br label %18

17:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %17, %13, %6
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @load_TLS(i32, %struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
