; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-cgroup.c_blkcg_css_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-cgroup.c_blkcg_css_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkcg = type { %struct.blkcg_policy_data**, %struct.cgroup_subsys_state, i32, i32, i32, i32, i32, i32 }
%struct.blkcg_policy_data = type { i32, %struct.blkcg* }
%struct.cgroup_subsys_state = type { i32 }
%struct.blkcg_policy = type { i32 (%struct.blkcg_policy_data*)*, i32 (%struct.blkcg_policy_data*)*, %struct.blkcg_policy_data* (i32)* }

@blkcg_pol_mutex = common dso_local global i32 0, align 4
@blkcg_root = common dso_local global %struct.blkcg zeroinitializer, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BLKCG_MAX_POLS = common dso_local global i32 0, align 4
@blkcg_policy = common dso_local global %struct.blkcg_policy** null, align 8
@GFP_NOWAIT = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@all_blkcgs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cgroup_subsys_state* (%struct.cgroup_subsys_state*)* @blkcg_css_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cgroup_subsys_state* @blkcg_css_alloc(%struct.cgroup_subsys_state* %0) #0 {
  %2 = alloca %struct.cgroup_subsys_state*, align 8
  %3 = alloca %struct.cgroup_subsys_state*, align 8
  %4 = alloca %struct.blkcg*, align 8
  %5 = alloca %struct.cgroup_subsys_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.blkcg_policy*, align 8
  %8 = alloca %struct.blkcg_policy_data*, align 8
  store %struct.cgroup_subsys_state* %0, %struct.cgroup_subsys_state** %3, align 8
  %9 = call i32 @mutex_lock(i32* @blkcg_pol_mutex)
  %10 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %3, align 8
  %11 = icmp ne %struct.cgroup_subsys_state* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store %struct.blkcg* @blkcg_root, %struct.blkcg** %4, align 8
  br label %23

13:                                               ; preds = %1
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.blkcg* @kzalloc(i32 40, i32 %14)
  store %struct.blkcg* %15, %struct.blkcg** %4, align 8
  %16 = load %struct.blkcg*, %struct.blkcg** %4, align 8
  %17 = icmp ne %struct.blkcg* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.cgroup_subsys_state* @ERR_PTR(i32 %20)
  store %struct.cgroup_subsys_state* %21, %struct.cgroup_subsys_state** %5, align 8
  br label %143

22:                                               ; preds = %13
  br label %23

23:                                               ; preds = %22, %12
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %79, %23
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @BLKCG_MAX_POLS, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %82

28:                                               ; preds = %24
  %29 = load %struct.blkcg_policy**, %struct.blkcg_policy*** @blkcg_policy, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.blkcg_policy*, %struct.blkcg_policy** %29, i64 %31
  %33 = load %struct.blkcg_policy*, %struct.blkcg_policy** %32, align 8
  store %struct.blkcg_policy* %33, %struct.blkcg_policy** %7, align 8
  %34 = load %struct.blkcg_policy*, %struct.blkcg_policy** %7, align 8
  %35 = icmp ne %struct.blkcg_policy* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %28
  %37 = load %struct.blkcg_policy*, %struct.blkcg_policy** %7, align 8
  %38 = getelementptr inbounds %struct.blkcg_policy, %struct.blkcg_policy* %37, i32 0, i32 2
  %39 = load %struct.blkcg_policy_data* (i32)*, %struct.blkcg_policy_data* (i32)** %38, align 8
  %40 = icmp ne %struct.blkcg_policy_data* (i32)* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %36, %28
  br label %79

