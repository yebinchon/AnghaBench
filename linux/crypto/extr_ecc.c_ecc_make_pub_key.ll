; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_ecc.c_ecc_make_pub_key.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_ecc.c_ecc_make_pub_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecc_point = type { i32*, i32* }
%struct.ecc_curve = type { i32 }

@ECC_MAX_DIGITS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecc_make_pub_key(i32 %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ecc_point*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.ecc_curve*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load i32, i32* @ECC_MAX_DIGITS, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %11, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %12, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call %struct.ecc_curve* @ecc_get_curve(i32 %18)
  store %struct.ecc_curve* %19, %struct.ecc_curve** %13, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %4
  %23 = load %struct.ecc_curve*, %struct.ecc_curve** %13, align 8
  %24 = icmp ne %struct.ecc_curve* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @ARRAY_SIZE(i32* %17)
  %28 = icmp ugt i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25, %22, %4
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %9, align 4
  br label %75

32:                                               ; preds = %25
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @ecc_swap_digits(i32* %33, i32* %17, i32 %34)
  %36 = load i32, i32* %6, align 4
  %37 = call %struct.ecc_point* @ecc_alloc_point(i32 %36)
  store %struct.ecc_point* %37, %struct.ecc_point** %10, align 8
  %38 = load %struct.ecc_point*, %struct.ecc_point** %10, align 8
  %39 = icmp ne %struct.ecc_point* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %32
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %9, align 4
  br label %75

43:                                               ; preds = %32
  %44 = load %struct.ecc_point*, %struct.ecc_point** %10, align 8
  %45 = load %struct.ecc_curve*, %struct.ecc_curve** %13, align 8
  %46 = getelementptr inbounds %struct.ecc_curve, %struct.ecc_curve* %45, i32 0, i32 0
  %47 = load %struct.ecc_curve*, %struct.ecc_curve** %13, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @ecc_point_mult(%struct.ecc_point* %44, i32* %46, i32* %17, i32* null, %struct.ecc_curve* %47, i32 %48)
  %50 = load %struct.ecc_point*, %struct.ecc_point** %10, align 8
  %51 = call i64 @ecc_point_is_zero(%struct.ecc_point* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %43
  %54 = load i32, i32* @EAGAIN, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %9, align 4
  br label %72

56:                                               ; preds = %43
  %57 = load %struct.ecc_point*, %struct.ecc_point** %10, align 8
  %58 = getelementptr inbounds %struct.ecc_point, %struct.ecc_point* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @ecc_swap_digits(i32* %59, i32* %60, i32 %61)
  %63 = load %struct.ecc_point*, %struct.ecc_point** %10, align 8
  %64 = getelementptr inbounds %struct.ecc_point, %struct.ecc_point* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32*, i32** %8, align 8
  %67 = load i32, i32* %6, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @ecc_swap_digits(i32* %65, i32* %69, i32 %70)
  br label %72

72:                                               ; preds = %56, %53
  %73 = load %struct.ecc_point*, %struct.ecc_point** %10, align 8
  %74 = call i32 @ecc_free_point(%struct.ecc_point* %73)
  br label %75

75:                                               ; preds = %72, %40, %29
  %76 = load i32, i32* %9, align 4
  %77 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %77)
  ret i32 %76
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.ecc_curve* @ecc_get_curve(i32) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @ecc_swap_digits(i32*, i32*, i32) #2

declare dso_local %struct.ecc_point* @ecc_alloc_point(i32) #2

declare dso_local i32 @ecc_point_mult(%struct.ecc_point*, i32*, i32*, i32*, %struct.ecc_curve*, i32) #2

declare dso_local i64 @ecc_point_is_zero(%struct.ecc_point*) #2

declare dso_local i32 @ecc_free_point(%struct.ecc_point*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
