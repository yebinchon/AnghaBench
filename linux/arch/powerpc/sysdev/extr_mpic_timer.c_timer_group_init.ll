; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_mpic_timer.c_timer_group_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_mpic_timer.c_timer_group_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.timer_group_priv = type { i32, i8*, i8*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"%pOF: cannot allocate memory for group.\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"fsl,mpic-global-timer\00", align 1
@FSL_GLOBAL_TIMER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"%pOF: cannot ioremap timer register address.\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"%pOF: cannot ioremap tcr address.\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"%pOF: cannot get timer frequency.\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"%pOF: cannot get timer irqs.\0A\00", align 1
@MPIC_TIMER_TCR_CLKDIV = common dso_local global i32 0, align 4
@timer_group_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device_node*)* @timer_group_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timer_group_init(%struct.device_node* %0) #0 {
  %2 = alloca %struct.device_node*, align 8
  %3 = alloca %struct.timer_group_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.timer_group_priv* @kzalloc(i32 32, i32 %6)
  store %struct.timer_group_priv* %7, %struct.timer_group_priv** %3, align 8
  %8 = load %struct.timer_group_priv*, %struct.timer_group_priv** %3, align 8
  %9 = icmp ne %struct.timer_group_priv* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load %struct.device_node*, %struct.device_node** %2, align 8
  %12 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), %struct.device_node* %11)
  br label %120

13:                                               ; preds = %1
  %14 = load %struct.device_node*, %struct.device_node** %2, align 8
  %15 = call i64 @of_device_is_compatible(%struct.device_node* %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = load i32, i32* @FSL_GLOBAL_TIMER, align 4
  %19 = load %struct.timer_group_priv*, %struct.timer_group_priv** %3, align 8
  %20 = getelementptr inbounds %struct.timer_group_priv, %struct.timer_group_priv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 8
  br label %23

23:                                               ; preds = %17, %13
  %24 = load %struct.device_node*, %struct.device_node** %2, align 8
  %25 = load i32, i32* %4, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %4, align 4
  %27 = call i8* @of_iomap(%struct.device_node* %24, i32 %25)
  %28 = load %struct.timer_group_priv*, %struct.timer_group_priv** %3, align 8
  %29 = getelementptr inbounds %struct.timer_group_priv, %struct.timer_group_priv* %28, i32 0, i32 2
  store i8* %27, i8** %29, align 8
  %30 = load %struct.timer_group_priv*, %struct.timer_group_priv** %3, align 8
  %31 = getelementptr inbounds %struct.timer_group_priv, %struct.timer_group_priv* %30, i32 0, i32 2
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %23
  %35 = load %struct.device_node*, %struct.device_node** %2, align 8
  %36 = call i32 @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), %struct.device_node* %35)
  br label %97

37:                                               ; preds = %23
  %38 = load %struct.timer_group_priv*, %struct.timer_group_priv** %3, align 8
  %39 = getelementptr inbounds %struct.timer_group_priv, %struct.timer_group_priv* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @FSL_GLOBAL_TIMER, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %37
  %45 = load %struct.device_node*, %struct.device_node** %2, align 8
  %46 = load i32, i32* %4, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %4, align 4
  %48 = call i8* @of_iomap(%struct.device_node* %45, i32 %46)
  %49 = load %struct.timer_group_priv*, %struct.timer_group_priv** %3, align 8
  %50 = getelementptr inbounds %struct.timer_group_priv, %struct.timer_group_priv* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  %51 = load %struct.timer_group_priv*, %struct.timer_group_priv** %3, align 8
  %52 = getelementptr inbounds %struct.timer_group_priv, %struct.timer_group_priv* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %44
  %56 = load %struct.device_node*, %struct.device_node** %2, align 8
  %57 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), %struct.device_node* %56)
  br label %97

58:                                               ; preds = %44
  br label %59

