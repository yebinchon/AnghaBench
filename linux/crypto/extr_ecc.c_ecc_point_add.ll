; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_ecc.c_ecc_point_add.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_ecc.c_ecc_point_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecc_point = type { i32*, i32* }
%struct.ecc_curve = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ECC_MAX_DIGITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecc_point*, %struct.ecc_point*, %struct.ecc_point*, %struct.ecc_curve*)* @ecc_point_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecc_point_add(%struct.ecc_point* %0, %struct.ecc_point* %1, %struct.ecc_point* %2, %struct.ecc_curve* %3) #0 {
  %5 = alloca %struct.ecc_point*, align 8
  %6 = alloca %struct.ecc_point*, align 8
  %7 = alloca %struct.ecc_point*, align 8
  %8 = alloca %struct.ecc_curve*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.ecc_point* %0, %struct.ecc_point** %5, align 8
  store %struct.ecc_point* %1, %struct.ecc_point** %6, align 8
  store %struct.ecc_point* %2, %struct.ecc_point** %7, align 8
  store %struct.ecc_curve* %3, %struct.ecc_curve** %8, align 8
  %14 = load i32, i32* @ECC_MAX_DIGITS, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  %18 = load i32, i32* @ECC_MAX_DIGITS, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  %21 = load i32, i32* @ECC_MAX_DIGITS, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %12, align 8
  %24 = load %struct.ecc_curve*, %struct.ecc_curve** %8, align 8
  %25 = getelementptr inbounds %struct.ecc_curve, %struct.ecc_curve* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %13, align 4
  %28 = load %struct.ecc_point*, %struct.ecc_point** %5, align 8
  %29 = getelementptr inbounds %struct.ecc_point, %struct.ecc_point* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.ecc_point*, %struct.ecc_point** %7, align 8
  %32 = getelementptr inbounds %struct.ecc_point, %struct.ecc_point* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %13, align 4
  %35 = call i32 @vli_set(i32* %30, i32* %33, i32 %34)
  %36 = load %struct.ecc_point*, %struct.ecc_point** %5, align 8
  %37 = getelementptr inbounds %struct.ecc_point, %struct.ecc_point* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.ecc_point*, %struct.ecc_point** %7, align 8
  %40 = getelementptr inbounds %struct.ecc_point, %struct.ecc_point* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %13, align 4
  %43 = call i32 @vli_set(i32* %38, i32* %41, i32 %42)
  %44 = load %struct.ecc_point*, %struct.ecc_point** %5, align 8
  %45 = getelementptr inbounds %struct.ecc_point, %struct.ecc_point* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.ecc_point*, %struct.ecc_point** %6, align 8
  %48 = getelementptr inbounds %struct.ecc_point, %struct.ecc_point* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.ecc_curve*, %struct.ecc_curve** %8, align 8
  %51 = getelementptr inbounds %struct.ecc_curve, %struct.ecc_curve* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @vli_mod_sub(i32* %17, i32* %46, i32* %49, i32 %52, i32 %53)
  %55 = load %struct.ecc_point*, %struct.ecc_point** %6, align 8
  %56 = getelementptr inbounds %struct.ecc_point, %struct.ecc_point* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %13, align 4
  %59 = call i32 @vli_set(i32* %20, i32* %57, i32 %58)
  %60 = load %struct.ecc_point*, %struct.ecc_point** %6, align 8
  %61 = getelementptr inbounds %struct.ecc_point, %struct.ecc_point* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @vli_set(i32* %23, i32* %62, i32 %63)
  %65 = load %struct.ecc_point*, %struct.ecc_point** %5, align 8
  %66 = getelementptr inbounds %struct.ecc_point, %struct.ecc_point* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.ecc_point*, %struct.ecc_point** %5, align 8
  %69 = getelementptr inbounds %struct.ecc_point, %struct.ecc_point* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.ecc_curve*, %struct.ecc_curve** %8, align 8
  %72 = getelementptr inbounds %struct.ecc_curve, %struct.ecc_curve* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %13, align 4
  %75 = call i32 @xycz_add(i32* %20, i32* %23, i32* %67, i32* %70, i32 %73, i32 %74)
  %76 = load %struct.ecc_curve*, %struct.ecc_curve** %8, align 8
  %77 = getelementptr inbounds %struct.ecc_curve, %struct.ecc_curve* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %13, align 4
  %80 = call i32 @vli_mod_inv(i32* %17, i32* %17, i32 %78, i32 %79)
  %81 = load %struct.ecc_point*, %struct.ecc_point** %5, align 8
  %82 = getelementptr inbounds %struct.ecc_point, %struct.ecc_point* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load %struct.ecc_point*, %struct.ecc_point** %5, align 8
  %85 = getelementptr inbounds %struct.ecc_point, %struct.ecc_point* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load %struct.ecc_curve*, %struct.ecc_curve** %8, align 8
  %88 = getelementptr inbounds %struct.ecc_curve, %struct.ecc_curve* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %13, align 4
  %91 = call i32 @apply_z(i32* %83, i32* %86, i32* %17, i32 %89, i32 %90)
  %92 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %92)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @vli_set(i32*, i32*, i32) #2

declare dso_local i32 @vli_mod_sub(i32*, i32*, i32*, i32, i32) #2

declare dso_local i32 @xycz_add(i32*, i32*, i32*, i32*, i32, i32) #2

declare dso_local i32 @vli_mod_inv(i32*, i32*, i32, i32) #2

declare dso_local i32 @apply_z(i32*, i32*, i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
