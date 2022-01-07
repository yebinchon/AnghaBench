; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_cacheinfo.c_cache_do_one_devnode_split.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_cacheinfo.c_cache_do_one_devnode_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache = type { %struct.cache* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"creating L%d dcache and icache for %pOF\0A\00", align 1
@CACHE_TYPE_DATA = common dso_local global i32 0, align 4
@CACHE_TYPE_INSTRUCTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cache* (%struct.device_node*, i32)* @cache_do_one_devnode_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cache* @cache_do_one_devnode_split(%struct.device_node* %0, i32 %1) #0 {
  %3 = alloca %struct.cache*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cache*, align 8
  %7 = alloca %struct.cache*, align 8
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.device_node*, %struct.device_node** %4, align 8
  %10 = call i32 @pr_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %8, %struct.device_node* %9)
  %11 = load i32, i32* @CACHE_TYPE_DATA, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.device_node*, %struct.device_node** %4, align 8
  %14 = call %struct.cache* @new_cache(i32 %11, i32 %12, %struct.device_node* %13)
  store %struct.cache* %14, %struct.cache** %6, align 8
  %15 = load i32, i32* @CACHE_TYPE_INSTRUCTION, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.device_node*, %struct.device_node** %4, align 8
  %18 = call %struct.cache* @new_cache(i32 %15, i32 %16, %struct.device_node* %17)
  store %struct.cache* %18, %struct.cache** %7, align 8
  %19 = load %struct.cache*, %struct.cache** %6, align 8
  %20 = icmp ne %struct.cache* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load %struct.cache*, %struct.cache** %7, align 8
  %23 = icmp ne %struct.cache* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21, %2
  br label %30

25:                                               ; preds = %21
  %26 = load %struct.cache*, %struct.cache** %7, align 8
  %27 = load %struct.cache*, %struct.cache** %6, align 8
  %28 = getelementptr inbounds %struct.cache, %struct.cache* %27, i32 0, i32 0
  store %struct.cache* %26, %struct.cache** %28, align 8
  %29 = load %struct.cache*, %struct.cache** %6, align 8
  store %struct.cache* %29, %struct.cache** %3, align 8
  br label %35

30:                                               ; preds = %24
  %31 = load %struct.cache*, %struct.cache** %6, align 8
  %32 = call i32 @release_cache(%struct.cache* %31)
  %33 = load %struct.cache*, %struct.cache** %7, align 8
  %34 = call i32 @release_cache(%struct.cache* %33)
  store %struct.cache* null, %struct.cache** %3, align 8
  br label %35

35:                                               ; preds = %30, %25
  %36 = load %struct.cache*, %struct.cache** %3, align 8
  ret %struct.cache* %36
}

declare dso_local i32 @pr_debug(i8*, i32, %struct.device_node*) #1

declare dso_local %struct.cache* @new_cache(i32, i32, %struct.device_node*) #1

declare dso_local i32 @release_cache(%struct.cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
