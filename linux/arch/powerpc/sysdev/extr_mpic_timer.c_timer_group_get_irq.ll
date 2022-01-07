; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_mpic_timer.c_timer_group_get_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_mpic_timer.c_timer_group_get_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.timer_group_priv = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@TIMERS_PER_GROUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"fsl,available-ranges\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"%pOF: malformed available-ranges property.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"%pOF: irq parse and map failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, %struct.timer_group_priv*)* @timer_group_get_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @timer_group_get_irq(%struct.device_node* %0, %struct.timer_group_priv* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.timer_group_priv*, align 8
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store %struct.timer_group_priv* %1, %struct.timer_group_priv** %5, align 8
  %15 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  %17 = load i32, i32* @TIMERS_PER_GROUP, align 4
  store i32 %17, i32* %16, align 4
  store i32 0, i32* %12, align 4
  %18 = load %struct.device_node*, %struct.device_node** %4, align 8
  %19 = call i32* @of_get_property(%struct.device_node* %18, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32* %14)
  store i32* %19, i32** %7, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %2
  %23 = load i32, i32* %14, align 4
  %24 = sext i32 %23 to i64
  %25 = urem i64 %24, 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.device_node*, %struct.device_node** %4, align 8
  %29 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), %struct.device_node* %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %116

32:                                               ; preds = %22, %2
  %33 = load i32*, i32** %7, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32* %36, i32** %7, align 8
  store i32 8, i32* %14, align 4
  br label %37

37:                                               ; preds = %35, %32
  %38 = load i32, i32* %14, align 4
  %39 = sext i32 %38 to i64
  %40 = udiv i64 %39, 8
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %14, align 4
  store i32 0, i32* %10, align 4
  br label %42

42:                                               ; preds = %112, %37
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %14, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %46, label %115

46:                                               ; preds = %42
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* %10, align 4
  %49 = mul i32 %48, 2
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %8, align 4
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* %10, align 4
  %55 = mul i32 %54, 2
  %56 = add i32 %55, 1
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %53, i64 %57
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %60

60:                                               ; preds = %108, %46
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp ult i32 %61, %62
  br i1 %63, label %64, label %111

64:                                               ; preds = %60
  %65 = load %struct.device_node*, %struct.device_node** %4, align 8
  %66 = load i32, i32* %12, align 4
  %67 = call i32 @irq_of_parse_and_map(%struct.device_node* %65, i32 %66)
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %64
  %71 = load %struct.device_node*, %struct.device_node** %4, align 8
  %72 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), %struct.device_node* %71)
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %116

75:                                               ; preds = %64
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %11, align 4
  %78 = add i32 %76, %77
  %79 = call i32 @TIMER_OFFSET(i32 %78)
  %80 = load %struct.timer_group_priv*, %struct.timer_group_priv** %5, align 8
  %81 = getelementptr inbounds %struct.timer_group_priv, %struct.timer_group_priv* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 8
  %84 = load i32, i32* %13, align 4
  %85 = load %struct.timer_group_priv*, %struct.timer_group_priv** %5, align 8
  %86 = getelementptr inbounds %struct.timer_group_priv, %struct.timer_group_priv* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %11, align 4
  %90 = add i32 %88, %89
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  store i32 %84, i32* %93, align 4
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %11, align 4
  %96 = add i32 %94, %95
  %97 = load %struct.timer_group_priv*, %struct.timer_group_priv** %5, align 8
  %98 = getelementptr inbounds %struct.timer_group_priv, %struct.timer_group_priv* %97, i32 0, i32 0
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %11, align 4
  %102 = add i32 %100, %101
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  store i32 %96, i32* %105, align 4
  %106 = load i32, i32* %12, align 4
  %107 = add i32 %106, 1
  store i32 %107, i32* %12, align 4
  br label %108

108:                                              ; preds = %75
  %109 = load i32, i32* %11, align 4
  %110 = add i32 %109, 1
  store i32 %110, i32* %11, align 4
  br label %60

111:                                              ; preds = %60
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %10, align 4
  %114 = add i32 %113, 1
  store i32 %114, i32* %10, align 4
  br label %42

115:                                              ; preds = %42
  store i32 0, i32* %3, align 4
  br label %116

116:                                              ; preds = %115, %70, %27
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @pr_err(i8*, %struct.device_node*) #1

declare dso_local i32 @irq_of_parse_and_map(%struct.device_node*, i32) #1

declare dso_local i32 @TIMER_OFFSET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
