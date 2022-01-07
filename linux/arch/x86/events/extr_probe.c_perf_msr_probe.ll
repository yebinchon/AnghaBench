; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/extr_probe.c_perf_msr_probe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/extr_probe.c_perf_msr_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_msr = type { i32, i32 (i32, i8*)*, %struct.attribute_group*, i32 }
%struct.attribute_group = type { i32* }

@BITS_PER_LONG = common dso_local global i32 0, align 4
@not_visible = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @perf_msr_probe(%struct.perf_msr* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.perf_msr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.attribute_group*, align 8
  store %struct.perf_msr* %0, %struct.perf_msr** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i64 0, i64* %10, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @BITS_PER_LONG, align 4
  %16 = icmp sge i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %90

18:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %19

19:                                               ; preds = %85, %18
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %88

23:                                               ; preds = %19
  %24 = load %struct.perf_msr*, %struct.perf_msr** %6, align 8
  %25 = load i32, i32* %11, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.perf_msr, %struct.perf_msr* %24, i64 %26
  %28 = getelementptr inbounds %struct.perf_msr, %struct.perf_msr* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %80, label %31

31:                                               ; preds = %23
  %32 = load %struct.perf_msr*, %struct.perf_msr** %6, align 8
  %33 = load i32, i32* %11, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.perf_msr, %struct.perf_msr* %32, i64 %34
  %36 = getelementptr inbounds %struct.perf_msr, %struct.perf_msr* %35, i32 0, i32 2
  %37 = load %struct.attribute_group*, %struct.attribute_group** %36, align 8
  store %struct.attribute_group* %37, %struct.attribute_group** %13, align 8
  %38 = load i32*, i32** @not_visible, align 8
  %39 = load %struct.attribute_group*, %struct.attribute_group** %13, align 8
  %40 = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %39, i32 0, i32 0
  store i32* %38, i32** %40, align 8
  %41 = load %struct.perf_msr*, %struct.perf_msr** %6, align 8
  %42 = load i32, i32* %11, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.perf_msr, %struct.perf_msr* %41, i64 %43
  %45 = getelementptr inbounds %struct.perf_msr, %struct.perf_msr* %44, i32 0, i32 1
  %46 = load i32 (i32, i8*)*, i32 (i32, i8*)** %45, align 8
  %47 = icmp ne i32 (i32, i8*)* %46, null
  br i1 %47, label %48, label %60

48:                                               ; preds = %31
  %49 = load %struct.perf_msr*, %struct.perf_msr** %6, align 8
  %50 = load i32, i32* %11, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.perf_msr, %struct.perf_msr* %49, i64 %51
  %53 = getelementptr inbounds %struct.perf_msr, %struct.perf_msr* %52, i32 0, i32 1
  %54 = load i32 (i32, i8*)*, i32 (i32, i8*)** %53, align 8
  %55 = load i32, i32* %11, align 4
  %56 = load i8*, i8** %9, align 8
  %57 = call i32 %54(i32 %55, i8* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %48
  br label %85

60:                                               ; preds = %48, %31
  %61 = load %struct.perf_msr*, %struct.perf_msr** %6, align 8
  %62 = load i32, i32* %11, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.perf_msr, %struct.perf_msr* %61, i64 %63
  %65 = getelementptr inbounds %struct.perf_msr, %struct.perf_msr* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @rdmsrl_safe(i32 %66, i32* %12)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  br label %85

70:                                               ; preds = %60
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %73
  br label %85

77:                                               ; preds = %73, %70
  %78 = load %struct.attribute_group*, %struct.attribute_group** %13, align 8
  %79 = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %78, i32 0, i32 0
  store i32* null, i32** %79, align 8
  br label %80

80:                                               ; preds = %77, %23
  %81 = load i32, i32* %11, align 4
  %82 = call i64 @BIT(i32 %81)
  %83 = load i64, i64* %10, align 8
  %84 = or i64 %83, %82
  store i64 %84, i64* %10, align 8
  br label %85

85:                                               ; preds = %80, %76, %69, %59
  %86 = load i32, i32* %11, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %11, align 4
  br label %19

88:                                               ; preds = %19
  %89 = load i64, i64* %10, align 8
  store i64 %89, i64* %5, align 8
  br label %90

90:                                               ; preds = %88, %17
  %91 = load i64, i64* %5, align 8
  ret i64 %91
}

declare dso_local i64 @rdmsrl_safe(i32, i32*) #1

declare dso_local i64 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
