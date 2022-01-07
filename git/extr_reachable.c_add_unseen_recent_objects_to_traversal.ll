; ModuleID = '/home/carl/AnghaBench/git/extr_reachable.c_add_unseen_recent_objects_to_traversal.c'
source_filename = "/home/carl/AnghaBench/git/extr_reachable.c_add_unseen_recent_objects_to_traversal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { i32 }
%struct.recent_data = type { i32, %struct.rev_info* }

@add_recent_loose = common dso_local global i32 0, align 4
@FOR_EACH_OBJECT_LOCAL_ONLY = common dso_local global i32 0, align 4
@add_recent_packed = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @add_unseen_recent_objects_to_traversal(%struct.rev_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rev_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.recent_data, align 8
  %7 = alloca i32, align 4
  store %struct.rev_info* %0, %struct.rev_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %9 = getelementptr inbounds %struct.recent_data, %struct.recent_data* %6, i32 0, i32 1
  store %struct.rev_info* %8, %struct.rev_info** %9, align 8
  %10 = load i32, i32* %5, align 4
  %11 = getelementptr inbounds %struct.recent_data, %struct.recent_data* %6, i32 0, i32 0
  store i32 %10, i32* %11, align 8
  %12 = load i32, i32* @add_recent_loose, align 4
  %13 = load i32, i32* @FOR_EACH_OBJECT_LOCAL_ONLY, align 4
  %14 = call i32 @for_each_loose_object(i32 %12, %struct.recent_data* %6, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %3, align 4
  br label %23

19:                                               ; preds = %2
  %20 = load i32, i32* @add_recent_packed, align 4
  %21 = load i32, i32* @FOR_EACH_OBJECT_LOCAL_ONLY, align 4
  %22 = call i32 @for_each_packed_object(i32 %20, %struct.recent_data* %6, i32 %21)
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %19, %17
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @for_each_loose_object(i32, %struct.recent_data*, i32) #1

declare dso_local i32 @for_each_packed_object(i32, %struct.recent_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