42:                                               ; preds = %36
  %43 = load %struct.blkcg_policy*, %struct.blkcg_policy** %7, align 8
  %44 = getelementptr inbounds %struct.blkcg_policy, %struct.blkcg_policy* %43, i32 0, i32 2
  %45 = load %struct.blkcg_policy_data* (i32)*, %struct.blkcg_policy_data* (i32)** %44, align 8
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call %struct.blkcg_policy_data* %45(i32 %46)
  store %struct.blkcg_policy_data* %47, %struct.blkcg_policy_data** %8, align 8
  %48 = load %struct.blkcg_policy_data*, %struct.blkcg_policy_data** %8, align 8
  %49 = icmp ne %struct.blkcg_policy_data* %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %42
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  %53 = call %struct.cgroup_subsys_state* @ERR_PTR(i32 %52)
  store %struct.cgroup_subsys_state* %53, %struct.cgroup_subsys_state** %5, align 8
  br label %101

54:                                               ; preds = %42
  %55 = load %struct.blkcg_policy_data*, %struct.blkcg_policy_data** %8, align 8
  %56 = load %struct.blkcg*, %struct.blkcg** %4, align 8
  %57 = getelementptr inbounds %struct.blkcg, %struct.blkcg* %56, i32 0, i32 0
  %58 = load %struct.blkcg_policy_data**, %struct.blkcg_policy_data*** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.blkcg_policy_data*, %struct.blkcg_policy_data** %58, i64 %60
  store %struct.blkcg_policy_data* %55, %struct.blkcg_policy_data** %61, align 8
  %62 = load %struct.blkcg*, %struct.blkcg** %4, align 8
  %63 = load %struct.blkcg_policy_data*, %struct.blkcg_policy_data** %8, align 8
  %64 = getelementptr inbounds %struct.blkcg_policy_data, %struct.blkcg_policy_data* %63, i32 0, i32 1
  store %struct.blkcg* %62, %struct.blkcg** %64, align 8
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.blkcg_policy_data*, %struct.blkcg_policy_data** %8, align 8
  %67 = getelementptr inbounds %struct.blkcg_policy_data, %struct.blkcg_policy_data* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.blkcg_policy*, %struct.blkcg_policy** %7, align 8
  %69 = getelementptr inbounds %struct.blkcg_policy, %struct.blkcg_policy* %68, i32 0, i32 1
  %70 = load i32 (%struct.blkcg_policy_data*)*, i32 (%struct.blkcg_policy_data*)** %69, align 8
  %71 = icmp ne i32 (%struct.blkcg_policy_data*)* %70, null
  br i1 %71, label %72, label %78

72:                                               ; preds = %54
  %73 = load %struct.blkcg_policy*, %struct.blkcg_policy** %7, align 8
  %74 = getelementptr inbounds %struct.blkcg_policy, %struct.blkcg_policy* %73, i32 0, i32 1
  %75 = load i32 (%struct.blkcg_policy_data*)*, i32 (%struct.blkcg_policy_data*)** %74, align 8
  %76 = load %struct.blkcg_policy_data*, %struct.blkcg_policy_data** %8, align 8
  %77 = call i32 %75(%struct.blkcg_policy_data* %76)
  br label %78

78:                                               ; preds = %72, %54
  br label %79

79:                                               ; preds = %78, %41
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %6, align 4
  br label %24

82:                                               ; preds = %24
  %83 = load %struct.blkcg*, %struct.blkcg** %4, align 8
  %84 = getelementptr inbounds %struct.blkcg, %struct.blkcg* %83, i32 0, i32 7
  %85 = call i32 @spin_lock_init(i32* %84)
  %86 = load %struct.blkcg*, %struct.blkcg** %4, align 8
  %87 = getelementptr inbounds %struct.blkcg, %struct.blkcg* %86, i32 0, i32 6
  %88 = load i32, i32* @GFP_NOWAIT, align 4
  %89 = load i32, i32* @__GFP_NOWARN, align 4
  %90 = or i32 %88, %89
  %91 = call i32 @INIT_RADIX_TREE(i32* %87, i32 %90)
  %92 = load %struct.blkcg*, %struct.blkcg** %4, align 8
  %93 = getelementptr inbounds %struct.blkcg, %struct.blkcg* %92, i32 0, i32 5
  %94 = call i32 @INIT_HLIST_HEAD(i32* %93)
  %95 = load %struct.blkcg*, %struct.blkcg** %4, align 8
  %96 = getelementptr inbounds %struct.blkcg, %struct.blkcg* %95, i32 0, i32 2
  %97 = call i32 @list_add_tail(i32* %96, i32* @all_blkcgs)
  %98 = call i32 @mutex_unlock(i32* @blkcg_pol_mutex)
  %99 = load %struct.blkcg*, %struct.blkcg** %4, align 8
  %100 = getelementptr inbounds %struct.blkcg, %struct.blkcg* %99, i32 0, i32 1
  store %struct.cgroup_subsys_state* %100, %struct.cgroup_subsys_state** %2, align 8
  br label %146

