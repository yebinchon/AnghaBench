; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-cgroup.c_blkg_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-cgroup.c_blkg_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkcg_policy = type { %struct.blkg_policy_data* (i32, %struct.request_queue*, %struct.blkcg.0*)* }
%struct.blkg_policy_data = type { i32, %struct.blkcg_gq* }
%struct.blkcg_gq = type { %struct.blkg_policy_data**, %struct.blkcg*, i32, i32, i32, i32, %struct.request_queue*, i32, i32, i32 }
%struct.blkcg = type { i32 }
%struct.request_queue = type { i32 }
%struct.blkcg.0 = type opaque

@blkg_release = common dso_local global i32 0, align 4
@blkg_async_bio_workfn = common dso_local global i32 0, align 4
@BLKCG_MAX_POLS = common dso_local global i32 0, align 4
@blkcg_policy = common dso_local global %struct.blkcg_policy** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.blkcg_gq* (%struct.blkcg*, %struct.request_queue*, i32)* @blkg_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.blkcg_gq* @blkg_alloc(%struct.blkcg* %0, %struct.request_queue* %1, i32 %2) #0 {
  %4 = alloca %struct.blkcg_gq*, align 8
  %5 = alloca %struct.blkcg*, align 8
  %6 = alloca %struct.request_queue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.blkcg_gq*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.blkcg_policy*, align 8
  %11 = alloca %struct.blkg_policy_data*, align 8
  store %struct.blkcg* %0, %struct.blkcg** %5, align 8
  store %struct.request_queue* %1, %struct.request_queue** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %14 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.blkcg_gq* @kzalloc_node(i32 56, i32 %12, i32 %15)
  store %struct.blkcg_gq* %16, %struct.blkcg_gq** %8, align 8
  %17 = load %struct.blkcg_gq*, %struct.blkcg_gq** %8, align 8
  %18 = icmp ne %struct.blkcg_gq* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store %struct.blkcg_gq* null, %struct.blkcg_gq** %4, align 8
  br label %110

