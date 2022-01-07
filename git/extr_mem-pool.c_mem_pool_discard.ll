; ModuleID = '/home/carl/AnghaBench/git/extr_mem-pool.c_mem_pool_discard.c'
source_filename = "/home/carl/AnghaBench/git/extr_mem-pool.c_mem_pool_discard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_pool = type { i64, i64, %struct.mem_pool*, %struct.mem_pool* }
%struct.mp_block = type { i64, i64, %struct.mp_block*, %struct.mp_block* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mem_pool_discard(%struct.mem_pool* %0, i32 %1) #0 {
  %3 = alloca %struct.mem_pool*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mp_block*, align 8
  %6 = alloca %struct.mp_block*, align 8
  store %struct.mem_pool* %0, %struct.mem_pool** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.mem_pool*, %struct.mem_pool** %3, align 8
  %8 = getelementptr inbounds %struct.mem_pool, %struct.mem_pool* %7, i32 0, i32 3
  %9 = load %struct.mem_pool*, %struct.mem_pool** %8, align 8
  %10 = bitcast %struct.mem_pool* %9 to %struct.mp_block*
  store %struct.mp_block* %10, %struct.mp_block** %5, align 8
  br label %11

11:                                               ; preds = %38, %2
  %12 = load %struct.mp_block*, %struct.mp_block** %5, align 8
  %13 = icmp ne %struct.mp_block* %12, null
  br i1 %13, label %14, label %41

14:                                               ; preds = %11
  %15 = load %struct.mp_block*, %struct.mp_block** %5, align 8
  store %struct.mp_block* %15, %struct.mp_block** %6, align 8
  %16 = load %struct.mp_block*, %struct.mp_block** %5, align 8
  %17 = getelementptr inbounds %struct.mp_block, %struct.mp_block* %16, i32 0, i32 2
  %18 = load %struct.mp_block*, %struct.mp_block** %17, align 8
  store %struct.mp_block* %18, %struct.mp_block** %5, align 8
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %14
  %22 = load %struct.mp_block*, %struct.mp_block** %6, align 8
  %23 = getelementptr inbounds %struct.mp_block, %struct.mp_block* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.mp_block*, %struct.mp_block** %6, align 8
  %26 = getelementptr inbounds %struct.mp_block, %struct.mp_block* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i8*
  %29 = load %struct.mp_block*, %struct.mp_block** %6, align 8
  %30 = getelementptr inbounds %struct.mp_block, %struct.mp_block* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i8*
  %33 = ptrtoint i8* %28 to i64
  %34 = ptrtoint i8* %32 to i64
  %35 = sub i64 %33, %34
  %36 = trunc i64 %35 to i32
  %37 = call i32 @memset(i64 %24, i32 221, i32 %36)
  br label %38

38:                                               ; preds = %21, %14
  %39 = load %struct.mp_block*, %struct.mp_block** %6, align 8
  %40 = call i32 @free(%struct.mp_block* %39)
  br label %11

41:                                               ; preds = %11
  %42 = load %struct.mem_pool*, %struct.mem_pool** %3, align 8
  %43 = bitcast %struct.mem_pool* %42 to %struct.mp_block*
  %44 = call i32 @free(%struct.mp_block* %43)
  ret void
}

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @free(%struct.mp_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
