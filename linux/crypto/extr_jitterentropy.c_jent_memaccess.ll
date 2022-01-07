; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_jitterentropy.c_jent_memaccess.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_jitterentropy.c_jent_memaccess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rand_data = type { i8*, i32, i32, i64, i32 }

@MAX_ACC_LOOP_BIT = common dso_local global i32 0, align 4
@MIN_ACC_LOOP_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rand_data*, i64)* @jent_memaccess to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jent_memaccess(%struct.rand_data* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rand_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store %struct.rand_data* %0, %struct.rand_data** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  store i64 0, i64* %7, align 8
  %10 = load %struct.rand_data*, %struct.rand_data** %4, align 8
  %11 = call i64 @jent_loop_shuffle(%struct.rand_data* %10, i32 7, i32 0)
  store i64 %11, i64* %8, align 8
  %12 = load %struct.rand_data*, %struct.rand_data** %4, align 8
  %13 = icmp eq %struct.rand_data* null, %12
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  %15 = load %struct.rand_data*, %struct.rand_data** %4, align 8
  %16 = getelementptr inbounds %struct.rand_data, %struct.rand_data* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = icmp eq i8* null, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %14, %2
  store i32 0, i32* %3, align 4
  br label %80

20:                                               ; preds = %14
  %21 = load %struct.rand_data*, %struct.rand_data** %4, align 8
  %22 = getelementptr inbounds %struct.rand_data, %struct.rand_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.rand_data*, %struct.rand_data** %4, align 8
  %25 = getelementptr inbounds %struct.rand_data, %struct.rand_data* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = mul i32 %23, %26
  store i32 %27, i32* %6, align 4
  %28 = load i64, i64* %5, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  %31 = load i64, i64* %5, align 8
  store i64 %31, i64* %8, align 8
  br label %32

32:                                               ; preds = %30, %20
  store i64 0, i64* %7, align 8
  br label %33

33:                                               ; preds = %74, %32
  %34 = load i64, i64* %7, align 8
  %35 = load %struct.rand_data*, %struct.rand_data** %4, align 8
  %36 = getelementptr inbounds %struct.rand_data, %struct.rand_data* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %8, align 8
  %39 = add nsw i64 %37, %38
  %40 = icmp slt i64 %34, %39
  br i1 %40, label %41, label %77

41:                                               ; preds = %33
  %42 = load %struct.rand_data*, %struct.rand_data** %4, align 8
  %43 = getelementptr inbounds %struct.rand_data, %struct.rand_data* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.rand_data*, %struct.rand_data** %4, align 8
  %46 = getelementptr inbounds %struct.rand_data, %struct.rand_data* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %44, i64 %48
  store i8* %49, i8** %9, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = add nsw i32 %52, 1
  %54 = and i32 %53, 255
  %55 = trunc i32 %54 to i8
  %56 = load i8*, i8** %9, align 8
  store i8 %55, i8* %56, align 1
  %57 = load %struct.rand_data*, %struct.rand_data** %4, align 8
  %58 = getelementptr inbounds %struct.rand_data, %struct.rand_data* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.rand_data*, %struct.rand_data** %4, align 8
  %61 = getelementptr inbounds %struct.rand_data, %struct.rand_data* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = add i32 %59, %62
  %64 = sub i32 %63, 1
  %65 = load %struct.rand_data*, %struct.rand_data** %4, align 8
  %66 = getelementptr inbounds %struct.rand_data, %struct.rand_data* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 8
  %67 = load %struct.rand_data*, %struct.rand_data** %4, align 8
  %68 = getelementptr inbounds %struct.rand_data, %struct.rand_data* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = urem i32 %69, %70
  %72 = load %struct.rand_data*, %struct.rand_data** %4, align 8
  %73 = getelementptr inbounds %struct.rand_data, %struct.rand_data* %72, i32 0, i32 4
  store i32 %71, i32* %73, align 8
  br label %74

74:                                               ; preds = %41
  %75 = load i64, i64* %7, align 8
  %76 = add nsw i64 %75, 1
  store i64 %76, i64* %7, align 8
  br label %33

77:                                               ; preds = %33
  %78 = load i64, i64* %7, align 8
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %77, %19
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i64 @jent_loop_shuffle(%struct.rand_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