20:                                               ; preds = %3
  %21 = load %struct.blkcg_gq*, %struct.blkcg_gq** %8, align 8
  %22 = getelementptr inbounds %struct.blkcg_gq, %struct.blkcg_gq* %21, i32 0, i32 9
  %23 = load i32, i32* @blkg_release, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i64 @percpu_ref_init(i32* %22, i32 %23, i32 0, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %107

28:                                               ; preds = %20
  %29 = load %struct.blkcg_gq*, %struct.blkcg_gq** %8, align 8
  %30 = getelementptr inbounds %struct.blkcg_gq, %struct.blkcg_gq* %29, i32 0, i32 8
  %31 = load i32, i32* %7, align 4
  %32 = call i64 @blkg_rwstat_init(i32* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load %struct.blkcg_gq*, %struct.blkcg_gq** %8, align 8
  %36 = getelementptr inbounds %struct.blkcg_gq, %struct.blkcg_gq* %35, i32 0, i32 7
  %37 = load i32, i32* %7, align 4
  %38 = call i64 @blkg_rwstat_init(i32* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34, %28
  br label %107

41:                                               ; preds = %34
  %42 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %43 = load %struct.blkcg_gq*, %struct.blkcg_gq** %8, align 8
  %44 = getelementptr inbounds %struct.blkcg_gq, %struct.blkcg_gq* %43, i32 0, i32 6
  store %struct.request_queue* %42, %struct.request_queue** %44, align 8
  %45 = load %struct.blkcg_gq*, %struct.blkcg_gq** %8, align 8
  %46 = getelementptr inbounds %struct.blkcg_gq, %struct.blkcg_gq* %45, i32 0, i32 5
  %47 = call i32 @INIT_LIST_HEAD(i32* %46)
  %48 = load %struct.blkcg_gq*, %struct.blkcg_gq** %8, align 8
  %49 = getelementptr inbounds %struct.blkcg_gq, %struct.blkcg_gq* %48, i32 0, i32 4
  %50 = call i32 @spin_lock_init(i32* %49)
  %51 = load %struct.blkcg_gq*, %struct.blkcg_gq** %8, align 8
  %52 = getelementptr inbounds %struct.blkcg_gq, %struct.blkcg_gq* %51, i32 0, i32 3
  %53 = call i32 @bio_list_init(i32* %52)
  %54 = load %struct.blkcg_gq*, %struct.blkcg_gq** %8, align 8
  %55 = getelementptr inbounds %struct.blkcg_gq, %struct.blkcg_gq* %54, i32 0, i32 2
  %56 = load i32, i32* @blkg_async_bio_workfn, align 4
  %57 = call i32 @INIT_WORK(i32* %55, i32 %56)
  %58 = load %struct.blkcg*, %struct.blkcg** %5, align 8
  %59 = load %struct.blkcg_gq*, %struct.blkcg_gq** %8, align 8
  %60 = getelementptr inbounds %struct.blkcg_gq, %struct.blkcg_gq* %59, i32 0, i32 1
  store %struct.blkcg* %58, %struct.blkcg** %60, align 8
  store i32 0, i32* %9, align 4
  br label %61

61:                                               ; preds = %102, %41
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @BLKCG_MAX_POLS, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %105

65:                                               ; preds = %61
  %66 = load %struct.blkcg_policy**, %struct.blkcg_policy*** @blkcg_policy, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.blkcg_policy*, %struct.blkcg_policy** %66, i64 %68
  %70 = load %struct.blkcg_policy*, %struct.blkcg_policy** %69, align 8
  store %struct.blkcg_policy* %70, %struct.blkcg_policy** %10, align 8
  %71 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %72 = load %struct.blkcg_policy*, %struct.blkcg_policy** %10, align 8
  %73 = call i32 @blkcg_policy_enabled(%struct.request_queue* %71, %struct.blkcg_policy* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %65
  br label %102

76:                                               ; preds = %65
  %77 = load %struct.blkcg_policy*, %struct.blkcg_policy** %10, align 8
  %78 = getelementptr inbounds %struct.blkcg_policy, %struct.blkcg_policy* %77, i32 0, i32 0
  %79 = load %struct.blkg_policy_data* (i32, %struct.request_queue*, %struct.blkcg.0*)*, %struct.blkg_policy_data* (i32, %struct.request_queue*, %struct.blkcg.0*)** %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %82 = load %struct.blkcg*, %struct.blkcg** %5, align 8
  %83 = bitcast %struct.blkcg* %82 to %struct.blkcg.0*
  %84 = call %struct.blkg_policy_data* %79(i32 %80, %struct.request_queue* %81, %struct.blkcg.0* %83)
  store %struct.blkg_policy_data* %84, %struct.blkg_policy_data** %11, align 8
  %85 = load %struct.blkg_policy_data*, %struct.blkg_policy_data** %11, align 8
  %86 = icmp ne %struct.blkg_policy_data* %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %76
  br label %107

88:                                               ; preds = %76
  %89 = load %struct.blkg_policy_data*, %struct.blkg_policy_data** %11, align 8
  %90 = load %struct.blkcg_gq*, %struct.blkcg_gq** %8, align 8
  %91 = getelementptr inbounds %struct.blkcg_gq, %struct.blkcg_gq* %90, i32 0, i32 0
  %92 = load %struct.blkg_policy_data**, %struct.blkg_policy_data*** %91, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.blkg_policy_data*, %struct.blkg_policy_data** %92, i64 %94
  store %struct.blkg_policy_data* %89, %struct.blkg_policy_data** %95, align 8
  %96 = load %struct.blkcg_gq*, %struct.blkcg_gq** %8, align 8
  %97 = load %struct.blkg_policy_data*, %struct.blkg_policy_data** %11, align 8
  %98 = getelementptr inbounds %struct.blkg_policy_data, %struct.blkg_policy_data* %97, i32 0, i32 1
  store %struct.blkcg_gq* %96, %struct.blkcg_gq** %98, align 8
  %99 = load i32, i32* %9, align 4
  %100 = load %struct.blkg_policy_data*, %struct.blkg_policy_data** %11, align 8
  %101 = getelementptr inbounds %struct.blkg_policy_data, %struct.blkg_policy_data* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  br label %102

102:                                              ; preds = %88, %75
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %9, align 4
  br label %61

105:                                              ; preds = %61
  %106 = load %struct.blkcg_gq*, %struct.blkcg_gq** %8, align 8
  store %struct.blkcg_gq* %106, %struct.blkcg_gq** %4, align 8
  br label %110

107:                                              ; preds = %87, %40, %27
  %108 = load %struct.blkcg_gq*, %struct.blkcg_gq** %8, align 8
  %109 = call i32 @blkg_free(%struct.blkcg_gq* %108)
  store %struct.blkcg_gq* null, %struct.blkcg_gq** %4, align 8
  br label %110

110:                                              ; preds = %107, %105, %19
  %111 = load %struct.blkcg_gq*, %struct.blkcg_gq** %4, align 8
  ret %struct.blkcg_gq* %111
}

declare dso_local %struct.blkcg_gq* @kzalloc_node(i32, i32, i32) #1

declare dso_local i64 @percpu_ref_init(i32*, i32, i32, i32) #1

declare dso_local i64 @blkg_rwstat_init(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @bio_list_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @blkcg_policy_enabled(%struct.request_queue*, %struct.blkcg_policy*) #1

declare dso_local i32 @blkg_free(%struct.blkcg_gq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
