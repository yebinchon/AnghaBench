; ModuleID = '/home/carl/AnghaBench/git/extr_mem-pool.c_mem_pool_alloc.c'
source_filename = "/home/carl/AnghaBench/git/extr_mem-pool.c_mem_pool_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_pool = type { i32, %struct.mp_block* }
%struct.mp_block = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mem_pool_alloc(%struct.mem_pool* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.mem_pool*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mp_block*, align 8
  %7 = alloca i8*, align 8
  store %struct.mem_pool* %0, %struct.mem_pool** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.mp_block* null, %struct.mp_block** %6, align 8
  %8 = load i64, i64* %5, align 8
  %9 = and i64 %8, 3
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load i64, i64* %5, align 8
  %13 = and i64 %12, 3
  %14 = sub i64 4, %13
  %15 = load i64, i64* %5, align 8
  %16 = add i64 %15, %14
  store i64 %16, i64* %5, align 8
  br label %17

17:                                               ; preds = %11, %2
  %18 = load %struct.mem_pool*, %struct.mem_pool** %4, align 8
  %19 = getelementptr inbounds %struct.mem_pool, %struct.mem_pool* %18, i32 0, i32 1
  %20 = load %struct.mp_block*, %struct.mp_block** %19, align 8
  %21 = icmp ne %struct.mp_block* %20, null
  br i1 %21, label %22, label %40

22:                                               ; preds = %17
  %23 = load %struct.mem_pool*, %struct.mem_pool** %4, align 8
  %24 = getelementptr inbounds %struct.mem_pool, %struct.mem_pool* %23, i32 0, i32 1
  %25 = load %struct.mp_block*, %struct.mp_block** %24, align 8
  %26 = getelementptr inbounds %struct.mp_block, %struct.mp_block* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.mem_pool*, %struct.mem_pool** %4, align 8
  %29 = getelementptr inbounds %struct.mem_pool, %struct.mem_pool* %28, i32 0, i32 1
  %30 = load %struct.mp_block*, %struct.mp_block** %29, align 8
  %31 = getelementptr inbounds %struct.mp_block, %struct.mp_block* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = sub i64 %27, %32
  %34 = load i64, i64* %5, align 8
  %35 = icmp uge i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %22
  %37 = load %struct.mem_pool*, %struct.mem_pool** %4, align 8
  %38 = getelementptr inbounds %struct.mem_pool, %struct.mem_pool* %37, i32 0, i32 1
  %39 = load %struct.mp_block*, %struct.mp_block** %38, align 8
  store %struct.mp_block* %39, %struct.mp_block** %6, align 8
  br label %40

40:                                               ; preds = %36, %22, %17
  %41 = load %struct.mp_block*, %struct.mp_block** %6, align 8
  %42 = icmp ne %struct.mp_block* %41, null
  br i1 %42, label %66, label %43

43:                                               ; preds = %40
  %44 = load i64, i64* %5, align 8
  %45 = load %struct.mem_pool*, %struct.mem_pool** %4, align 8
  %46 = getelementptr inbounds %struct.mem_pool, %struct.mem_pool* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sdiv i32 %47, 2
  %49 = sext i32 %48 to i64
  %50 = icmp uge i64 %44, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %43
  %52 = load %struct.mem_pool*, %struct.mem_pool** %4, align 8
  %53 = load i64, i64* %5, align 8
  %54 = load %struct.mem_pool*, %struct.mem_pool** %4, align 8
  %55 = getelementptr inbounds %struct.mem_pool, %struct.mem_pool* %54, i32 0, i32 1
  %56 = load %struct.mp_block*, %struct.mp_block** %55, align 8
  %57 = call i8* @mem_pool_alloc_block(%struct.mem_pool* %52, i64 %53, %struct.mp_block* %56)
  store i8* %57, i8** %3, align 8
  br label %77

58:                                               ; preds = %43
  %59 = load %struct.mem_pool*, %struct.mem_pool** %4, align 8
  %60 = load %struct.mem_pool*, %struct.mem_pool** %4, align 8
  %61 = getelementptr inbounds %struct.mem_pool, %struct.mem_pool* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = call i8* @mem_pool_alloc_block(%struct.mem_pool* %59, i64 %63, %struct.mp_block* null)
  %65 = bitcast i8* %64 to %struct.mp_block*
  store %struct.mp_block* %65, %struct.mp_block** %6, align 8
  br label %66

66:                                               ; preds = %58, %40
  %67 = load %struct.mp_block*, %struct.mp_block** %6, align 8
  %68 = getelementptr inbounds %struct.mp_block, %struct.mp_block* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = inttoptr i64 %69 to i8*
  store i8* %70, i8** %7, align 8
  %71 = load i64, i64* %5, align 8
  %72 = load %struct.mp_block*, %struct.mp_block** %6, align 8
  %73 = getelementptr inbounds %struct.mp_block, %struct.mp_block* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = add i64 %74, %71
  store i64 %75, i64* %73, align 8
  %76 = load i8*, i8** %7, align 8
  store i8* %76, i8** %3, align 8
  br label %77

77:                                               ; preds = %66, %51
  %78 = load i8*, i8** %3, align 8
  ret i8* %78
}

declare dso_local i8* @mem_pool_alloc_block(%struct.mem_pool*, i64, %struct.mp_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
