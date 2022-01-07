; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-cgroup.c_blkg_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-cgroup.c_blkg_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkcg_policy = type { i32 (i32)* }
%struct.blkcg_gq = type { i32, i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32*, %struct.blkcg_gq*, %struct.blkcg* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.blkcg = type { i32, i32, i32 }

@BLKCG_MAX_POLS = common dso_local global i32 0, align 4
@blkcg_policy = common dso_local global %struct.blkcg_policy** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blkcg_gq*)* @blkg_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blkg_destroy(%struct.blkcg_gq* %0) #0 {
  %2 = alloca %struct.blkcg_gq*, align 8
  %3 = alloca %struct.blkcg*, align 8
  %4 = alloca %struct.blkcg_gq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.blkcg_policy*, align 8
  store %struct.blkcg_gq* %0, %struct.blkcg_gq** %2, align 8
  %7 = load %struct.blkcg_gq*, %struct.blkcg_gq** %2, align 8
  %8 = getelementptr inbounds %struct.blkcg_gq, %struct.blkcg_gq* %7, i32 0, i32 9
  %9 = load %struct.blkcg*, %struct.blkcg** %8, align 8
  store %struct.blkcg* %9, %struct.blkcg** %3, align 8
  %10 = load %struct.blkcg_gq*, %struct.blkcg_gq** %2, align 8
  %11 = getelementptr inbounds %struct.blkcg_gq, %struct.blkcg_gq* %10, i32 0, i32 8
  %12 = load %struct.blkcg_gq*, %struct.blkcg_gq** %11, align 8
  store %struct.blkcg_gq* %12, %struct.blkcg_gq** %4, align 8
  %13 = load %struct.blkcg_gq*, %struct.blkcg_gq** %2, align 8
  %14 = getelementptr inbounds %struct.blkcg_gq, %struct.blkcg_gq* %13, i32 0, i32 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = call i32 @lockdep_assert_held(i32* %16)
  %18 = load %struct.blkcg*, %struct.blkcg** %3, align 8
  %19 = getelementptr inbounds %struct.blkcg, %struct.blkcg* %18, i32 0, i32 2
  %20 = call i32 @lockdep_assert_held(i32* %19)
  %21 = load %struct.blkcg_gq*, %struct.blkcg_gq** %2, align 8
  %22 = getelementptr inbounds %struct.blkcg_gq, %struct.blkcg_gq* %21, i32 0, i32 3
  %23 = call i32 @list_empty(i32* %22)
  %24 = call i32 @WARN_ON_ONCE(i32 %23)
  %25 = load %struct.blkcg_gq*, %struct.blkcg_gq** %2, align 8
  %26 = getelementptr inbounds %struct.blkcg_gq, %struct.blkcg_gq* %25, i32 0, i32 2
  %27 = call i32 @hlist_unhashed(i32* %26)
  %28 = call i32 @WARN_ON_ONCE(i32 %27)
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %65, %1
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @BLKCG_MAX_POLS, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %68

33:                                               ; preds = %29
  %34 = load %struct.blkcg_policy**, %struct.blkcg_policy*** @blkcg_policy, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.blkcg_policy*, %struct.blkcg_policy** %34, i64 %36
  %38 = load %struct.blkcg_policy*, %struct.blkcg_policy** %37, align 8
  store %struct.blkcg_policy* %38, %struct.blkcg_policy** %6, align 8
  %39 = load %struct.blkcg_gq*, %struct.blkcg_gq** %2, align 8
  %40 = getelementptr inbounds %struct.blkcg_gq, %struct.blkcg_gq* %39, i32 0, i32 7
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %33
  %48 = load %struct.blkcg_policy*, %struct.blkcg_policy** %6, align 8
  %49 = getelementptr inbounds %struct.blkcg_policy, %struct.blkcg_policy* %48, i32 0, i32 0
  %50 = load i32 (i32)*, i32 (i32)** %49, align 8
  %51 = icmp ne i32 (i32)* %50, null
  br i1 %51, label %52, label %64

52:                                               ; preds = %47
  %53 = load %struct.blkcg_policy*, %struct.blkcg_policy** %6, align 8
  %54 = getelementptr inbounds %struct.blkcg_policy, %struct.blkcg_policy* %53, i32 0, i32 0
  %55 = load i32 (i32)*, i32 (i32)** %54, align 8
  %56 = load %struct.blkcg_gq*, %struct.blkcg_gq** %2, align 8
  %57 = getelementptr inbounds %struct.blkcg_gq, %struct.blkcg_gq* %56, i32 0, i32 7
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 %55(i32 %62)
  br label %64

