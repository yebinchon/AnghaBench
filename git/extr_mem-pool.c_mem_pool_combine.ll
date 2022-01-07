; ModuleID = '/home/carl/AnghaBench/git/extr_mem-pool.c_mem_pool_combine.c'
source_filename = "/home/carl/AnghaBench/git/extr_mem-pool.c_mem_pool_combine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_pool = type { %struct.mp_block*, i64 }
%struct.mp_block = type { %struct.mp_block* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mem_pool_combine(%struct.mem_pool* %0, %struct.mem_pool* %1) #0 {
  %3 = alloca %struct.mem_pool*, align 8
  %4 = alloca %struct.mem_pool*, align 8
  %5 = alloca %struct.mp_block*, align 8
  store %struct.mem_pool* %0, %struct.mem_pool** %3, align 8
  store %struct.mem_pool* %1, %struct.mem_pool** %4, align 8
  %6 = load %struct.mem_pool*, %struct.mem_pool** %3, align 8
  %7 = getelementptr inbounds %struct.mem_pool, %struct.mem_pool* %6, i32 0, i32 0
  %8 = load %struct.mp_block*, %struct.mp_block** %7, align 8
  %9 = icmp ne %struct.mp_block* %8, null
  br i1 %9, label %10, label %34

10:                                               ; preds = %2
  %11 = load %struct.mem_pool*, %struct.mem_pool** %4, align 8
  %12 = getelementptr inbounds %struct.mem_pool, %struct.mem_pool* %11, i32 0, i32 0
  %13 = load %struct.mp_block*, %struct.mp_block** %12, align 8
  %14 = icmp ne %struct.mp_block* %13, null
  br i1 %14, label %15, label %34

15:                                               ; preds = %10
  %16 = load %struct.mem_pool*, %struct.mem_pool** %3, align 8
  %17 = getelementptr inbounds %struct.mem_pool, %struct.mem_pool* %16, i32 0, i32 0
  %18 = load %struct.mp_block*, %struct.mp_block** %17, align 8
  store %struct.mp_block* %18, %struct.mp_block** %5, align 8
  br label %19

19:                                               ; preds = %24, %15
  %20 = load %struct.mp_block*, %struct.mp_block** %5, align 8
  %21 = getelementptr inbounds %struct.mp_block, %struct.mp_block* %20, i32 0, i32 0
  %22 = load %struct.mp_block*, %struct.mp_block** %21, align 8
  %23 = icmp ne %struct.mp_block* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load %struct.mp_block*, %struct.mp_block** %5, align 8
  %26 = getelementptr inbounds %struct.mp_block, %struct.mp_block* %25, i32 0, i32 0
  %27 = load %struct.mp_block*, %struct.mp_block** %26, align 8
  store %struct.mp_block* %27, %struct.mp_block** %5, align 8
  br label %19

28:                                               ; preds = %19
  %29 = load %struct.mem_pool*, %struct.mem_pool** %4, align 8
  %30 = getelementptr inbounds %struct.mem_pool, %struct.mem_pool* %29, i32 0, i32 0
  %31 = load %struct.mp_block*, %struct.mp_block** %30, align 8
  %32 = load %struct.mp_block*, %struct.mp_block** %5, align 8
  %33 = getelementptr inbounds %struct.mp_block, %struct.mp_block* %32, i32 0, i32 0
  store %struct.mp_block* %31, %struct.mp_block** %33, align 8
  br label %47

34:                                               ; preds = %10, %2
  %35 = load %struct.mem_pool*, %struct.mem_pool** %4, align 8
  %36 = getelementptr inbounds %struct.mem_pool, %struct.mem_pool* %35, i32 0, i32 0
  %37 = load %struct.mp_block*, %struct.mp_block** %36, align 8
  %38 = icmp ne %struct.mp_block* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load %struct.mem_pool*, %struct.mem_pool** %4, align 8
  %41 = getelementptr inbounds %struct.mem_pool, %struct.mem_pool* %40, i32 0, i32 0
  %42 = load %struct.mp_block*, %struct.mp_block** %41, align 8
  %43 = load %struct.mem_pool*, %struct.mem_pool** %3, align 8
  %44 = getelementptr inbounds %struct.mem_pool, %struct.mem_pool* %43, i32 0, i32 0
  store %struct.mp_block* %42, %struct.mp_block** %44, align 8
  br label %46

45:                                               ; preds = %34
  br label %46

46:                                               ; preds = %45, %39
  br label %47

47:                                               ; preds = %46, %28
  %48 = load %struct.mem_pool*, %struct.mem_pool** %4, align 8
  %49 = getelementptr inbounds %struct.mem_pool, %struct.mem_pool* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.mem_pool*, %struct.mem_pool** %3, align 8
  %52 = getelementptr inbounds %struct.mem_pool, %struct.mem_pool* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, %50
  store i64 %54, i64* %52, align 8
  %55 = load %struct.mem_pool*, %struct.mem_pool** %4, align 8
  %56 = getelementptr inbounds %struct.mem_pool, %struct.mem_pool* %55, i32 0, i32 1
  store i64 0, i64* %56, align 8
  %57 = load %struct.mem_pool*, %struct.mem_pool** %4, align 8
  %58 = getelementptr inbounds %struct.mem_pool, %struct.mem_pool* %57, i32 0, i32 0
  store %struct.mp_block* null, %struct.mp_block** %58, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
