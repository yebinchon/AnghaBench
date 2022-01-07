; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_sched.c___node_allowed.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_sched.c___node_allowed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spu_context = type { i32 }
%struct.cpumask = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spu_context*, i32)* @__node_allowed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__node_allowed(%struct.spu_context* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spu_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cpumask*, align 8
  store %struct.spu_context* %0, %struct.spu_context** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i64 @nr_cpus_node(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.cpumask* @cpumask_of_node(i32 %11)
  store %struct.cpumask* %12, %struct.cpumask** %6, align 8
  %13 = load %struct.cpumask*, %struct.cpumask** %6, align 8
  %14 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %15 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %14, i32 0, i32 0
  %16 = call i64 @cpumask_intersects(%struct.cpumask* %13, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  store i32 1, i32* %3, align 4
  br label %21

19:                                               ; preds = %10
  br label %20

20:                                               ; preds = %19, %2
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %20, %18
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i64 @nr_cpus_node(i32) #1

declare dso_local %struct.cpumask* @cpumask_of_node(i32) #1

declare dso_local i64 @cpumask_intersects(%struct.cpumask*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
