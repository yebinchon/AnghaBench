; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm2-space.c_tpm2_prepare_space.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm2-space.c_tpm2_prepare_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32*, i32, i32 }
%struct.tpm_space = type { i32*, i32*, i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tpm2_prepare_space(%struct.tpm_chip* %0, %struct.tpm_space* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tpm_chip*, align 8
  %7 = alloca %struct.tpm_space*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tpm_chip* %0, %struct.tpm_chip** %6, align 8
  store %struct.tpm_space* %1, %struct.tpm_space** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.tpm_space*, %struct.tpm_space** %7, align 8
  %13 = icmp ne %struct.tpm_space* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %79

15:                                               ; preds = %4
  %16 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %17 = load %struct.tpm_space*, %struct.tpm_space** %7, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = load i64, i64* %9, align 8
  %20 = call i32 @tpm_find_and_validate_cc(%struct.tpm_chip* %16, %struct.tpm_space* %17, i32* %18, i64 %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %5, align 4
  br label %79

25:                                               ; preds = %15
  %26 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %27 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 3
  %29 = load %struct.tpm_space*, %struct.tpm_space** %7, align 8
  %30 = getelementptr inbounds %struct.tpm_space, %struct.tpm_space* %29, i32 0, i32 3
  %31 = call i32 @memcpy(i32* %28, i32* %30, i32 4)
  %32 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %33 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load %struct.tpm_space*, %struct.tpm_space** %7, align 8
  %36 = getelementptr inbounds %struct.tpm_space, %struct.tpm_space* %35, i32 0, i32 2
  %37 = call i32 @memcpy(i32* %34, i32* %36, i32 4)
  %38 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %39 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.tpm_space*, %struct.tpm_space** %7, align 8
  %43 = getelementptr inbounds %struct.tpm_space, %struct.tpm_space* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* @PAGE_SIZE, align 4
  %46 = call i32 @memcpy(i32* %41, i32* %44, i32 %45)
  %47 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %48 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.tpm_space*, %struct.tpm_space** %7, align 8
  %52 = getelementptr inbounds %struct.tpm_space, %struct.tpm_space* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* @PAGE_SIZE, align 4
  %55 = call i32 @memcpy(i32* %50, i32* %53, i32 %54)
  %56 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %57 = call i32 @tpm2_load_space(%struct.tpm_chip* %56)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %25
  %61 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %62 = call i32 @tpm2_flush_space(%struct.tpm_chip* %61)
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %5, align 4
  br label %79

64:                                               ; preds = %25
  %65 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %66 = load i32, i32* %11, align 4
  %67 = load i32*, i32** %8, align 8
  %68 = call i32 @tpm2_map_command(%struct.tpm_chip* %65, i32 %66, i32* %67)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %64
  %72 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %73 = call i32 @tpm2_flush_space(%struct.tpm_chip* %72)
  %74 = load i32, i32* %10, align 4
  store i32 %74, i32* %5, align 4
  br label %79

75:                                               ; preds = %64
  %76 = load i32, i32* %11, align 4
  %77 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %78 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %75, %71, %60, %23, %14
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32 @tpm_find_and_validate_cc(%struct.tpm_chip*, %struct.tpm_space*, i32*, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @tpm2_load_space(%struct.tpm_chip*) #1

declare dso_local i32 @tpm2_flush_space(%struct.tpm_chip*) #1

declare dso_local i32 @tpm2_map_command(%struct.tpm_chip*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
