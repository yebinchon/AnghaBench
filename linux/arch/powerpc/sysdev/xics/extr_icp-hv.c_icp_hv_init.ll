; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/xics/extr_icp-hv.c_icp_hv_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/xics/extr_icp-hv.c_icp_hv_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"ibm,ppc-xicp\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"PowerPC-External-Interrupt-Presentation\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@icp_hv_ops = common dso_local global i32 0, align 4
@icp_ops = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @icp_hv_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.device_node*, align 8
  %3 = call %struct.device_node* @of_find_compatible_node(i32* null, i32* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %3, %struct.device_node** %2, align 8
  %4 = load %struct.device_node*, %struct.device_node** %2, align 8
  %5 = icmp ne %struct.device_node* %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %0
  %7 = call %struct.device_node* @of_find_node_by_type(i32* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  store %struct.device_node* %7, %struct.device_node** %2, align 8
  br label %8

8:                                                ; preds = %6, %0
  %9 = load %struct.device_node*, %struct.device_node** %2, align 8
  %10 = icmp ne %struct.device_node* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %1, align 4
  br label %15

14:                                               ; preds = %8
  store i32* @icp_hv_ops, i32** @icp_ops, align 8
  store i32 0, i32* %1, align 4
  br label %15

15:                                               ; preds = %14, %11
  %16 = load i32, i32* %1, align 4
  ret i32 %16
}

declare dso_local %struct.device_node* @of_find_compatible_node(i32*, i32*, i8*) #1

declare dso_local %struct.device_node* @of_find_node_by_type(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
