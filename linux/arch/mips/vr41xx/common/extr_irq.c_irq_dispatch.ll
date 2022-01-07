; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/vr41xx/common/extr_irq.c_irq_dispatch.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/vr41xx/common/extr_irq.c_irq_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i32)* }
%struct.irq_desc = type { i32 }
%struct.irq_data = type { i32 }
%struct.irq_chip = type { i32 (%struct.irq_data*)*, i32 (%struct.irq_data*)*, i32 (%struct.irq_data*)*, i32 (%struct.irq_data*)* }

@NR_IRQS = common dso_local global i32 0, align 4
@irq_err_count = common dso_local global i32 0, align 4
@irq_cascade = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @irq_dispatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @irq_dispatch(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.irq_desc*, align 8
  %5 = alloca %struct.irq_data*, align 8
  %6 = alloca %struct.irq_chip*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @NR_IRQS, align 4
  %10 = icmp uge i32 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 @atomic_inc(i32* @irq_err_count)
  br label %82

13:                                               ; preds = %1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** @irq_cascade, align 8
  %15 = load i32, i32* %2, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 %16
  store %struct.TYPE_3__* %17, %struct.TYPE_3__** %3, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32 (i32)*, i32 (i32)** %19, align 8
  %21 = icmp ne i32 (i32)* %20, null
  br i1 %21, label %22, label %79

22:                                               ; preds = %13
  %23 = load i32, i32* %2, align 4
  %24 = call %struct.irq_desc* @irq_to_desc(i32 %23)
  store %struct.irq_desc* %24, %struct.irq_desc** %4, align 8
  %25 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %26 = call %struct.irq_data* @irq_desc_get_irq_data(%struct.irq_desc* %25)
  store %struct.irq_data* %26, %struct.irq_data** %5, align 8
  %27 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %28 = call %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc* %27)
  store %struct.irq_chip* %28, %struct.irq_chip** %6, align 8
  %29 = load %struct.irq_chip*, %struct.irq_chip** %6, align 8
  %30 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %29, i32 0, i32 3
  %31 = load i32 (%struct.irq_data*)*, i32 (%struct.irq_data*)** %30, align 8
  %32 = icmp ne i32 (%struct.irq_data*)* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %22
  %34 = load %struct.irq_chip*, %struct.irq_chip** %6, align 8
  %35 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %34, i32 0, i32 3
  %36 = load i32 (%struct.irq_data*)*, i32 (%struct.irq_data*)** %35, align 8
  %37 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %38 = call i32 %36(%struct.irq_data* %37)
  br label %50

39:                                               ; preds = %22
  %40 = load %struct.irq_chip*, %struct.irq_chip** %6, align 8
  %41 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %40, i32 0, i32 2
  %42 = load i32 (%struct.irq_data*)*, i32 (%struct.irq_data*)** %41, align 8
  %43 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %44 = call i32 %42(%struct.irq_data* %43)
  %45 = load %struct.irq_chip*, %struct.irq_chip** %6, align 8
  %46 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %45, i32 0, i32 1
  %47 = load i32 (%struct.irq_data*)*, i32 (%struct.irq_data*)** %46, align 8
  %48 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %49 = call i32 %47(%struct.irq_data* %48)
  br label %50

50:                                               ; preds = %39, %33
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32 (i32)*, i32 (i32)** %52, align 8
  %54 = load i32, i32* %2, align 4
  %55 = call i32 %53(i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %2, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %50
  %60 = call i32 @atomic_inc(i32* @irq_err_count)
  br label %63

61:                                               ; preds = %50
  %62 = load i32, i32* %2, align 4
  call void @irq_dispatch(i32 %62)
  br label %63

63:                                               ; preds = %61, %59
  %64 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %65 = call i32 @irqd_irq_disabled(%struct.irq_data* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %78, label %67

67:                                               ; preds = %63
  %68 = load %struct.irq_chip*, %struct.irq_chip** %6, align 8
  %69 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %68, i32 0, i32 0
  %70 = load i32 (%struct.irq_data*)*, i32 (%struct.irq_data*)** %69, align 8
  %71 = icmp ne i32 (%struct.irq_data*)* %70, null
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load %struct.irq_chip*, %struct.irq_chip** %6, align 8
  %74 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %73, i32 0, i32 0
  %75 = load i32 (%struct.irq_data*)*, i32 (%struct.irq_data*)** %74, align 8
  %76 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %77 = call i32 %75(%struct.irq_data* %76)
  br label %78

78:                                               ; preds = %72, %67, %63
  br label %82

79:                                               ; preds = %13
  %80 = load i32, i32* %2, align 4
  %81 = call i32 @do_IRQ(i32 %80)
  br label %82

82:                                               ; preds = %11, %79, %78
  ret void
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local %struct.irq_desc* @irq_to_desc(i32) #1

declare dso_local %struct.irq_data* @irq_desc_get_irq_data(%struct.irq_desc*) #1

declare dso_local %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc*) #1

declare dso_local i32 @irqd_irq_disabled(%struct.irq_data*) #1

declare dso_local i32 @do_IRQ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