64:                                               ; preds = %52, %47, %33
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  br label %29

68:                                               ; preds = %29
  %69 = load %struct.blkcg_gq*, %struct.blkcg_gq** %4, align 8
  %70 = icmp ne %struct.blkcg_gq* %69, null
  br i1 %70, label %71, label %82

71:                                               ; preds = %68
  %72 = load %struct.blkcg_gq*, %struct.blkcg_gq** %4, align 8
  %73 = getelementptr inbounds %struct.blkcg_gq, %struct.blkcg_gq* %72, i32 0, i32 6
  %74 = load %struct.blkcg_gq*, %struct.blkcg_gq** %2, align 8
  %75 = getelementptr inbounds %struct.blkcg_gq, %struct.blkcg_gq* %74, i32 0, i32 6
  %76 = call i32 @blkg_rwstat_add_aux(i32* %73, i32* %75)
  %77 = load %struct.blkcg_gq*, %struct.blkcg_gq** %4, align 8
  %78 = getelementptr inbounds %struct.blkcg_gq, %struct.blkcg_gq* %77, i32 0, i32 5
  %79 = load %struct.blkcg_gq*, %struct.blkcg_gq** %2, align 8
  %80 = getelementptr inbounds %struct.blkcg_gq, %struct.blkcg_gq* %79, i32 0, i32 5
  %81 = call i32 @blkg_rwstat_add_aux(i32* %78, i32* %80)
  br label %82

82:                                               ; preds = %71, %68
  %83 = load %struct.blkcg_gq*, %struct.blkcg_gq** %2, align 8
  %84 = getelementptr inbounds %struct.blkcg_gq, %struct.blkcg_gq* %83, i32 0, i32 0
  store i32 0, i32* %84, align 8
  %85 = load %struct.blkcg*, %struct.blkcg** %3, align 8
  %86 = getelementptr inbounds %struct.blkcg, %struct.blkcg* %85, i32 0, i32 1
  %87 = load %struct.blkcg_gq*, %struct.blkcg_gq** %2, align 8
  %88 = getelementptr inbounds %struct.blkcg_gq, %struct.blkcg_gq* %87, i32 0, i32 4
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @radix_tree_delete(i32* %86, i32 %91)
  %93 = load %struct.blkcg_gq*, %struct.blkcg_gq** %2, align 8
  %94 = getelementptr inbounds %struct.blkcg_gq, %struct.blkcg_gq* %93, i32 0, i32 3
  %95 = call i32 @list_del_init(i32* %94)
  %96 = load %struct.blkcg_gq*, %struct.blkcg_gq** %2, align 8
  %97 = getelementptr inbounds %struct.blkcg_gq, %struct.blkcg_gq* %96, i32 0, i32 2
  %98 = call i32 @hlist_del_init_rcu(i32* %97)
  %99 = load %struct.blkcg*, %struct.blkcg** %3, align 8
  %100 = getelementptr inbounds %struct.blkcg, %struct.blkcg* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call %struct.blkcg_gq* @rcu_access_pointer(i32 %101)
  %103 = load %struct.blkcg_gq*, %struct.blkcg_gq** %2, align 8
  %104 = icmp eq %struct.blkcg_gq* %102, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %82
  %106 = load %struct.blkcg*, %struct.blkcg** %3, align 8
  %107 = getelementptr inbounds %struct.blkcg, %struct.blkcg* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @rcu_assign_pointer(i32 %108, i32* null)
  br label %110

110:                                              ; preds = %105, %82
  %111 = load %struct.blkcg_gq*, %struct.blkcg_gq** %2, align 8
  %112 = getelementptr inbounds %struct.blkcg_gq, %struct.blkcg_gq* %111, i32 0, i32 1
  %113 = call i32 @percpu_ref_kill(i32* %112)
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @hlist_unhashed(i32*) #1

declare dso_local i32 @blkg_rwstat_add_aux(i32*, i32*) #1

declare dso_local i32 @radix_tree_delete(i32*, i32) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @hlist_del_init_rcu(i32*) #1

declare dso_local %struct.blkcg_gq* @rcu_access_pointer(i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, i32*) #1

declare dso_local i32 @percpu_ref_kill(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
