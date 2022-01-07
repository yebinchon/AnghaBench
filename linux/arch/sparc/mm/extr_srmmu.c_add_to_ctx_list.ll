; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/mm/extr_srmmu.c_add_to_ctx_list.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/mm/extr_srmmu.c_add_to_ctx_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctx_list = type { %struct.ctx_list*, %struct.ctx_list* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctx_list*, %struct.ctx_list*)* @add_to_ctx_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_to_ctx_list(%struct.ctx_list* %0, %struct.ctx_list* %1) #0 {
  %3 = alloca %struct.ctx_list*, align 8
  %4 = alloca %struct.ctx_list*, align 8
  store %struct.ctx_list* %0, %struct.ctx_list** %3, align 8
  store %struct.ctx_list* %1, %struct.ctx_list** %4, align 8
  %5 = load %struct.ctx_list*, %struct.ctx_list** %3, align 8
  %6 = load %struct.ctx_list*, %struct.ctx_list** %4, align 8
  %7 = getelementptr inbounds %struct.ctx_list, %struct.ctx_list* %6, i32 0, i32 1
  store %struct.ctx_list* %5, %struct.ctx_list** %7, align 8
  %8 = load %struct.ctx_list*, %struct.ctx_list** %4, align 8
  %9 = load %struct.ctx_list*, %struct.ctx_list** %3, align 8
  %10 = getelementptr inbounds %struct.ctx_list, %struct.ctx_list* %9, i32 0, i32 0
  %11 = load %struct.ctx_list*, %struct.ctx_list** %10, align 8
  %12 = load %struct.ctx_list*, %struct.ctx_list** %4, align 8
  %13 = getelementptr inbounds %struct.ctx_list, %struct.ctx_list* %12, i32 0, i32 0
  store %struct.ctx_list* %11, %struct.ctx_list** %13, align 8
  %14 = getelementptr inbounds %struct.ctx_list, %struct.ctx_list* %11, i32 0, i32 1
  store %struct.ctx_list* %8, %struct.ctx_list** %14, align 8
  %15 = load %struct.ctx_list*, %struct.ctx_list** %4, align 8
  %16 = load %struct.ctx_list*, %struct.ctx_list** %3, align 8
  %17 = getelementptr inbounds %struct.ctx_list, %struct.ctx_list* %16, i32 0, i32 0
  store %struct.ctx_list* %15, %struct.ctx_list** %17, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
