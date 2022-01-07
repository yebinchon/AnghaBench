; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_bwrite_interpolative_encode_value.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_bwrite_interpolative_encode_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitwriter = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bwrite_interpolative_encode_value(%struct.bitwriter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bitwriter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [32 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bitwriter* %0, %struct.bitwriter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = ashr i32 %10, 1
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp sge i32 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %9, align 4
  %18 = sub nsw i32 %16, %17
  %19 = shl i32 %18, 1
  store i32 %19, i32* %5, align 4
  br label %26

20:                                               ; preds = %3
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %5, align 4
  %23 = sub nsw i32 %21, %22
  %24 = shl i32 %23, 1
  %25 = sub nsw i32 %24, 1
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %20, %15
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, %27
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %33, %26
  %31 = load i32, i32* %5, align 4
  %32 = icmp sgt i32 %31, 1
  br i1 %32, label %33, label %42

33:                                               ; preds = %30
  %34 = load i32, i32* %5, align 4
  %35 = and i32 %34, 1
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %8, align 4
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 %38
  store i32 %35, i32* %39, align 4
  %40 = load i32, i32* %5, align 4
  %41 = ashr i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %30

42:                                               ; preds = %30
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %78, %42
  %46 = load i32, i32* %8, align 4
  %47 = icmp sge i32 %46, 0
  br i1 %47, label %48, label %81

48:                                               ; preds = %45
  %49 = load %struct.bitwriter*, %struct.bitwriter** %4, align 8
  %50 = getelementptr inbounds %struct.bitwriter, %struct.bitwriter* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %48
  %54 = load %struct.bitwriter*, %struct.bitwriter** %4, align 8
  %55 = call i32 @bwrite_append(%struct.bitwriter* %54, i32 0)
  %56 = load %struct.bitwriter*, %struct.bitwriter** %4, align 8
  %57 = getelementptr inbounds %struct.bitwriter, %struct.bitwriter* %56, i32 0, i32 0
  store i32 128, i32* %57, align 8
  br label %58

58:                                               ; preds = %53, %48
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %58
  %65 = load %struct.bitwriter*, %struct.bitwriter** %4, align 8
  %66 = getelementptr inbounds %struct.bitwriter, %struct.bitwriter* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.bitwriter*, %struct.bitwriter** %4, align 8
  %69 = getelementptr inbounds %struct.bitwriter, %struct.bitwriter* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, %67
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %64, %58
  %74 = load %struct.bitwriter*, %struct.bitwriter** %4, align 8
  %75 = getelementptr inbounds %struct.bitwriter, %struct.bitwriter* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = ashr i32 %76, 1
  store i32 %77, i32* %75, align 8
  br label %78

78:                                               ; preds = %73
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %8, align 4
  br label %45

81:                                               ; preds = %45
  ret void
}

declare dso_local i32 @bwrite_append(%struct.bitwriter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
