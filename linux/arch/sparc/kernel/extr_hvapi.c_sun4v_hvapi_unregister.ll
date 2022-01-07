; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_hvapi.c_sun4v_hvapi_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_hvapi.c_sun4v_hvapi_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.api_info = type { i32 }

@hvapi_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sun4v_hvapi_unregister(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.api_info*, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %4, align 8
  %6 = call i32 @spin_lock_irqsave(i32* @hvapi_lock, i64 %5)
  %7 = load i64, i64* %2, align 8
  %8 = call %struct.api_info* @__get_info(i64 %7)
  store %struct.api_info* %8, %struct.api_info** %3, align 8
  %9 = load %struct.api_info*, %struct.api_info** %3, align 8
  %10 = icmp ne %struct.api_info* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.api_info*, %struct.api_info** %3, align 8
  %13 = call i32 @__put_ref(%struct.api_info* %12)
  br label %14

14:                                               ; preds = %11, %1
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @spin_unlock_irqrestore(i32* @hvapi_lock, i64 %15)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.api_info* @__get_info(i64) #1

declare dso_local i32 @__put_ref(%struct.api_info*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
