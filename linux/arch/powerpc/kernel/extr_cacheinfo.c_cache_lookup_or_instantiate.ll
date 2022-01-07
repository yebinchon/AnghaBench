; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_cacheinfo.c_cache_lookup_or_instantiate.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_cacheinfo.c_cache_lookup_or_instantiate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [54 x i8] c"cache level mismatch on lookup (got %d, expected %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cache* (%struct.device_node*, i32)* @cache_lookup_or_instantiate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cache* @cache_lookup_or_instantiate(%struct.device_node* %0, i32 %1) #0 {
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cache*, align 8
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.device_node*, %struct.device_node** %3, align 8
  %7 = call %struct.cache* @cache_lookup_by_node(%struct.device_node* %6)
  store %struct.cache* %7, %struct.cache** %5, align 8
  %8 = load %struct.cache*, %struct.cache** %5, align 8
  %9 = icmp ne %struct.cache* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load %struct.cache*, %struct.cache** %5, align 8
  %12 = getelementptr inbounds %struct.cache, %struct.cache* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %13, %14
  br label %16

16:                                               ; preds = %10, %2
  %17 = phi i1 [ false, %2 ], [ %15, %10 ]
  %18 = zext i1 %17 to i32
  %19 = load %struct.cache*, %struct.cache** %5, align 8
  %20 = getelementptr inbounds %struct.cache, %struct.cache* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @WARN_ONCE(i32 %18, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22)
  %24 = load %struct.cache*, %struct.cache** %5, align 8
  %25 = icmp ne %struct.cache* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %16
  %27 = load %struct.device_node*, %struct.device_node** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call %struct.cache* @cache_do_one_devnode(%struct.device_node* %27, i32 %28)
  store %struct.cache* %29, %struct.cache** %5, align 8
  br label %30

30:                                               ; preds = %26, %16
  %31 = load %struct.cache*, %struct.cache** %5, align 8
  ret %struct.cache* %31
}

declare dso_local %struct.cache* @cache_lookup_by_node(%struct.device_node*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32, i32) #1

declare dso_local %struct.cache* @cache_do_one_devnode(%struct.device_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
