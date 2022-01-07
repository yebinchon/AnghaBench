; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_jitterentropy.c_jent_entropy_collector_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_jitterentropy.c_jent_entropy_collector_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rand_data = type { i32, i32, i32, i32, i8* }

@JENT_DISABLE_MEMORY_ACCESS = common dso_local global i32 0, align 4
@JENT_MEMORY_SIZE = common dso_local global i32 0, align 4
@JENT_MEMORY_BLOCKSIZE = common dso_local global i32 0, align 4
@JENT_MEMORY_BLOCKS = common dso_local global i32 0, align 4
@JENT_MEMORY_ACCESSLOOPS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rand_data* @jent_entropy_collector_alloc(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.rand_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.rand_data*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = call i8* @jent_zalloc(i32 24)
  %8 = bitcast i8* %7 to %struct.rand_data*
  store %struct.rand_data* %8, %struct.rand_data** %6, align 8
  %9 = load %struct.rand_data*, %struct.rand_data** %6, align 8
  %10 = icmp ne %struct.rand_data* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.rand_data* null, %struct.rand_data** %3, align 8
  br label %50

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @JENT_DISABLE_MEMORY_ACCESS, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %39, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* @JENT_MEMORY_SIZE, align 4
  %19 = call i8* @jent_zalloc(i32 %18)
  %20 = load %struct.rand_data*, %struct.rand_data** %6, align 8
  %21 = getelementptr inbounds %struct.rand_data, %struct.rand_data* %20, i32 0, i32 4
  store i8* %19, i8** %21, align 8
  %22 = load %struct.rand_data*, %struct.rand_data** %6, align 8
  %23 = getelementptr inbounds %struct.rand_data, %struct.rand_data* %22, i32 0, i32 4
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %17
  %27 = load %struct.rand_data*, %struct.rand_data** %6, align 8
  %28 = call i32 @jent_zfree(%struct.rand_data* %27)
  store %struct.rand_data* null, %struct.rand_data** %3, align 8
  br label %50

29:                                               ; preds = %17
  %30 = load i32, i32* @JENT_MEMORY_BLOCKSIZE, align 4
  %31 = load %struct.rand_data*, %struct.rand_data** %6, align 8
  %32 = getelementptr inbounds %struct.rand_data, %struct.rand_data* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @JENT_MEMORY_BLOCKS, align 4
  %34 = load %struct.rand_data*, %struct.rand_data** %6, align 8
  %35 = getelementptr inbounds %struct.rand_data, %struct.rand_data* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* @JENT_MEMORY_ACCESSLOOPS, align 4
  %37 = load %struct.rand_data*, %struct.rand_data** %6, align 8
  %38 = getelementptr inbounds %struct.rand_data, %struct.rand_data* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %29, %12
  %40 = load i32, i32* %4, align 4
  %41 = icmp eq i32 0, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 1, i32* %4, align 4
  br label %43

43:                                               ; preds = %42, %39
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.rand_data*, %struct.rand_data** %6, align 8
  %46 = getelementptr inbounds %struct.rand_data, %struct.rand_data* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.rand_data*, %struct.rand_data** %6, align 8
  %48 = call i32 @jent_gen_entropy(%struct.rand_data* %47)
  %49 = load %struct.rand_data*, %struct.rand_data** %6, align 8
  store %struct.rand_data* %49, %struct.rand_data** %3, align 8
  br label %50

50:                                               ; preds = %43, %26, %11
  %51 = load %struct.rand_data*, %struct.rand_data** %3, align 8
  ret %struct.rand_data* %51
}

declare dso_local i8* @jent_zalloc(i32) #1

declare dso_local i32 @jent_zfree(%struct.rand_data*) #1

declare dso_local i32 @jent_gen_entropy(%struct.rand_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
