; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_cacheinfo.c_cache_chain_instantiate.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_cacheinfo.c_cache_chain_instantiate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"creating cache object(s) for CPU %i\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"no OF node found for CPU %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cache* (i32)* @cache_chain_instantiate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cache* @cache_chain_instantiate(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.cache*, align 8
  store i32 %0, i32* %2, align 4
  store %struct.cache* null, %struct.cache** %4, align 8
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.device_node* @of_get_cpu_node(i32 %7, i32* null)
  store %struct.device_node* %8, %struct.device_node** %3, align 8
  %9 = load %struct.device_node*, %struct.device_node** %3, align 8
  %10 = icmp ne %struct.device_node* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @WARN_ONCE(i32 %12, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  %15 = load %struct.device_node*, %struct.device_node** %3, align 8
  %16 = icmp ne %struct.device_node* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %30

18:                                               ; preds = %1
  %19 = load %struct.device_node*, %struct.device_node** %3, align 8
  %20 = call %struct.cache* @cache_lookup_or_instantiate(%struct.device_node* %19, i32 1)
  store %struct.cache* %20, %struct.cache** %4, align 8
  %21 = load %struct.cache*, %struct.cache** %4, align 8
  %22 = icmp ne %struct.cache* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  br label %30

24:                                               ; preds = %18
  %25 = load %struct.cache*, %struct.cache** %4, align 8
  %26 = call i32 @do_subsidiary_caches(%struct.cache* %25)
  %27 = load %struct.cache*, %struct.cache** %4, align 8
  %28 = load i32, i32* %2, align 4
  %29 = call i32 @cache_cpu_set(%struct.cache* %27, i32 %28)
  br label %30

30:                                               ; preds = %24, %23, %17
  %31 = load %struct.device_node*, %struct.device_node** %3, align 8
  %32 = call i32 @of_node_put(%struct.device_node* %31)
  %33 = load %struct.cache*, %struct.cache** %4, align 8
  ret %struct.cache* %33
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local %struct.device_node* @of_get_cpu_node(i32, i32*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32) #1

declare dso_local %struct.cache* @cache_lookup_or_instantiate(%struct.device_node*, i32) #1

declare dso_local i32 @do_subsidiary_caches(%struct.cache*) #1

declare dso_local i32 @cache_cpu_set(%struct.cache*, i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
