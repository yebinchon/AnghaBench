; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powermac/extr_pfunc_core.c_pmf_find_function.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powermac/extr_pfunc_core.c_pmf_find_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmf_function = type { i32 }
%struct.device_node = type { i32 }

@pmf_lock = common dso_local global i32 0, align 4
@PMF_FLAGS_ON_DEMAND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pmf_function* @pmf_find_function(%struct.device_node* %0, i8* %1) #0 {
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pmf_function*, align 8
  %6 = alloca i64, align 8
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i64, i64* %6, align 8
  %8 = call i32 @spin_lock_irqsave(i32* @pmf_lock, i64 %7)
  %9 = load %struct.device_node*, %struct.device_node** %3, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = load i32, i32* @PMF_FLAGS_ON_DEMAND, align 4
  %12 = call %struct.pmf_function* @__pmf_find_function(%struct.device_node* %9, i8* %10, i32 %11)
  store %struct.pmf_function* %12, %struct.pmf_function** %5, align 8
  %13 = load %struct.pmf_function*, %struct.pmf_function** %5, align 8
  %14 = icmp ne %struct.pmf_function* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.pmf_function*, %struct.pmf_function** %5, align 8
  %17 = call %struct.pmf_function* @pmf_get_function(%struct.pmf_function* %16)
  store %struct.pmf_function* %17, %struct.pmf_function** %5, align 8
  br label %18

18:                                               ; preds = %15, %2
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @spin_unlock_irqrestore(i32* @pmf_lock, i64 %19)
  %21 = load %struct.pmf_function*, %struct.pmf_function** %5, align 8
  ret %struct.pmf_function* %21
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.pmf_function* @__pmf_find_function(%struct.device_node*, i8*, i32) #1

declare dso_local %struct.pmf_function* @pmf_get_function(%struct.pmf_function*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
