; ModuleID = '/home/carl/AnghaBench/git/extr_transport.c_transport_get_remote_refs.c'
source_filename = "/home/carl/AnghaBench/git/extr_transport.c_transport_get_remote_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref = type { i32 }
%struct.transport = type { i32, %struct.ref*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ref* (%struct.transport*, i32, %struct.argv_array*)* }
%struct.argv_array = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ref* @transport_get_remote_refs(%struct.transport* %0, %struct.argv_array* %1) #0 {
  %3 = alloca %struct.transport*, align 8
  %4 = alloca %struct.argv_array*, align 8
  store %struct.transport* %0, %struct.transport** %3, align 8
  store %struct.argv_array* %1, %struct.argv_array** %4, align 8
  %5 = load %struct.transport*, %struct.transport** %3, align 8
  %6 = getelementptr inbounds %struct.transport, %struct.transport* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %22, label %9

9:                                                ; preds = %2
  %10 = load %struct.transport*, %struct.transport** %3, align 8
  %11 = getelementptr inbounds %struct.transport, %struct.transport* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.ref* (%struct.transport*, i32, %struct.argv_array*)*, %struct.ref* (%struct.transport*, i32, %struct.argv_array*)** %13, align 8
  %15 = load %struct.transport*, %struct.transport** %3, align 8
  %16 = load %struct.argv_array*, %struct.argv_array** %4, align 8
  %17 = call %struct.ref* %14(%struct.transport* %15, i32 0, %struct.argv_array* %16)
  %18 = load %struct.transport*, %struct.transport** %3, align 8
  %19 = getelementptr inbounds %struct.transport, %struct.transport* %18, i32 0, i32 1
  store %struct.ref* %17, %struct.ref** %19, align 8
  %20 = load %struct.transport*, %struct.transport** %3, align 8
  %21 = getelementptr inbounds %struct.transport, %struct.transport* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  br label %22

22:                                               ; preds = %9, %2
  %23 = load %struct.transport*, %struct.transport** %3, align 8
  %24 = getelementptr inbounds %struct.transport, %struct.transport* %23, i32 0, i32 1
  %25 = load %struct.ref*, %struct.ref** %24, align 8
  ret %struct.ref* %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
