; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_fsl_soc.c_fsl_get_sys_freq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_fsl_soc.c_fsl_get_sys_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@fsl_get_sys_freq.sysfreq = internal global i32 -1, align 4
@.str = private unnamed_addr constant [4 x i8] c"soc\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"bus-frequency\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fsl_get_sys_freq() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.device_node*, align 8
  %3 = load i32, i32* @fsl_get_sys_freq.sysfreq, align 4
  %4 = icmp ne i32 %3, -1
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = load i32, i32* @fsl_get_sys_freq.sysfreq, align 4
  store i32 %6, i32* %1, align 4
  br label %27

7:                                                ; preds = %0
  %8 = call %struct.device_node* @of_find_node_by_type(i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %8, %struct.device_node** %2, align 8
  %9 = load %struct.device_node*, %struct.device_node** %2, align 8
  %10 = icmp ne %struct.device_node* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  store i32 -1, i32* %1, align 4
  br label %27

12:                                               ; preds = %7
  %13 = load %struct.device_node*, %struct.device_node** %2, align 8
  %14 = call i32 @of_property_read_u32(%struct.device_node* %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32* @fsl_get_sys_freq.sysfreq)
  %15 = load i32, i32* @fsl_get_sys_freq.sysfreq, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* @fsl_get_sys_freq.sysfreq, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17, %12
  %21 = load %struct.device_node*, %struct.device_node** %2, align 8
  %22 = call i32 @of_property_read_u32(%struct.device_node* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32* @fsl_get_sys_freq.sysfreq)
  br label %23

23:                                               ; preds = %20, %17
  %24 = load %struct.device_node*, %struct.device_node** %2, align 8
  %25 = call i32 @of_node_put(%struct.device_node* %24)
  %26 = load i32, i32* @fsl_get_sys_freq.sysfreq, align 4
  store i32 %26, i32* %1, align 4
  br label %27

27:                                               ; preds = %23, %11, %5
  %28 = load i32, i32* %1, align 4
  ret i32 %28
}

declare dso_local %struct.device_node* @of_find_node_by_type(i32*, i8*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
