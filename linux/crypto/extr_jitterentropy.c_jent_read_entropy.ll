; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_jitterentropy.c_jent_read_entropy.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_jitterentropy.c_jent_read_entropy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rand_data = type { i32 }

@DATA_SIZE_BITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jent_read_entropy(%struct.rand_data* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rand_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.rand_data* %0, %struct.rand_data** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %6, align 8
  store i8* %10, i8** %8, align 8
  %11 = load %struct.rand_data*, %struct.rand_data** %5, align 8
  %12 = icmp ne %struct.rand_data* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %46

14:                                               ; preds = %3
  br label %15

15:                                               ; preds = %32, %14
  %16 = load i32, i32* %7, align 4
  %17 = icmp ult i32 0, %16
  br i1 %17, label %18, label %45

18:                                               ; preds = %15
  %19 = load %struct.rand_data*, %struct.rand_data** %5, align 8
  %20 = call i32 @jent_gen_entropy(%struct.rand_data* %19)
  %21 = load %struct.rand_data*, %struct.rand_data** %5, align 8
  %22 = call i32 @jent_fips_test(%struct.rand_data* %21)
  %23 = load i32, i32* @DATA_SIZE_BITS, align 4
  %24 = sdiv i32 %23, 8
  %25 = load i32, i32* %7, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %18
  %28 = load i32, i32* @DATA_SIZE_BITS, align 4
  %29 = sdiv i32 %28, 8
  store i32 %29, i32* %9, align 4
  br label %32

30:                                               ; preds = %18
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %9, align 4
  br label %32

32:                                               ; preds = %30, %27
  %33 = load i8*, i8** %8, align 8
  %34 = load %struct.rand_data*, %struct.rand_data** %5, align 8
  %35 = getelementptr inbounds %struct.rand_data, %struct.rand_data* %34, i32 0, i32 0
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @jent_memcpy(i8* %33, i32* %35, i32 %36)
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %7, align 4
  %40 = sub i32 %39, %38
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i8*, i8** %8, align 8
  %43 = zext i32 %41 to i64
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  store i8* %44, i8** %8, align 8
  br label %15

45:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %13
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @jent_gen_entropy(%struct.rand_data*) #1

declare dso_local i32 @jent_fips_test(%struct.rand_data*) #1

declare dso_local i32 @jent_memcpy(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
