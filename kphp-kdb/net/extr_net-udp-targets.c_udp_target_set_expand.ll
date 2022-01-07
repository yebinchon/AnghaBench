; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-udp-targets.c_udp_target_set_expand.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-udp-targets.c_udp_target_set_expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udp_target_set = type { i32, %struct.udp_target*, i32, i32, i32, i32, i32, i32, i32 }
%struct.udp_target = type { %struct.udp_target_set* }
%struct.process_id = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @udp_target_set_expand(%struct.udp_target_set* %0) #0 {
  %2 = alloca %struct.udp_target_set*, align 8
  %3 = alloca %struct.process_id, align 4
  %4 = alloca %struct.udp_target*, align 8
  store %struct.udp_target_set* %0, %struct.udp_target_set** %2, align 8
  %5 = load %struct.udp_target_set*, %struct.udp_target_set** %2, align 8
  %6 = icmp ne %struct.udp_target_set* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.udp_target_set*, %struct.udp_target_set** %2, align 8
  %9 = getelementptr inbounds %struct.udp_target_set, %struct.udp_target_set* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 1
  br label %12

12:                                               ; preds = %7, %1
  %13 = phi i1 [ false, %1 ], [ %11, %7 ]
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.udp_target_set*, %struct.udp_target_set** %2, align 8
  %17 = getelementptr inbounds %struct.udp_target_set, %struct.udp_target_set* %16, i32 0, i32 8
  %18 = load i32, i32* %17, align 8
  %19 = getelementptr inbounds %struct.process_id, %struct.process_id* %3, i32 0, i32 3
  store i32 %18, i32* %19, align 4
  %20 = load %struct.udp_target_set*, %struct.udp_target_set** %2, align 8
  %21 = getelementptr inbounds %struct.udp_target_set, %struct.udp_target_set* %20, i32 0, i32 7
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.process_id, %struct.process_id* %3, i32 0, i32 2
  store i32 %22, i32* %23, align 4
  %24 = load %struct.udp_target_set*, %struct.udp_target_set** %2, align 8
  %25 = getelementptr inbounds %struct.udp_target_set, %struct.udp_target_set* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 8
  %27 = getelementptr inbounds %struct.process_id, %struct.process_id* %3, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  %28 = load %struct.udp_target_set*, %struct.udp_target_set** %2, align 8
  %29 = getelementptr inbounds %struct.udp_target_set, %struct.udp_target_set* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.process_id, %struct.process_id* %3, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  %32 = load %struct.udp_target_set*, %struct.udp_target_set** %2, align 8
  %33 = getelementptr inbounds %struct.udp_target_set, %struct.udp_target_set* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.udp_target_set*, %struct.udp_target_set** %2, align 8
  %36 = getelementptr inbounds %struct.udp_target_set, %struct.udp_target_set* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.udp_target_set*, %struct.udp_target_set** %2, align 8
  %39 = getelementptr inbounds %struct.udp_target_set, %struct.udp_target_set* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call %struct.udp_target* @udp_target_alloc(%struct.process_id* %3, i32 %34, i32 %37, i32 %40)
  store %struct.udp_target* %41, %struct.udp_target** %4, align 8
  %42 = load %struct.udp_target_set*, %struct.udp_target_set** %2, align 8
  %43 = getelementptr inbounds %struct.udp_target_set, %struct.udp_target_set* %42, i32 0, i32 0
  store i32 2, i32* %43, align 8
  %44 = load %struct.udp_target*, %struct.udp_target** %4, align 8
  %45 = load %struct.udp_target_set*, %struct.udp_target_set** %2, align 8
  %46 = getelementptr inbounds %struct.udp_target_set, %struct.udp_target_set* %45, i32 0, i32 1
  store %struct.udp_target* %44, %struct.udp_target** %46, align 8
  %47 = load %struct.udp_target_set*, %struct.udp_target_set** %2, align 8
  %48 = load %struct.udp_target*, %struct.udp_target** %4, align 8
  %49 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %48, i32 0, i32 0
  store %struct.udp_target_set* %47, %struct.udp_target_set** %49, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.udp_target* @udp_target_alloc(%struct.process_id*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
