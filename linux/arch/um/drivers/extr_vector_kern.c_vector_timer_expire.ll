; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_vector_kern.c_vector_timer_expire.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_vector_kern.c_vector_timer_expire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vector_private = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.timer_list = type { i32 }

@tl = common dso_local global i32 0, align 4
@vp = common dso_local global %struct.vector_private* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @vector_timer_expire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vector_timer_expire(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.vector_private*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %5 = ptrtoint %struct.vector_private* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @tl, align 4
  %8 = call %struct.vector_private* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.vector_private* %8, %struct.vector_private** %3, align 8
  %9 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %10 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %11, align 4
  %14 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %15 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @vector_send(i32 %16)
  ret void
}

declare dso_local %struct.vector_private* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @vector_send(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
