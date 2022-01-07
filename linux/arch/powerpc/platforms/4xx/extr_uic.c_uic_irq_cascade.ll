; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/4xx/extr_uic.c_uic_irq_cascade.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/4xx/extr_uic.c_uic_irq_cascade.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }
%struct.irq_chip = type { i32 (%struct.irq_data*)*, i32 (%struct.irq_data*)*, i32 (%struct.irq_data*)*, i32 (%struct.irq_data*)* }
%struct.irq_data = type { i32 }
%struct.uic = type { i32, i64 }

@UIC_MSR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_desc*)* @uic_irq_cascade to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uic_irq_cascade(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  %3 = alloca %struct.irq_chip*, align 8
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca %struct.uic*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  %9 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %10 = call %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc* %9)
  store %struct.irq_chip* %10, %struct.irq_chip** %3, align 8
  %11 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %12 = call %struct.irq_data* @irq_desc_get_irq_data(%struct.irq_desc* %11)
  store %struct.irq_data* %12, %struct.irq_data** %4, align 8
  %13 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %14 = call %struct.uic* @irq_desc_get_handler_data(%struct.irq_desc* %13)
  store %struct.uic* %14, %struct.uic** %5, align 8
  %15 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %16 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %15, i32 0, i32 0
  %17 = call i32 @raw_spin_lock(i32* %16)
  %18 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %19 = call i64 @irqd_is_level_type(%struct.irq_data* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load %struct.irq_chip*, %struct.irq_chip** %3, align 8
  %23 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %22, i32 0, i32 3
  %24 = load i32 (%struct.irq_data*)*, i32 (%struct.irq_data*)** %23, align 8
  %25 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %26 = call i32 %24(%struct.irq_data* %25)
  br label %33

27:                                               ; preds = %1
  %28 = load %struct.irq_chip*, %struct.irq_chip** %3, align 8
  %29 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %28, i32 0, i32 2
  %30 = load i32 (%struct.irq_data*)*, i32 (%struct.irq_data*)** %29, align 8
  %31 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %32 = call i32 %30(%struct.irq_data* %31)
  br label %33

33:                                               ; preds = %27, %21
  %34 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %35 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %34, i32 0, i32 0
  %36 = call i32 @raw_spin_unlock(i32* %35)
  %37 = load %struct.uic*, %struct.uic** %5, align 8
  %38 = getelementptr inbounds %struct.uic, %struct.uic* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @UIC_MSR, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @mfdcr(i64 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %33
  br label %57

46:                                               ; preds = %33
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @ffs(i32 %47)
  %49 = sub nsw i32 32, %48
  store i32 %49, i32* %7, align 4
  %50 = load %struct.uic*, %struct.uic** %5, align 8
  %51 = getelementptr inbounds %struct.uic, %struct.uic* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @irq_linear_revmap(i32 %52, i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @generic_handle_irq(i32 %55)
  br label %57

57:                                               ; preds = %46, %45
  %58 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %59 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %58, i32 0, i32 0
  %60 = call i32 @raw_spin_lock(i32* %59)
  %61 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %62 = call i64 @irqd_is_level_type(%struct.irq_data* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %57
  %65 = load %struct.irq_chip*, %struct.irq_chip** %3, align 8
  %66 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %65, i32 0, i32 1
  %67 = load i32 (%struct.irq_data*)*, i32 (%struct.irq_data*)** %66, align 8
  %68 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %69 = call i32 %67(%struct.irq_data* %68)
  br label %70

70:                                               ; preds = %64, %57
  %71 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %72 = call i32 @irqd_irq_disabled(%struct.irq_data* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %85, label %74

74:                                               ; preds = %70
  %75 = load %struct.irq_chip*, %struct.irq_chip** %3, align 8
  %76 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %75, i32 0, i32 0
  %77 = load i32 (%struct.irq_data*)*, i32 (%struct.irq_data*)** %76, align 8
  %78 = icmp ne i32 (%struct.irq_data*)* %77, null
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load %struct.irq_chip*, %struct.irq_chip** %3, align 8
  %81 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %80, i32 0, i32 0
  %82 = load i32 (%struct.irq_data*)*, i32 (%struct.irq_data*)** %81, align 8
  %83 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %84 = call i32 %82(%struct.irq_data* %83)
  br label %85

85:                                               ; preds = %79, %74, %70
  %86 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %87 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %86, i32 0, i32 0
  %88 = call i32 @raw_spin_unlock(i32* %87)
  ret void
}

declare dso_local %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc*) #1

declare dso_local %struct.irq_data* @irq_desc_get_irq_data(%struct.irq_desc*) #1

declare dso_local %struct.uic* @irq_desc_get_handler_data(%struct.irq_desc*) #1

declare dso_local i32 @raw_spin_lock(i32*) #1

declare dso_local i64 @irqd_is_level_type(%struct.irq_data*) #1

declare dso_local i32 @raw_spin_unlock(i32*) #1

declare dso_local i32 @mfdcr(i64) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @irq_linear_revmap(i32, i32) #1

declare dso_local i32 @generic_handle_irq(i32) #1

declare dso_local i32 @irqd_irq_disabled(%struct.irq_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
