; ModuleID = '/home/carl/AnghaBench/git/extr_read-cache.c_find_mem_pool.c'
source_filename = "/home/carl/AnghaBench/git/extr_read-cache.c_find_mem_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_pool = type { i32 }
%struct.index_state = type { %struct.mem_pool*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.mem_pool* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mem_pool* (%struct.index_state*)* @find_mem_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mem_pool* @find_mem_pool(%struct.index_state* %0) #0 {
  %2 = alloca %struct.index_state*, align 8
  %3 = alloca %struct.mem_pool**, align 8
  store %struct.index_state* %0, %struct.index_state** %2, align 8
  %4 = load %struct.index_state*, %struct.index_state** %2, align 8
  %5 = getelementptr inbounds %struct.index_state, %struct.index_state* %4, i32 0, i32 1
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = icmp ne %struct.TYPE_4__* %6, null
  br i1 %7, label %8, label %22

8:                                                ; preds = %1
  %9 = load %struct.index_state*, %struct.index_state** %2, align 8
  %10 = getelementptr inbounds %struct.index_state, %struct.index_state* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = icmp ne %struct.TYPE_3__* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %8
  %16 = load %struct.index_state*, %struct.index_state** %2, align 8
  %17 = getelementptr inbounds %struct.index_state, %struct.index_state* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store %struct.mem_pool** %21, %struct.mem_pool*** %3, align 8
  br label %25

22:                                               ; preds = %8, %1
  %23 = load %struct.index_state*, %struct.index_state** %2, align 8
  %24 = getelementptr inbounds %struct.index_state, %struct.index_state* %23, i32 0, i32 0
  store %struct.mem_pool** %24, %struct.mem_pool*** %3, align 8
  br label %25

25:                                               ; preds = %22, %15
  %26 = load %struct.mem_pool**, %struct.mem_pool*** %3, align 8
  %27 = load %struct.mem_pool*, %struct.mem_pool** %26, align 8
  %28 = icmp ne %struct.mem_pool* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load %struct.mem_pool**, %struct.mem_pool*** %3, align 8
  %31 = call i32 @mem_pool_init(%struct.mem_pool** %30, i32 0)
  br label %32

32:                                               ; preds = %29, %25
  %33 = load %struct.mem_pool**, %struct.mem_pool*** %3, align 8
  %34 = load %struct.mem_pool*, %struct.mem_pool** %33, align 8
  ret %struct.mem_pool* %34
}

declare dso_local i32 @mem_pool_init(%struct.mem_pool**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
