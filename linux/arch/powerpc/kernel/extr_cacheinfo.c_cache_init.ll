; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_cacheinfo.c_cache_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_cacheinfo.c_cache_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache = type { i32, i32, i32, i32 }
%struct.device_node = type { i32 }

@cache_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cache*, i32, i32, %struct.device_node*)* @cache_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cache_init(%struct.cache* %0, i32 %1, i32 %2, %struct.device_node* %3) #0 {
  %5 = alloca %struct.cache*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.device_node*, align 8
  store %struct.cache* %0, %struct.cache** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.device_node* %3, %struct.device_node** %8, align 8
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.cache*, %struct.cache** %5, align 8
  %11 = getelementptr inbounds %struct.cache, %struct.cache* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.cache*, %struct.cache** %5, align 8
  %14 = getelementptr inbounds %struct.cache, %struct.cache* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load %struct.device_node*, %struct.device_node** %8, align 8
  %16 = call i32 @of_node_get(%struct.device_node* %15)
  %17 = load %struct.cache*, %struct.cache** %5, align 8
  %18 = getelementptr inbounds %struct.cache, %struct.cache* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 4
  %19 = load %struct.cache*, %struct.cache** %5, align 8
  %20 = getelementptr inbounds %struct.cache, %struct.cache* %19, i32 0, i32 2
  %21 = call i32 @INIT_LIST_HEAD(i32* %20)
  %22 = load %struct.cache*, %struct.cache** %5, align 8
  %23 = getelementptr inbounds %struct.cache, %struct.cache* %22, i32 0, i32 2
  %24 = call i32 @list_add(i32* %23, i32* @cache_list)
  ret void
}

declare dso_local i32 @of_node_get(%struct.device_node*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
