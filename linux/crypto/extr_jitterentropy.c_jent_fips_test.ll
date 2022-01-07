; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_jitterentropy.c_jent_fips_test.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_jitterentropy.c_jent_fips_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rand_data = type { i64, i64 }

@.str = private unnamed_addr constant [42 x i8] c"jitterentropy: Duplicate output detected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rand_data*)* @jent_fips_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jent_fips_test(%struct.rand_data* %0) #0 {
  %2 = alloca %struct.rand_data*, align 8
  store %struct.rand_data* %0, %struct.rand_data** %2, align 8
  %3 = call i32 (...) @jent_fips_enabled()
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %35

6:                                                ; preds = %1
  %7 = load %struct.rand_data*, %struct.rand_data** %2, align 8
  %8 = getelementptr inbounds %struct.rand_data, %struct.rand_data* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %6
  %12 = load %struct.rand_data*, %struct.rand_data** %2, align 8
  %13 = getelementptr inbounds %struct.rand_data, %struct.rand_data* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.rand_data*, %struct.rand_data** %2, align 8
  %16 = getelementptr inbounds %struct.rand_data, %struct.rand_data* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  %17 = load %struct.rand_data*, %struct.rand_data** %2, align 8
  %18 = call i32 @jent_gen_entropy(%struct.rand_data* %17)
  br label %19

19:                                               ; preds = %11, %6
  %20 = load %struct.rand_data*, %struct.rand_data** %2, align 8
  %21 = getelementptr inbounds %struct.rand_data, %struct.rand_data* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.rand_data*, %struct.rand_data** %2, align 8
  %24 = getelementptr inbounds %struct.rand_data, %struct.rand_data* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %22, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = call i32 @jent_panic(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %19
  %30 = load %struct.rand_data*, %struct.rand_data** %2, align 8
  %31 = getelementptr inbounds %struct.rand_data, %struct.rand_data* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.rand_data*, %struct.rand_data** %2, align 8
  %34 = getelementptr inbounds %struct.rand_data, %struct.rand_data* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  br label %35

35:                                               ; preds = %29, %5
  ret void
}

declare dso_local i32 @jent_fips_enabled(...) #1

declare dso_local i32 @jent_gen_entropy(%struct.rand_data*) #1

declare dso_local i32 @jent_panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
