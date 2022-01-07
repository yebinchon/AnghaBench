; ModuleID = '/home/carl/AnghaBench/linux/arch/xtensa/kernel/extr_irq.c_xtensa_irq_map.c'
source_filename = "/home/carl/AnghaBench/linux/arch/xtensa/kernel/extr_irq.c_xtensa_irq_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { %struct.irq_chip* }
%struct.irq_chip = type { i32 }

@XCHAL_INTTYPE_MASK_SOFTWARE = common dso_local global i32 0, align 4
@handle_simple_irq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"level\00", align 1
@IRQ_LEVEL = common dso_local global i32 0, align 4
@XCHAL_INTTYPE_MASK_EXTERN_EDGE = common dso_local global i32 0, align 4
@handle_edge_irq = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"edge\00", align 1
@XCHAL_INTTYPE_MASK_EXTERN_LEVEL = common dso_local global i32 0, align 4
@handle_level_irq = common dso_local global i32 0, align 4
@XCHAL_INTTYPE_MASK_TIMER = common dso_local global i32 0, align 4
@handle_percpu_irq = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"timer\00", align 1
@XCHAL_INTTYPE_MASK_PROFILING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xtensa_irq_map(%struct.irq_domain* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.irq_domain*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.irq_chip*, align 8
  %8 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %10 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %9, i32 0, i32 0
  %11 = load %struct.irq_chip*, %struct.irq_chip** %10, align 8
  store %struct.irq_chip* %11, %struct.irq_chip** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = shl i32 1, %12
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @XCHAL_INTTYPE_MASK_SOFTWARE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.irq_chip*, %struct.irq_chip** %7, align 8
  %21 = load i32, i32* @handle_simple_irq, align 4
  %22 = call i32 @irq_set_chip_and_handler_name(i32 %19, %struct.irq_chip* %20, i32 %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @IRQ_LEVEL, align 4
  %25 = call i32 @irq_set_status_flags(i32 %23, i32 %24)
  br label %76

26:                                               ; preds = %3
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @XCHAL_INTTYPE_MASK_EXTERN_EDGE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.irq_chip*, %struct.irq_chip** %7, align 8
  %34 = load i32, i32* @handle_edge_irq, align 4
  %35 = call i32 @irq_set_chip_and_handler_name(i32 %32, %struct.irq_chip* %33, i32 %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @IRQ_LEVEL, align 4
  %38 = call i32 @irq_clear_status_flags(i32 %36, i32 %37)
  br label %75

39:                                               ; preds = %26
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @XCHAL_INTTYPE_MASK_EXTERN_LEVEL, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.irq_chip*, %struct.irq_chip** %7, align 8
  %47 = load i32, i32* @handle_level_irq, align 4
  %48 = call i32 @irq_set_chip_and_handler_name(i32 %45, %struct.irq_chip* %46, i32 %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @IRQ_LEVEL, align 4
  %51 = call i32 @irq_set_status_flags(i32 %49, i32 %50)
  br label %74

52:                                               ; preds = %39
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @XCHAL_INTTYPE_MASK_TIMER, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.irq_chip*, %struct.irq_chip** %7, align 8
  %60 = load i32, i32* @handle_percpu_irq, align 4
  %61 = call i32 @irq_set_chip_and_handler_name(i32 %58, %struct.irq_chip* %59, i32 %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @IRQ_LEVEL, align 4
  %64 = call i32 @irq_clear_status_flags(i32 %62, i32 %63)
  br label %73

65:                                               ; preds = %52
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.irq_chip*, %struct.irq_chip** %7, align 8
  %68 = load i32, i32* @handle_level_irq, align 4
  %69 = call i32 @irq_set_chip_and_handler_name(i32 %66, %struct.irq_chip* %67, i32 %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @IRQ_LEVEL, align 4
  %72 = call i32 @irq_set_status_flags(i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %65, %57
  br label %74

74:                                               ; preds = %73, %44
  br label %75

75:                                               ; preds = %74, %31
  br label %76

76:                                               ; preds = %75, %18
  ret i32 0
}

declare dso_local i32 @irq_set_chip_and_handler_name(i32, %struct.irq_chip*, i32, i8*) #1

declare dso_local i32 @irq_set_status_flags(i32, i32) #1

declare dso_local i32 @irq_clear_status_flags(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
