; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-rpc/extr_ecard.c_ecard_call.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-rpc/extr_ecard.c_ecard_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecard_request = type { i32* }

@completion = common dso_local global i32 0, align 4
@ecard_mutex = common dso_local global i32 0, align 4
@ecard_req = common dso_local global %struct.ecard_request* null, align 8
@ecard_wait = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecard_request*)* @ecard_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecard_call(%struct.ecard_request* %0) #0 {
  %2 = alloca %struct.ecard_request*, align 8
  store %struct.ecard_request* %0, %struct.ecard_request** %2, align 8
  %3 = load i32, i32* @completion, align 4
  %4 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %3)
  %5 = load %struct.ecard_request*, %struct.ecard_request** %2, align 8
  %6 = getelementptr inbounds %struct.ecard_request, %struct.ecard_request* %5, i32 0, i32 0
  store i32* @completion, i32** %6, align 8
  %7 = call i32 @mutex_lock(i32* @ecard_mutex)
  %8 = load %struct.ecard_request*, %struct.ecard_request** %2, align 8
  store %struct.ecard_request* %8, %struct.ecard_request** @ecard_req, align 8
  %9 = call i32 @wake_up(i32* @ecard_wait)
  %10 = call i32 @wait_for_completion(i32* @completion)
  %11 = call i32 @mutex_unlock(i32* @ecard_mutex)
  ret void
}

declare dso_local i32 @DECLARE_COMPLETION_ONSTACK(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
