; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/embedded6xx/extr_hlwd-pic.c_hlwd_pic_irq_cascade.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/embedded6xx/extr_hlwd-pic.c_hlwd_pic_irq_cascade.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32, i32 }
%struct.irq_chip = type { i32 (i32*)*, i32 (i32*)*, i32 (i32*)* }
%struct.irq_domain = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"spurious interrupt!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_desc*)* @hlwd_pic_irq_cascade to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hlwd_pic_irq_cascade(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  %3 = alloca %struct.irq_chip*, align 8
  %4 = alloca %struct.irq_domain*, align 8
  %5 = alloca i32, align 4
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  %6 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %7 = call %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc* %6)
  store %struct.irq_chip* %7, %struct.irq_chip** %3, align 8
  %8 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %9 = call %struct.irq_domain* @irq_desc_get_handler_data(%struct.irq_desc* %8)
  store %struct.irq_domain* %9, %struct.irq_domain** %4, align 8
  %10 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %11 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %10, i32 0, i32 0
  %12 = call i32 @raw_spin_lock(i32* %11)
  %13 = load %struct.irq_chip*, %struct.irq_chip** %3, align 8
  %14 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %13, i32 0, i32 2
  %15 = load i32 (i32*)*, i32 (i32*)** %14, align 8
  %16 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %17 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %16, i32 0, i32 1
  %18 = call i32 %15(i32* %17)
  %19 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %20 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %19, i32 0, i32 0
  %21 = call i32 @raw_spin_unlock(i32* %20)
  %22 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %23 = call i32 @__hlwd_pic_get_irq(%struct.irq_domain* %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @generic_handle_irq(i32 %27)
  br label %31

29:                                               ; preds = %1
  %30 = call i32 @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %26
  %32 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %33 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %32, i32 0, i32 0
  %34 = call i32 @raw_spin_lock(i32* %33)
  %35 = load %struct.irq_chip*, %struct.irq_chip** %3, align 8
  %36 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %35, i32 0, i32 1
  %37 = load i32 (i32*)*, i32 (i32*)** %36, align 8
  %38 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %39 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %38, i32 0, i32 1
  %40 = call i32 %37(i32* %39)
  %41 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %42 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %41, i32 0, i32 1
  %43 = call i32 @irqd_irq_disabled(i32* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %57, label %45

45:                                               ; preds = %31
  %46 = load %struct.irq_chip*, %struct.irq_chip** %3, align 8
  %47 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %46, i32 0, i32 0
  %48 = load i32 (i32*)*, i32 (i32*)** %47, align 8
  %49 = icmp ne i32 (i32*)* %48, null
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load %struct.irq_chip*, %struct.irq_chip** %3, align 8
  %52 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %51, i32 0, i32 0
  %53 = load i32 (i32*)*, i32 (i32*)** %52, align 8
  %54 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %55 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %54, i32 0, i32 1
  %56 = call i32 %53(i32* %55)
  br label %57

57:                                               ; preds = %50, %45, %31
  %58 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %59 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %58, i32 0, i32 0
  %60 = call i32 @raw_spin_unlock(i32* %59)
  ret void
}

declare dso_local %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc*) #1

declare dso_local %struct.irq_domain* @irq_desc_get_handler_data(%struct.irq_desc*) #1

declare dso_local i32 @raw_spin_lock(i32*) #1

declare dso_local i32 @raw_spin_unlock(i32*) #1

declare dso_local i32 @__hlwd_pic_get_irq(%struct.irq_domain*) #1

declare dso_local i32 @generic_handle_irq(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @irqd_irq_disabled(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