101:                                              ; preds = %50
  %102 = load i32, i32* %6, align 4
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* %6, align 4
  br label %104

104:                                              ; preds = %133, %101
  %105 = load i32, i32* %6, align 4
  %106 = icmp sge i32 %105, 0
  br i1 %106, label %107, label %136

107:                                              ; preds = %104
  %108 = load %struct.blkcg*, %struct.blkcg** %4, align 8
  %109 = getelementptr inbounds %struct.blkcg, %struct.blkcg* %108, i32 0, i32 0
  %110 = load %struct.blkcg_policy_data**, %struct.blkcg_policy_data*** %109, align 8
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.blkcg_policy_data*, %struct.blkcg_policy_data** %110, i64 %112
  %114 = load %struct.blkcg_policy_data*, %struct.blkcg_policy_data** %113, align 8
  %115 = icmp ne %struct.blkcg_policy_data* %114, null
  br i1 %115, label %116, label %132

116:                                              ; preds = %107
  %117 = load %struct.blkcg_policy**, %struct.blkcg_policy*** @blkcg_policy, align 8
  %118 = load i32, i32* %6, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.blkcg_policy*, %struct.blkcg_policy** %117, i64 %119
  %121 = load %struct.blkcg_policy*, %struct.blkcg_policy** %120, align 8
  %122 = getelementptr inbounds %struct.blkcg_policy, %struct.blkcg_policy* %121, i32 0, i32 0
  %123 = load i32 (%struct.blkcg_policy_data*)*, i32 (%struct.blkcg_policy_data*)** %122, align 8
  %124 = load %struct.blkcg*, %struct.blkcg** %4, align 8
  %125 = getelementptr inbounds %struct.blkcg, %struct.blkcg* %124, i32 0, i32 0
  %126 = load %struct.blkcg_policy_data**, %struct.blkcg_policy_data*** %125, align 8
  %127 = load i32, i32* %6, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.blkcg_policy_data*, %struct.blkcg_policy_data** %126, i64 %128
  %130 = load %struct.blkcg_policy_data*, %struct.blkcg_policy_data** %129, align 8
  %131 = call i32 %123(%struct.blkcg_policy_data* %130)
  br label %132

132:                                              ; preds = %116, %107
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %6, align 4
  %135 = add nsw i32 %134, -1
  store i32 %135, i32* %6, align 4
  br label %104

136:                                              ; preds = %104
  %137 = load %struct.blkcg*, %struct.blkcg** %4, align 8
  %138 = icmp ne %struct.blkcg* %137, @blkcg_root
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load %struct.blkcg*, %struct.blkcg** %4, align 8
  %141 = call i32 @kfree(%struct.blkcg* %140)
  br label %142

142:                                              ; preds = %139, %136
  br label %143

143:                                              ; preds = %142, %18
  %144 = call i32 @mutex_unlock(i32* @blkcg_pol_mutex)
  %145 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %5, align 8
  store %struct.cgroup_subsys_state* %145, %struct.cgroup_subsys_state** %2, align 8
  br label %146

146:                                              ; preds = %143, %82
  %147 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %2, align 8
  ret %struct.cgroup_subsys_state* %147
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.blkcg* @kzalloc(i32, i32) #1

declare dso_local %struct.cgroup_subsys_state* @ERR_PTR(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_RADIX_TREE(i32*, i32) #1

declare dso_local i32 @INIT_HLIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.blkcg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
