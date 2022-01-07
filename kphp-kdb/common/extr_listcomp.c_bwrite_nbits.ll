; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_bwrite_nbits.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_bwrite_nbits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitwriter = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bwrite_nbits(%struct.bitwriter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bitwriter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bitwriter* %0, %struct.bitwriter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = and i32 %8, -32
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %56

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = sub nsw i32 %18, 1
  %20 = shl i32 1, %19
  store i32 %20, i32* %7, align 4
  br label %21

21:                                               ; preds = %53, %17
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %56

24:                                               ; preds = %21
  %25 = load %struct.bitwriter*, %struct.bitwriter** %4, align 8
  %26 = getelementptr inbounds %struct.bitwriter, %struct.bitwriter* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load %struct.bitwriter*, %struct.bitwriter** %4, align 8
  %31 = call i32 @bwrite_append(%struct.bitwriter* %30, i32 0)
  %32 = load %struct.bitwriter*, %struct.bitwriter** %4, align 8
  %33 = getelementptr inbounds %struct.bitwriter, %struct.bitwriter* %32, i32 0, i32 0
  store i32 128, i32* %33, align 8
  br label %34

34:                                               ; preds = %29, %24
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %7, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %34
  %40 = load %struct.bitwriter*, %struct.bitwriter** %4, align 8
  %41 = getelementptr inbounds %struct.bitwriter, %struct.bitwriter* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.bitwriter*, %struct.bitwriter** %4, align 8
  %44 = getelementptr inbounds %struct.bitwriter, %struct.bitwriter* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, %42
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %39, %34
  %49 = load %struct.bitwriter*, %struct.bitwriter** %4, align 8
  %50 = getelementptr inbounds %struct.bitwriter, %struct.bitwriter* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = ashr i32 %51, 1
  store i32 %52, i32* %50, align 8
  br label %53

53:                                               ; preds = %48
  %54 = load i32, i32* %7, align 4
  %55 = lshr i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %21

56:                                               ; preds = %16, %21
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
