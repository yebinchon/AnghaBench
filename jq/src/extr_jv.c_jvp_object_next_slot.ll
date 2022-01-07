; ModuleID = '/home/carl/AnghaBench/jq/src/extr_jv.c_jvp_object_next_slot.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_jv.c_jvp_object_next_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_slot = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.object_slot* (i32, %struct.object_slot*)* @jvp_object_next_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.object_slot* @jvp_object_next_slot(i32 %0, %struct.object_slot* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.object_slot*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.object_slot* %1, %struct.object_slot** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.object_slot*, %struct.object_slot** %4, align 8
  %7 = getelementptr inbounds %struct.object_slot, %struct.object_slot* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.object_slot* @jvp_object_get_slot(i32 %5, i32 %8)
  ret %struct.object_slot* %9
}

declare dso_local %struct.object_slot* @jvp_object_get_slot(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
