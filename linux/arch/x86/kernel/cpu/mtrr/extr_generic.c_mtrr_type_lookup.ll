; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mtrr/extr_generic.c_mtrr_type_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mtrr/extr_generic.c_mtrr_type_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@mtrr_state_set = common dso_local global i32 0, align 4
@MTRR_TYPE_INVALID = common dso_local global i32 0, align 4
@mtrr_state = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@MTRR_STATE_MTRR_ENABLED = common dso_local global i32 0, align 4
@MTRR_STATE_MTRR_FIXED_ENABLED = common dso_local global i32 0, align 4
@mtrr_tom2 = common dso_local global i32 0, align 4
@MTRR_TYPE_WRBACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtrr_type_lookup(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 1, i32* %10, align 4
  %14 = load i32, i32* @mtrr_state_set, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @MTRR_TYPE_INVALID, align 4
  store i32 %17, i32* %4, align 4
  br label %75

18:                                               ; preds = %3
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mtrr_state, i32 0, i32 0), align 8
  %20 = load i32, i32* @MTRR_STATE_MTRR_ENABLED, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @MTRR_TYPE_INVALID, align 4
  store i32 %24, i32* %4, align 4
  br label %75

25:                                               ; preds = %18
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 1048576
  br i1 %27, label %28, label %40

28:                                               ; preds = %25
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mtrr_state, i32 0, i32 1), align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %28
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mtrr_state, i32 0, i32 0), align 8
  %33 = load i32, i32* @MTRR_STATE_MTRR_FIXED_ENABLED, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  store i32 0, i32* %10, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @mtrr_type_lookup_fixed(i32 %37, i32 %38)
  store i32 %39, i32* %8, align 4
  br label %71

40:                                               ; preds = %31, %28, %25
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @mtrr_type_lookup_variable(i32 %41, i32 %42, i32* %13, i32* %12, i32* %10)
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %56, %40
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %44
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %13, align 4
  store i32 %49, i32* %5, align 4
  store i32 0, i32* %10, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @mtrr_type_lookup_variable(i32 %50, i32 %51, i32* %13, i32* %12, i32* %11)
  store i32 %52, i32* %8, align 4
  %53 = call i64 @check_type_overlap(i32* %9, i32* %8)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %71

56:                                               ; preds = %47
  br label %44

57:                                               ; preds = %44
  %58 = load i32, i32* @mtrr_tom2, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %57
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = icmp uge i64 %62, 4294967296
  br i1 %63, label %64, label %70

64:                                               ; preds = %60
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @mtrr_tom2, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i32, i32* @MTRR_TYPE_WRBACK, align 4
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %68, %64, %60, %57
  br label %71

71:                                               ; preds = %70, %55, %36
  %72 = load i32, i32* %10, align 4
  %73 = load i32*, i32** %7, align 8
  store i32 %72, i32* %73, align 4
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %71, %23, %16
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @mtrr_type_lookup_fixed(i32, i32) #1

declare dso_local i32 @mtrr_type_lookup_variable(i32, i32, i32*, i32*, i32*) #1

declare dso_local i64 @check_type_overlap(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
