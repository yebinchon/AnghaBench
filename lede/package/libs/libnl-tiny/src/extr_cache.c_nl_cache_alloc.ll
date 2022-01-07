; ModuleID = '/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_cache.c_nl_cache_alloc.c'
source_filename = "/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_cache.c_nl_cache_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nl_cache = type { %struct.nl_cache_ops*, i32 }
%struct.nl_cache_ops = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Allocated cache %p <%s>.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nl_cache* @nl_cache_alloc(%struct.nl_cache_ops* %0) #0 {
  %2 = alloca %struct.nl_cache*, align 8
  %3 = alloca %struct.nl_cache_ops*, align 8
  %4 = alloca %struct.nl_cache*, align 8
  store %struct.nl_cache_ops* %0, %struct.nl_cache_ops** %3, align 8
  %5 = call %struct.nl_cache* @calloc(i32 1, i32 16)
  store %struct.nl_cache* %5, %struct.nl_cache** %4, align 8
  %6 = load %struct.nl_cache*, %struct.nl_cache** %4, align 8
  %7 = icmp ne %struct.nl_cache* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store %struct.nl_cache* null, %struct.nl_cache** %2, align 8
  br label %21

9:                                                ; preds = %1
  %10 = load %struct.nl_cache*, %struct.nl_cache** %4, align 8
  %11 = getelementptr inbounds %struct.nl_cache, %struct.nl_cache* %10, i32 0, i32 1
  %12 = call i32 @nl_init_list_head(i32* %11)
  %13 = load %struct.nl_cache_ops*, %struct.nl_cache_ops** %3, align 8
  %14 = load %struct.nl_cache*, %struct.nl_cache** %4, align 8
  %15 = getelementptr inbounds %struct.nl_cache, %struct.nl_cache* %14, i32 0, i32 0
  store %struct.nl_cache_ops* %13, %struct.nl_cache_ops** %15, align 8
  %16 = load %struct.nl_cache*, %struct.nl_cache** %4, align 8
  %17 = load %struct.nl_cache*, %struct.nl_cache** %4, align 8
  %18 = call i32 @nl_cache_name(%struct.nl_cache* %17)
  %19 = call i32 @NL_DBG(i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.nl_cache* %16, i32 %18)
  %20 = load %struct.nl_cache*, %struct.nl_cache** %4, align 8
  store %struct.nl_cache* %20, %struct.nl_cache** %2, align 8
  br label %21

21:                                               ; preds = %9, %8
  %22 = load %struct.nl_cache*, %struct.nl_cache** %2, align 8
  ret %struct.nl_cache* %22
}

declare dso_local %struct.nl_cache* @calloc(i32, i32) #1

declare dso_local i32 @nl_init_list_head(i32*) #1

declare dso_local i32 @NL_DBG(i32, i8*, %struct.nl_cache*, i32) #1

declare dso_local i32 @nl_cache_name(%struct.nl_cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
