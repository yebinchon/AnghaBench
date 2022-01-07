; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-cgroup.c___blkg_lookup_create.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-cgroup.c___blkg_lookup_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkcg_gq = type { i32 }
%struct.blkcg = type { i32 }
%struct.request_queue = type { %struct.blkcg_gq*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.blkcg_gq* @__blkg_lookup_create(%struct.blkcg* %0, %struct.request_queue* %1) #0 {
  %3 = alloca %struct.blkcg_gq*, align 8
  %4 = alloca %struct.blkcg*, align 8
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca %struct.blkcg_gq*, align 8
  %7 = alloca %struct.blkcg*, align 8
  %8 = alloca %struct.blkcg*, align 8
  %9 = alloca %struct.blkcg_gq*, align 8
  store %struct.blkcg* %0, %struct.blkcg** %4, align 8
  store %struct.request_queue* %1, %struct.request_queue** %5, align 8
  %10 = call i32 (...) @rcu_read_lock_held()
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @WARN_ON_ONCE(i32 %13)
  %15 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %16 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %15, i32 0, i32 1
  %17 = call i32 @lockdep_assert_held(i32* %16)
  %18 = load %struct.blkcg*, %struct.blkcg** %4, align 8
  %19 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %20 = call %struct.blkcg_gq* @__blkg_lookup(%struct.blkcg* %18, %struct.request_queue* %19, i32 1)
  store %struct.blkcg_gq* %20, %struct.blkcg_gq** %6, align 8
  %21 = load %struct.blkcg_gq*, %struct.blkcg_gq** %6, align 8
  %22 = icmp ne %struct.blkcg_gq* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load %struct.blkcg_gq*, %struct.blkcg_gq** %6, align 8
  store %struct.blkcg_gq* %24, %struct.blkcg_gq** %3, align 8
  br label %64

25:                                               ; preds = %2
  br label %26

26:                                               ; preds = %25, %63
  %27 = load %struct.blkcg*, %struct.blkcg** %4, align 8
  store %struct.blkcg* %27, %struct.blkcg** %7, align 8
  %28 = load %struct.blkcg*, %struct.blkcg** %4, align 8
  %29 = call %struct.blkcg* @blkcg_parent(%struct.blkcg* %28)
  store %struct.blkcg* %29, %struct.blkcg** %8, align 8
  %30 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %31 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %30, i32 0, i32 0
  %32 = load %struct.blkcg_gq*, %struct.blkcg_gq** %31, align 8
  store %struct.blkcg_gq* %32, %struct.blkcg_gq** %9, align 8
  br label %33

33:                                               ; preds = %44, %26
  %34 = load %struct.blkcg*, %struct.blkcg** %8, align 8
  %35 = icmp ne %struct.blkcg* %34, null
  br i1 %35, label %36, label %48

36:                                               ; preds = %33
  %37 = load %struct.blkcg*, %struct.blkcg** %8, align 8
  %38 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %39 = call %struct.blkcg_gq* @__blkg_lookup(%struct.blkcg* %37, %struct.request_queue* %38, i32 0)
  store %struct.blkcg_gq* %39, %struct.blkcg_gq** %6, align 8
  %40 = load %struct.blkcg_gq*, %struct.blkcg_gq** %6, align 8
  %41 = icmp ne %struct.blkcg_gq* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load %struct.blkcg_gq*, %struct.blkcg_gq** %6, align 8
  store %struct.blkcg_gq* %43, %struct.blkcg_gq** %9, align 8
  br label %48

44:                                               ; preds = %36
  %45 = load %struct.blkcg*, %struct.blkcg** %8, align 8
  store %struct.blkcg* %45, %struct.blkcg** %7, align 8
  %46 = load %struct.blkcg*, %struct.blkcg** %8, align 8
  %47 = call %struct.blkcg* @blkcg_parent(%struct.blkcg* %46)
  store %struct.blkcg* %47, %struct.blkcg** %8, align 8
  br label %33

48:                                               ; preds = %42, %33
  %49 = load %struct.blkcg*, %struct.blkcg** %7, align 8
  %50 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %51 = call %struct.blkcg_gq* @blkg_create(%struct.blkcg* %49, %struct.request_queue* %50, i32* null)
  store %struct.blkcg_gq* %51, %struct.blkcg_gq** %6, align 8
  %52 = load %struct.blkcg_gq*, %struct.blkcg_gq** %6, align 8
  %53 = call i64 @IS_ERR(%struct.blkcg_gq* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load %struct.blkcg_gq*, %struct.blkcg_gq** %9, align 8
  store %struct.blkcg_gq* %56, %struct.blkcg_gq** %3, align 8
  br label %64

57:                                               ; preds = %48
  %58 = load %struct.blkcg*, %struct.blkcg** %7, align 8
  %59 = load %struct.blkcg*, %struct.blkcg** %4, align 8
  %60 = icmp eq %struct.blkcg* %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load %struct.blkcg_gq*, %struct.blkcg_gq** %6, align 8
  store %struct.blkcg_gq* %62, %struct.blkcg_gq** %3, align 8
  br label %64

63:                                               ; preds = %57
  br label %26

64:                                               ; preds = %61, %55, %23
  %65 = load %struct.blkcg_gq*, %struct.blkcg_gq** %3, align 8
  ret %struct.blkcg_gq* %65
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @rcu_read_lock_held(...) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.blkcg_gq* @__blkg_lookup(%struct.blkcg*, %struct.request_queue*, i32) #1

declare dso_local %struct.blkcg* @blkcg_parent(%struct.blkcg*) #1

declare dso_local %struct.blkcg_gq* @blkg_create(%struct.blkcg*, %struct.request_queue*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.blkcg_gq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
