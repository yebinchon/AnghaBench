; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_cacheinfo.c_do_subsidiary_caches.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_cacheinfo.c_do_subsidiary_caches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache = type { i32, i32 }
%struct.device_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cache*)* @do_subsidiary_caches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_subsidiary_caches(%struct.cache* %0) #0 {
  %2 = alloca %struct.cache*, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cache*, align 8
  store %struct.cache* %0, %struct.cache** %2, align 8
  %6 = load %struct.cache*, %struct.cache** %2, align 8
  %7 = getelementptr inbounds %struct.cache, %struct.cache* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %4, align 4
  %9 = load %struct.cache*, %struct.cache** %2, align 8
  %10 = call i32 @do_subsidiary_caches_debugcheck(%struct.cache* %9)
  br label %11

11:                                               ; preds = %28, %1
  %12 = load %struct.cache*, %struct.cache** %2, align 8
  %13 = getelementptr inbounds %struct.cache, %struct.cache* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.device_node* @of_find_next_cache_node(i32 %14)
  store %struct.device_node* %15, %struct.device_node** %3, align 8
  %16 = icmp ne %struct.device_node* %15, null
  br i1 %16, label %17, label %33

17:                                               ; preds = %11
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %4, align 4
  %20 = load %struct.device_node*, %struct.device_node** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call %struct.cache* @cache_lookup_or_instantiate(%struct.device_node* %20, i32 %21)
  store %struct.cache* %22, %struct.cache** %5, align 8
  %23 = load %struct.device_node*, %struct.device_node** %3, align 8
  %24 = call i32 @of_node_put(%struct.device_node* %23)
  %25 = load %struct.cache*, %struct.cache** %5, align 8
  %26 = icmp ne %struct.cache* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %17
  br label %33

28:                                               ; preds = %17
  %29 = load %struct.cache*, %struct.cache** %2, align 8
  %30 = load %struct.cache*, %struct.cache** %5, align 8
  %31 = call i32 @link_cache_lists(%struct.cache* %29, %struct.cache* %30)
  %32 = load %struct.cache*, %struct.cache** %5, align 8
  store %struct.cache* %32, %struct.cache** %2, align 8
  br label %11

33:                                               ; preds = %27, %11
  ret void
}

declare dso_local i32 @do_subsidiary_caches_debugcheck(%struct.cache*) #1

declare dso_local %struct.device_node* @of_find_next_cache_node(i32) #1

declare dso_local %struct.cache* @cache_lookup_or_instantiate(%struct.device_node*, i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @link_cache_lists(%struct.cache*, %struct.cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
