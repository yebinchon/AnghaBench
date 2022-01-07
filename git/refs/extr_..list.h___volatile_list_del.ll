; ModuleID = '/home/carl/AnghaBench/git/refs/extr_..list.h___volatile_list_del.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_..list.h___volatile_list_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.volatile_list_head = type { %struct.volatile_list_head*, %struct.volatile_list_head* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.volatile_list_head*, %struct.volatile_list_head*)* @__volatile_list_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__volatile_list_del(%struct.volatile_list_head* %0, %struct.volatile_list_head* %1) #0 {
  %3 = alloca %struct.volatile_list_head*, align 8
  %4 = alloca %struct.volatile_list_head*, align 8
  store %struct.volatile_list_head* %0, %struct.volatile_list_head** %3, align 8
  store %struct.volatile_list_head* %1, %struct.volatile_list_head** %4, align 8
  %5 = load %struct.volatile_list_head*, %struct.volatile_list_head** %3, align 8
  %6 = load %struct.volatile_list_head*, %struct.volatile_list_head** %4, align 8
  %7 = getelementptr inbounds %struct.volatile_list_head, %struct.volatile_list_head* %6, i32 0, i32 1
  store volatile %struct.volatile_list_head* %5, %struct.volatile_list_head** %7, align 8
  %8 = load %struct.volatile_list_head*, %struct.volatile_list_head** %4, align 8
  %9 = load %struct.volatile_list_head*, %struct.volatile_list_head** %3, align 8
  %10 = getelementptr inbounds %struct.volatile_list_head, %struct.volatile_list_head* %9, i32 0, i32 0
  store volatile %struct.volatile_list_head* %8, %struct.volatile_list_head** %10, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
