; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bfq-wf2q.c_bfq_forget_idle.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bfq-wf2q.c_bfq_forget_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfq_service_tree = type { i32, i32, %struct.bfq_entity*, %struct.bfq_entity* }
%struct.bfq_entity = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfq_service_tree*)* @bfq_forget_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfq_forget_idle(%struct.bfq_service_tree* %0) #0 {
  %2 = alloca %struct.bfq_service_tree*, align 8
  %3 = alloca %struct.bfq_entity*, align 8
  %4 = alloca %struct.bfq_entity*, align 8
  store %struct.bfq_service_tree* %0, %struct.bfq_service_tree** %2, align 8
  %5 = load %struct.bfq_service_tree*, %struct.bfq_service_tree** %2, align 8
  %6 = getelementptr inbounds %struct.bfq_service_tree, %struct.bfq_service_tree* %5, i32 0, i32 3
  %7 = load %struct.bfq_entity*, %struct.bfq_entity** %6, align 8
  store %struct.bfq_entity* %7, %struct.bfq_entity** %3, align 8
  %8 = load %struct.bfq_service_tree*, %struct.bfq_service_tree** %2, align 8
  %9 = getelementptr inbounds %struct.bfq_service_tree, %struct.bfq_service_tree* %8, i32 0, i32 2
  %10 = load %struct.bfq_entity*, %struct.bfq_entity** %9, align 8
  store %struct.bfq_entity* %10, %struct.bfq_entity** %4, align 8
  %11 = load %struct.bfq_service_tree*, %struct.bfq_service_tree** %2, align 8
  %12 = getelementptr inbounds %struct.bfq_service_tree, %struct.bfq_service_tree* %11, i32 0, i32 1
  %13 = call i64 @RB_EMPTY_ROOT(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %33

15:                                               ; preds = %1
  %16 = load %struct.bfq_entity*, %struct.bfq_entity** %4, align 8
  %17 = icmp ne %struct.bfq_entity* %16, null
  br i1 %17, label %18, label %33

18:                                               ; preds = %15
  %19 = load %struct.bfq_entity*, %struct.bfq_entity** %4, align 8
  %20 = getelementptr inbounds %struct.bfq_entity, %struct.bfq_entity* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.bfq_service_tree*, %struct.bfq_service_tree** %2, align 8
  %23 = getelementptr inbounds %struct.bfq_service_tree, %struct.bfq_service_tree* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @bfq_gt(i32 %21, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %18
  %28 = load %struct.bfq_entity*, %struct.bfq_entity** %4, align 8
  %29 = getelementptr inbounds %struct.bfq_entity, %struct.bfq_entity* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.bfq_service_tree*, %struct.bfq_service_tree** %2, align 8
  %32 = getelementptr inbounds %struct.bfq_service_tree, %struct.bfq_service_tree* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  br label %33

33:                                               ; preds = %27, %18, %15, %1
  %34 = load %struct.bfq_entity*, %struct.bfq_entity** %3, align 8
  %35 = icmp ne %struct.bfq_entity* %34, null
  br i1 %35, label %36, label %49

36:                                               ; preds = %33
  %37 = load %struct.bfq_entity*, %struct.bfq_entity** %3, align 8
  %38 = getelementptr inbounds %struct.bfq_entity, %struct.bfq_entity* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.bfq_service_tree*, %struct.bfq_service_tree** %2, align 8
  %41 = getelementptr inbounds %struct.bfq_service_tree, %struct.bfq_service_tree* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @bfq_gt(i32 %39, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %36
  %46 = load %struct.bfq_service_tree*, %struct.bfq_service_tree** %2, align 8
  %47 = load %struct.bfq_entity*, %struct.bfq_entity** %3, align 8
  %48 = call i32 @bfq_put_idle_entity(%struct.bfq_service_tree* %46, %struct.bfq_entity* %47)
  br label %49

49:                                               ; preds = %45, %36, %33
  ret void
}

declare dso_local i64 @RB_EMPTY_ROOT(i32*) #1

declare dso_local i32 @bfq_gt(i32, i32) #1

declare dso_local i32 @bfq_put_idle_entity(%struct.bfq_service_tree*, %struct.bfq_entity*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
