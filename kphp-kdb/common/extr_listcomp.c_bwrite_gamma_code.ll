; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_bwrite_gamma_code.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_bwrite_gamma_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitwriter = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bwrite_gamma_code(%struct.bitwriter* %0, i32 %1) #0 {
  %3 = alloca %struct.bitwriter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bitwriter* %0, %struct.bitwriter** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ugt i32 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @bsr(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = shl i32 1, %13
  %15 = load i32, i32* %4, align 4
  %16 = xor i32 %15, %14
  store i32 %16, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %44, %2
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %47

21:                                               ; preds = %17
  %22 = load %struct.bitwriter*, %struct.bitwriter** %3, align 8
  %23 = getelementptr inbounds %struct.bitwriter, %struct.bitwriter* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load %struct.bitwriter*, %struct.bitwriter** %3, align 8
  %28 = call i32 @bwrite_append(%struct.bitwriter* %27, i32 0)
  %29 = load %struct.bitwriter*, %struct.bitwriter** %3, align 8
  %30 = getelementptr inbounds %struct.bitwriter, %struct.bitwriter* %29, i32 0, i32 0
  store i32 128, i32* %30, align 8
  br label %31

31:                                               ; preds = %26, %21
  %32 = load %struct.bitwriter*, %struct.bitwriter** %3, align 8
  %33 = getelementptr inbounds %struct.bitwriter, %struct.bitwriter* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.bitwriter*, %struct.bitwriter** %3, align 8
  %36 = getelementptr inbounds %struct.bitwriter, %struct.bitwriter* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, %34
  store i32 %39, i32* %37, align 4
  %40 = load %struct.bitwriter*, %struct.bitwriter** %3, align 8
  %41 = getelementptr inbounds %struct.bitwriter, %struct.bitwriter* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = ashr i32 %42, 1
  store i32 %43, i32* %41, align 8
  br label %44

44:                                               ; preds = %31
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %17

47:                                               ; preds = %17
  %48 = load %struct.bitwriter*, %struct.bitwriter** %3, align 8
  %49 = getelementptr inbounds %struct.bitwriter, %struct.bitwriter* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = load %struct.bitwriter*, %struct.bitwriter** %3, align 8
  %54 = call i32 @bwrite_append(%struct.bitwriter* %53, i32 0)
  %55 = load %struct.bitwriter*, %struct.bitwriter** %3, align 8
  %56 = getelementptr inbounds %struct.bitwriter, %struct.bitwriter* %55, i32 0, i32 0
  store i32 128, i32* %56, align 8
  br label %57

57:                                               ; preds = %52, %47
  %58 = load %struct.bitwriter*, %struct.bitwriter** %3, align 8
  %59 = getelementptr inbounds %struct.bitwriter, %struct.bitwriter* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = ashr i32 %60, 1
  store i32 %61, i32* %59, align 8
  %62 = load %struct.bitwriter*, %struct.bitwriter** %3, align 8
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @bwrite_nbits(%struct.bitwriter* %62, i32 %63, i32 %64)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @bsr(i32) #1

declare dso_local i32 @bwrite_append(%struct.bitwriter*, i32) #1

declare dso_local i32 @bwrite_nbits(%struct.bitwriter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
