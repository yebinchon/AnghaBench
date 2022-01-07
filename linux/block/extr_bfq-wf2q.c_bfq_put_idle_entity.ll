; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bfq-wf2q.c_bfq_put_idle_entity.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bfq-wf2q.c_bfq_put_idle_entity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfq_service_tree = type { i32 }
%struct.bfq_entity = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.bfq_entity* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfq_put_idle_entity(%struct.bfq_service_tree* %0, %struct.bfq_entity* %1) #0 {
  %3 = alloca %struct.bfq_service_tree*, align 8
  %4 = alloca %struct.bfq_entity*, align 8
  store %struct.bfq_service_tree* %0, %struct.bfq_service_tree** %3, align 8
  store %struct.bfq_entity* %1, %struct.bfq_entity** %4, align 8
  %5 = load %struct.bfq_service_tree*, %struct.bfq_service_tree** %3, align 8
  %6 = load %struct.bfq_entity*, %struct.bfq_entity** %4, align 8
  %7 = call i32 @bfq_idle_extract(%struct.bfq_service_tree* %5, %struct.bfq_entity* %6)
  %8 = load %struct.bfq_service_tree*, %struct.bfq_service_tree** %3, align 8
  %9 = load %struct.bfq_entity*, %struct.bfq_entity** %4, align 8
  %10 = load %struct.bfq_entity*, %struct.bfq_entity** %4, align 8
  %11 = load %struct.bfq_entity*, %struct.bfq_entity** %4, align 8
  %12 = getelementptr inbounds %struct.bfq_entity, %struct.bfq_entity* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.bfq_entity*, %struct.bfq_entity** %14, align 8
  %16 = icmp eq %struct.bfq_entity* %10, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @bfq_forget_entity(%struct.bfq_service_tree* %8, %struct.bfq_entity* %9, i32 %17)
  ret void
}

declare dso_local i32 @bfq_idle_extract(%struct.bfq_service_tree*, %struct.bfq_entity*) #1

declare dso_local i32 @bfq_forget_entity(%struct.bfq_service_tree*, %struct.bfq_entity*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