59:                                               ; preds = %58, %37
  %60 = load %struct.device_node*, %struct.device_node** %2, align 8
  %61 = load %struct.timer_group_priv*, %struct.timer_group_priv** %3, align 8
  %62 = call i32 @timer_group_get_freq(%struct.device_node* %60, %struct.timer_group_priv* %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load %struct.device_node*, %struct.device_node** %2, align 8
  %67 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), %struct.device_node* %66)
  br label %97

68:                                               ; preds = %59
  %69 = load %struct.device_node*, %struct.device_node** %2, align 8
  %70 = load %struct.timer_group_priv*, %struct.timer_group_priv** %3, align 8
  %71 = call i32 @timer_group_get_irq(%struct.device_node* %69, %struct.timer_group_priv* %70)
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load %struct.device_node*, %struct.device_node** %2, align 8
  %76 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), %struct.device_node* %75)
  br label %97

77:                                               ; preds = %68
  %78 = load %struct.timer_group_priv*, %struct.timer_group_priv** %3, align 8
  %79 = getelementptr inbounds %struct.timer_group_priv, %struct.timer_group_priv* %78, i32 0, i32 4
  %80 = call i32 @spin_lock_init(i32* %79)
  %81 = load %struct.timer_group_priv*, %struct.timer_group_priv** %3, align 8
  %82 = getelementptr inbounds %struct.timer_group_priv, %struct.timer_group_priv* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @FSL_GLOBAL_TIMER, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %77
  %88 = load %struct.timer_group_priv*, %struct.timer_group_priv** %3, align 8
  %89 = getelementptr inbounds %struct.timer_group_priv, %struct.timer_group_priv* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = load i32, i32* @MPIC_TIMER_TCR_CLKDIV, align 4
  %92 = call i32 @setbits32(i8* %90, i32 %91)
  br label %93

93:                                               ; preds = %87, %77
  %94 = load %struct.timer_group_priv*, %struct.timer_group_priv** %3, align 8
  %95 = getelementptr inbounds %struct.timer_group_priv, %struct.timer_group_priv* %94, i32 0, i32 3
  %96 = call i32 @list_add_tail(i32* %95, i32* @timer_group_list)
  br label %120

97:                                               ; preds = %74, %65, %55, %34
  %98 = load %struct.timer_group_priv*, %struct.timer_group_priv** %3, align 8
  %99 = getelementptr inbounds %struct.timer_group_priv, %struct.timer_group_priv* %98, i32 0, i32 2
  %100 = load i8*, i8** %99, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %107

102:                                              ; preds = %97
  %103 = load %struct.timer_group_priv*, %struct.timer_group_priv** %3, align 8
  %104 = getelementptr inbounds %struct.timer_group_priv, %struct.timer_group_priv* %103, i32 0, i32 2
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @iounmap(i8* %105)
  br label %107

107:                                              ; preds = %102, %97
  %108 = load %struct.timer_group_priv*, %struct.timer_group_priv** %3, align 8
  %109 = getelementptr inbounds %struct.timer_group_priv, %struct.timer_group_priv* %108, i32 0, i32 1
  %110 = load i8*, i8** %109, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %117

112:                                              ; preds = %107
  %113 = load %struct.timer_group_priv*, %struct.timer_group_priv** %3, align 8
  %114 = getelementptr inbounds %struct.timer_group_priv, %struct.timer_group_priv* %113, i32 0, i32 1
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 @iounmap(i8* %115)
  br label %117

117:                                              ; preds = %112, %107
  %118 = load %struct.timer_group_priv*, %struct.timer_group_priv** %3, align 8
  %119 = call i32 @kfree(%struct.timer_group_priv* %118)
  br label %120

120:                                              ; preds = %117, %93, %10
  ret void
}

declare dso_local %struct.timer_group_priv* @kzalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*, %struct.device_node*) #1

declare dso_local i64 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local i8* @of_iomap(%struct.device_node*, i32) #1

declare dso_local i32 @timer_group_get_freq(%struct.device_node*, %struct.timer_group_priv*) #1

declare dso_local i32 @timer_group_get_irq(%struct.device_node*, %struct.timer_group_priv*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @setbits32(i8*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @iounmap(i8*) #1

declare dso_local i32 @kfree(%struct.timer_group_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
