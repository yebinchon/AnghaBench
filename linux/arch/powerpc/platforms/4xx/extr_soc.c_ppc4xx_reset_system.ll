; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/4xx/extr_soc.c_ppc4xx_reset_system.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/4xx/extr_soc.c_ppc4xx_reset_system.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@DBCR0_RST_SYSTEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"reset-type\00", align 1
@SPRN_DBCR0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ppc4xx_reset_system(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i32, i32* @DBCR0_RST_SYSTEM, align 4
  store i32 %6, i32* %4, align 4
  %7 = call %struct.device_node* @of_get_cpu_node(i32 0, i32* null)
  store %struct.device_node* %7, %struct.device_node** %3, align 8
  %8 = load %struct.device_node*, %struct.device_node** %3, align 8
  %9 = icmp ne %struct.device_node* %8, null
  br i1 %9, label %10, label %31

10:                                               ; preds = %1
  %11 = load %struct.device_node*, %struct.device_node** %3, align 8
  %12 = call i32* @of_get_property(%struct.device_node* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32* %12, i32** %5, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %30

15:                                               ; preds = %10
  %16 = load i32*, i32** %5, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp sge i32 %18, 1
  br i1 %19, label %20, label %30

20:                                               ; preds = %15
  %21 = load i32*, i32** %5, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp sle i32 %23, 3
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load i32*, i32** %5, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 %28, 28
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %25, %20, %15, %10
  br label %31

31:                                               ; preds = %30, %1
  %32 = load i32, i32* @SPRN_DBCR0, align 4
  %33 = load i32, i32* @SPRN_DBCR0, align 4
  %34 = call i32 @mfspr(i32 %33)
  %35 = load i32, i32* %4, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @mtspr(i32 %32, i32 %36)
  br label %38

38:                                               ; preds = %31, %38
  br label %38
}

declare dso_local %struct.device_node* @of_get_cpu_node(i32, i32*) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @mtspr(i32, i32) #1

declare dso_local i32 @mfspr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
