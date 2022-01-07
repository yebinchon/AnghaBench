; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_dh.c_dh_set_params.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_dh.c_dh_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dh_ctx = type { i8*, i8*, i8* }
%struct.dh = type { i32, i32, i32, i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dh_ctx*, %struct.dh*)* @dh_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dh_set_params(%struct.dh_ctx* %0, %struct.dh* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dh_ctx*, align 8
  %5 = alloca %struct.dh*, align 8
  store %struct.dh_ctx* %0, %struct.dh_ctx** %4, align 8
  store %struct.dh* %1, %struct.dh** %5, align 8
  %6 = load %struct.dh*, %struct.dh** %5, align 8
  %7 = getelementptr inbounds %struct.dh, %struct.dh* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = shl i32 %8, 3
  %10 = call i64 @dh_check_params_length(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %78

15:                                               ; preds = %2
  %16 = load %struct.dh*, %struct.dh** %5, align 8
  %17 = getelementptr inbounds %struct.dh, %struct.dh* %16, i32 0, i32 5
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.dh*, %struct.dh** %5, align 8
  %20 = getelementptr inbounds %struct.dh, %struct.dh* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i8* @mpi_read_raw_data(i64 %18, i32 %21)
  %23 = load %struct.dh_ctx*, %struct.dh_ctx** %4, align 8
  %24 = getelementptr inbounds %struct.dh_ctx, %struct.dh_ctx* %23, i32 0, i32 2
  store i8* %22, i8** %24, align 8
  %25 = load %struct.dh_ctx*, %struct.dh_ctx** %4, align 8
  %26 = getelementptr inbounds %struct.dh_ctx, %struct.dh_ctx* %25, i32 0, i32 2
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %15
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %78

32:                                               ; preds = %15
  %33 = load %struct.dh*, %struct.dh** %5, align 8
  %34 = getelementptr inbounds %struct.dh, %struct.dh* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %60

37:                                               ; preds = %32
  %38 = load %struct.dh*, %struct.dh** %5, align 8
  %39 = getelementptr inbounds %struct.dh, %struct.dh* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %60

42:                                               ; preds = %37
  %43 = load %struct.dh*, %struct.dh** %5, align 8
  %44 = getelementptr inbounds %struct.dh, %struct.dh* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.dh*, %struct.dh** %5, align 8
  %47 = getelementptr inbounds %struct.dh, %struct.dh* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @mpi_read_raw_data(i64 %45, i32 %48)
  %50 = load %struct.dh_ctx*, %struct.dh_ctx** %4, align 8
  %51 = getelementptr inbounds %struct.dh_ctx, %struct.dh_ctx* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  %52 = load %struct.dh_ctx*, %struct.dh_ctx** %4, align 8
  %53 = getelementptr inbounds %struct.dh_ctx, %struct.dh_ctx* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %42
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %78

59:                                               ; preds = %42
  br label %60

60:                                               ; preds = %59, %37, %32
  %61 = load %struct.dh*, %struct.dh** %5, align 8
  %62 = getelementptr inbounds %struct.dh, %struct.dh* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.dh*, %struct.dh** %5, align 8
  %65 = getelementptr inbounds %struct.dh, %struct.dh* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i8* @mpi_read_raw_data(i64 %63, i32 %66)
  %68 = load %struct.dh_ctx*, %struct.dh_ctx** %4, align 8
  %69 = getelementptr inbounds %struct.dh_ctx, %struct.dh_ctx* %68, i32 0, i32 0
  store i8* %67, i8** %69, align 8
  %70 = load %struct.dh_ctx*, %struct.dh_ctx** %4, align 8
  %71 = getelementptr inbounds %struct.dh_ctx, %struct.dh_ctx* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %60
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %78

77:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %77, %74, %56, %29, %12
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i64 @dh_check_params_length(i32) #1

declare dso_local i8* @mpi_read_raw_data(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
