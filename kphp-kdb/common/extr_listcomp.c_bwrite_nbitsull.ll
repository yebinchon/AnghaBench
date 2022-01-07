; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_bwrite_nbitsull.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_bwrite_nbitsull.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitwriter = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bwrite_nbitsull(%struct.bitwriter* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.bitwriter*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.bitwriter* %0, %struct.bitwriter** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = and i32 %8, -64
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %57

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = sub nsw i32 %18, 1
  %20 = zext i32 %19 to i64
  %21 = shl i64 1, %20
  store i64 %21, i64* %7, align 8
  br label %22

22:                                               ; preds = %54, %17
  %23 = load i64, i64* %7, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %57

25:                                               ; preds = %22
  %26 = load %struct.bitwriter*, %struct.bitwriter** %4, align 8
  %27 = getelementptr inbounds %struct.bitwriter, %struct.bitwriter* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load %struct.bitwriter*, %struct.bitwriter** %4, align 8
  %32 = call i32 @bwrite_append(%struct.bitwriter* %31, i32 0)
  %33 = load %struct.bitwriter*, %struct.bitwriter** %4, align 8
  %34 = getelementptr inbounds %struct.bitwriter, %struct.bitwriter* %33, i32 0, i32 0
  store i32 128, i32* %34, align 8
  br label %35

35:                                               ; preds = %30, %25
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* %7, align 8
  %38 = and i64 %36, %37
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %35
  %41 = load %struct.bitwriter*, %struct.bitwriter** %4, align 8
  %42 = getelementptr inbounds %struct.bitwriter, %struct.bitwriter* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.bitwriter*, %struct.bitwriter** %4, align 8
  %45 = getelementptr inbounds %struct.bitwriter, %struct.bitwriter* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, %43
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %40, %35
  %50 = load %struct.bitwriter*, %struct.bitwriter** %4, align 8
  %51 = getelementptr inbounds %struct.bitwriter, %struct.bitwriter* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = ashr i32 %52, 1
  store i32 %53, i32* %51, align 8
  br label %54

54:                                               ; preds = %49
  %55 = load i64, i64* %7, align 8
  %56 = lshr i64 %55, 1
  store i64 %56, i64* %7, align 8
  br label %22

57:                                               ; preds = %16, %22
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @bwrite_append(%struct.bitwriter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
