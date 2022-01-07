; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_cacheinfo.c_cache_do_one_devnode.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_cacheinfo.c_cache_do_one_devnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache = type { i32 }
%struct.device_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cache* (%struct.device_node*, i32)* @cache_do_one_devnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cache* @cache_do_one_devnode(%struct.device_node* %0, i32 %1) #0 {
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cache*, align 8
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.device_node*, %struct.device_node** %3, align 8
  %7 = call i64 @cache_node_is_unified(%struct.device_node* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.device_node*, %struct.device_node** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.cache* @cache_do_one_devnode_unified(%struct.device_node* %10, i32 %11)
  store %struct.cache* %12, %struct.cache** %5, align 8
  br label %17

13:                                               ; preds = %2
  %14 = load %struct.device_node*, %struct.device_node** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call %struct.cache* @cache_do_one_devnode_split(%struct.device_node* %14, i32 %15)
  store %struct.cache* %16, %struct.cache** %5, align 8
  br label %17

17:                                               ; preds = %13, %9
  %18 = load %struct.cache*, %struct.cache** %5, align 8
  ret %struct.cache* %18
}

declare dso_local i64 @cache_node_is_unified(%struct.device_node*) #1

declare dso_local %struct.cache* @cache_do_one_devnode_unified(%struct.device_node*, i32) #1

declare dso_local %struct.cache* @cache_do_one_devnode_split(%struct.device_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
