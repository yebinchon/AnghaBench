; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_dh.c_dh_is_pubkey_valid.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_dh.c_dh_is_pubkey_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dh_ctx = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dh_ctx*, i32)* @dh_is_pubkey_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dh_is_pubkey_valid(%struct.dh_ctx* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dh_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dh_ctx* %0, %struct.dh_ctx** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.dh_ctx*, %struct.dh_ctx** %4, align 8
  %9 = getelementptr inbounds %struct.dh_ctx, %struct.dh_ctx* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %73

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @mpi_cmp_ui(i32 %20, i32 1)
  %22 = icmp slt i32 %21, 1
  br i1 %22, label %30, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.dh_ctx*, %struct.dh_ctx** %4, align 8
  %26 = getelementptr inbounds %struct.dh_ctx, %struct.dh_ctx* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @mpi_cmp(i32 %24, i32 %27)
  %29 = icmp sge i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23, %19
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %73

33:                                               ; preds = %23
  %34 = load %struct.dh_ctx*, %struct.dh_ctx** %4, align 8
  %35 = getelementptr inbounds %struct.dh_ctx, %struct.dh_ctx* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %72

38:                                               ; preds = %33
  %39 = call i32 @mpi_alloc(i32 0)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %73

45:                                               ; preds = %38
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.dh_ctx*, %struct.dh_ctx** %4, align 8
  %49 = getelementptr inbounds %struct.dh_ctx, %struct.dh_ctx* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.dh_ctx*, %struct.dh_ctx** %4, align 8
  %52 = getelementptr inbounds %struct.dh_ctx, %struct.dh_ctx* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @mpi_powm(i32 %46, i32 %47, i64 %50, i32 %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %45
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @mpi_free(i32 %58)
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %3, align 4
  br label %73

61:                                               ; preds = %45
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @mpi_cmp_ui(i32 %62, i32 1)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @mpi_free(i32 %64)
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %73

71:                                               ; preds = %61
  br label %72

72:                                               ; preds = %71, %33
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %68, %57, %42, %30, %16
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mpi_cmp_ui(i32, i32) #1

declare dso_local i64 @mpi_cmp(i32, i32) #1

declare dso_local i32 @mpi_alloc(i32) #1

declare dso_local i32 @mpi_powm(i32, i32, i64, i32) #1

declare dso_local i32 @mpi_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
