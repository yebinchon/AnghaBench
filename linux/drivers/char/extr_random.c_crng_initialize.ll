; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/extr_random.c_crng_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/extr_random.c_crng_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crng_state = type { i64*, i64 }

@.str = private unnamed_addr constant [17 x i8] c"expand 32-byte k\00", align 1
@primary_crng = common dso_local global %struct.crng_state zeroinitializer, align 8
@input_pool = common dso_local global i32 0, align 4
@trust_cpu = common dso_local global i64 0, align 8
@crng_init = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"random: crng done (trusting CPU's manufacturer)\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@CRNG_RESEED_INTERVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crng_state*)* @crng_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crng_initialize(%struct.crng_state* %0) #0 {
  %2 = alloca %struct.crng_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.crng_state* %0, %struct.crng_state** %2, align 8
  store i32 1, i32* %4, align 4
  %6 = load %struct.crng_state*, %struct.crng_state** %2, align 8
  %7 = getelementptr inbounds %struct.crng_state, %struct.crng_state* %6, i32 0, i32 0
  %8 = load i64*, i64** %7, align 8
  %9 = getelementptr inbounds i64, i64* %8, i64 0
  %10 = call i32 @memcpy(i64* %9, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 16)
  %11 = load %struct.crng_state*, %struct.crng_state** %2, align 8
  %12 = icmp eq %struct.crng_state* %11, @primary_crng
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.crng_state*, %struct.crng_state** %2, align 8
  %15 = getelementptr inbounds %struct.crng_state, %struct.crng_state* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 4
  %18 = call i32 @_extract_entropy(i32* @input_pool, i64* %17, i32 48, i32 0)
  br label %25

19:                                               ; preds = %1
  %20 = load %struct.crng_state*, %struct.crng_state** %2, align 8
  %21 = getelementptr inbounds %struct.crng_state, %struct.crng_state* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 4
  %24 = call i32 @_get_random_bytes(i64* %23, i32 48)
  br label %25

25:                                               ; preds = %19, %13
  store i32 4, i32* %3, align 4
  br label %26

26:                                               ; preds = %47, %25
  %27 = load i32, i32* %3, align 4
  %28 = icmp slt i32 %27, 16
  br i1 %28, label %29, label %50

29:                                               ; preds = %26
  %30 = call i32 @arch_get_random_seed_long(i64* %5)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %29
  %33 = call i32 @arch_get_random_long(i64* %5)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = call i64 (...) @random_get_entropy()
  store i64 %36, i64* %5, align 8
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %35, %32, %29
  %38 = load i64, i64* %5, align 8
  %39 = load %struct.crng_state*, %struct.crng_state** %2, align 8
  %40 = getelementptr inbounds %struct.crng_state, %struct.crng_state* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = xor i64 %45, %38
  store i64 %46, i64* %44, align 8
  br label %47

47:                                               ; preds = %37
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %3, align 4
  br label %26

50:                                               ; preds = %26
  %51 = load i64, i64* @trust_cpu, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %50
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %53
  %57 = load %struct.crng_state*, %struct.crng_state** %2, align 8
  %58 = icmp eq %struct.crng_state* %57, @primary_crng
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = call i32 (...) @invalidate_batched_entropy()
  %61 = call i32 (...) @numa_crng_init()
  store i32 2, i32* @crng_init, align 4
  %62 = call i32 @pr_notice(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %63

63:                                               ; preds = %59, %56, %53, %50
  %64 = load i64, i64* @jiffies, align 8
  %65 = load i64, i64* @CRNG_RESEED_INTERVAL, align 8
  %66 = sub nsw i64 %64, %65
  %67 = sub nsw i64 %66, 1
  %68 = load %struct.crng_state*, %struct.crng_state** %2, align 8
  %69 = getelementptr inbounds %struct.crng_state, %struct.crng_state* %68, i32 0, i32 1
  store i64 %67, i64* %69, align 8
  ret void
}

declare dso_local i32 @memcpy(i64*, i8*, i32) #1

declare dso_local i32 @_extract_entropy(i32*, i64*, i32, i32) #1

declare dso_local i32 @_get_random_bytes(i64*, i32) #1

declare dso_local i32 @arch_get_random_seed_long(i64*) #1

declare dso_local i32 @arch_get_random_long(i64*) #1

declare dso_local i64 @random_get_entropy(...) #1

declare dso_local i32 @invalidate_batched_entropy(...) #1

declare dso_local i32 @numa_crng_init(...) #1

declare dso_local i32 @pr_notice(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
