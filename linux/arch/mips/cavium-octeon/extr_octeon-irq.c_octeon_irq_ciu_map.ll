; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/extr_octeon-irq.c_octeon_irq_ciu_map.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/extr_octeon-irq.c_octeon_irq_ciu_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { %struct.octeon_irq_ciu_domain_data* }
%struct.octeon_irq_ciu_domain_data = type { i32 }

@octeon_irq_ciu_to_irq = common dso_local global i64** null, align 8
@EINVAL = common dso_local global i32 0, align 4
@octeon_irq_chip_ciu_sum2_edge = common dso_local global i32 0, align 4
@handle_edge_irq = common dso_local global i32 0, align 4
@octeon_irq_chip_ciu_sum2 = common dso_local global i32 0, align 4
@handle_level_irq = common dso_local global i32 0, align 4
@octeon_irq_ciu_chip_edge = common dso_local global i32* null, align 8
@octeon_irq_ciu_chip = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, i32, i32)* @octeon_irq_ciu_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octeon_irq_ciu_map(%struct.irq_domain* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.irq_domain*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.octeon_irq_ciu_domain_data*, align 8
  store %struct.irq_domain* %0, %struct.irq_domain** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = ashr i32 %12, 6
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %7, align 4
  %15 = and i32 %14, 63
  store i32 %15, i32* %10, align 4
  %16 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %17 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %16, i32 0, i32 0
  %18 = load %struct.octeon_irq_ciu_domain_data*, %struct.octeon_irq_ciu_domain_data** %17, align 8
  store %struct.octeon_irq_ciu_domain_data* %18, %struct.octeon_irq_ciu_domain_data** %11, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.octeon_irq_ciu_domain_data*, %struct.octeon_irq_ciu_domain_data** %11, align 8
  %21 = getelementptr inbounds %struct.octeon_irq_ciu_domain_data, %struct.octeon_irq_ciu_domain_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp uge i32 %19, %22
  br i1 %23, label %35, label %24

24:                                               ; preds = %3
  %25 = load i64**, i64*** @octeon_irq_ciu_to_irq, align 8
  %26 = load i32, i32* %9, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i64*, i64** %25, i64 %27
  %29 = load i64*, i64** %28, align 8
  %30 = load i32, i32* %10, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %24, %3
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %81

38:                                               ; preds = %24
  %39 = load i32, i32* %9, align 4
  %40 = icmp eq i32 %39, 2
  br i1 %40, label %41, label %59

41:                                               ; preds = %38
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i64 @octeon_irq_ciu_is_edge(i32 %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @handle_edge_irq, align 4
  %51 = call i32 @octeon_irq_set_ciu_mapping(i32 %47, i32 %48, i32 %49, i32 0, i32* @octeon_irq_chip_ciu_sum2_edge, i32 %50)
  store i32 %51, i32* %8, align 4
  br label %58

52:                                               ; preds = %41
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @handle_level_irq, align 4
  %57 = call i32 @octeon_irq_set_ciu_mapping(i32 %53, i32 %54, i32 %55, i32 0, i32* @octeon_irq_chip_ciu_sum2, i32 %56)
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %52, %46
  br label %79

59:                                               ; preds = %38
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %10, align 4
  %62 = call i64 @octeon_irq_ciu_is_edge(i32 %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %59
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i32*, i32** @octeon_irq_ciu_chip_edge, align 8
  %69 = load i32, i32* @handle_edge_irq, align 4
  %70 = call i32 @octeon_irq_set_ciu_mapping(i32 %65, i32 %66, i32 %67, i32 0, i32* %68, i32 %69)
  store i32 %70, i32* %8, align 4
  br label %78

71:                                               ; preds = %59
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load i32*, i32** @octeon_irq_ciu_chip, align 8
  %76 = load i32, i32* @handle_level_irq, align 4
  %77 = call i32 @octeon_irq_set_ciu_mapping(i32 %72, i32 %73, i32 %74, i32 0, i32* %75, i32 %76)
  store i32 %77, i32* %8, align 4
  br label %78

78:                                               ; preds = %71, %64
  br label %79

79:                                               ; preds = %78, %58
  %80 = load i32, i32* %8, align 4
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %79, %35
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i64 @octeon_irq_ciu_is_edge(i32, i32) #1

declare dso_local i32 @octeon_irq_set_ciu_mapping(i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
