; ModuleID = '/home/carl/AnghaBench/git/extr_mem-pool.c_mem_pool_contains.c'
source_filename = "/home/carl/AnghaBench/git/extr_mem-pool.c_mem_pool_contains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_pool = type { %struct.mp_block* }
%struct.mp_block = type { i64, i64, %struct.mp_block* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mem_pool_contains(%struct.mem_pool* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mem_pool*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mp_block*, align 8
  store %struct.mem_pool* %0, %struct.mem_pool** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.mem_pool*, %struct.mem_pool** %4, align 8
  %8 = getelementptr inbounds %struct.mem_pool, %struct.mem_pool* %7, i32 0, i32 0
  %9 = load %struct.mp_block*, %struct.mp_block** %8, align 8
  store %struct.mp_block* %9, %struct.mp_block** %6, align 8
  br label %10

10:                                               ; preds = %29, %2
  %11 = load %struct.mp_block*, %struct.mp_block** %6, align 8
  %12 = icmp ne %struct.mp_block* %11, null
  br i1 %12, label %13, label %33

13:                                               ; preds = %10
  %14 = load i8*, i8** %5, align 8
  %15 = load %struct.mp_block*, %struct.mp_block** %6, align 8
  %16 = getelementptr inbounds %struct.mp_block, %struct.mp_block* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = icmp uge i8* %14, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %13
  %21 = load i8*, i8** %5, align 8
  %22 = load %struct.mp_block*, %struct.mp_block** %6, align 8
  %23 = getelementptr inbounds %struct.mp_block, %struct.mp_block* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = icmp ult i8* %21, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  store i32 1, i32* %3, align 4
  br label %34

28:                                               ; preds = %20, %13
  br label %29

29:                                               ; preds = %28
  %30 = load %struct.mp_block*, %struct.mp_block** %6, align 8
  %31 = getelementptr inbounds %struct.mp_block, %struct.mp_block* %30, i32 0, i32 2
  %32 = load %struct.mp_block*, %struct.mp_block** %31, align 8
  store %struct.mp_block* %32, %struct.mp_block** %6, align 8
  br label %10

33:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %27
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
