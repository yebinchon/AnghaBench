; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_dlpar.c_dlpar_free_cc_nodes.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_dlpar.c_dlpar_free_cc_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { %struct.device_node*, %struct.device_node* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dlpar_free_cc_nodes(%struct.device_node* %0) #0 {
  %2 = alloca %struct.device_node*, align 8
  store %struct.device_node* %0, %struct.device_node** %2, align 8
  %3 = load %struct.device_node*, %struct.device_node** %2, align 8
  %4 = getelementptr inbounds %struct.device_node, %struct.device_node* %3, i32 0, i32 1
  %5 = load %struct.device_node*, %struct.device_node** %4, align 8
  %6 = icmp ne %struct.device_node* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load %struct.device_node*, %struct.device_node** %2, align 8
  %9 = getelementptr inbounds %struct.device_node, %struct.device_node* %8, i32 0, i32 1
  %10 = load %struct.device_node*, %struct.device_node** %9, align 8
  call void @dlpar_free_cc_nodes(%struct.device_node* %10)
  br label %11

11:                                               ; preds = %7, %1
  %12 = load %struct.device_node*, %struct.device_node** %2, align 8
  %13 = getelementptr inbounds %struct.device_node, %struct.device_node* %12, i32 0, i32 0
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  %15 = icmp ne %struct.device_node* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load %struct.device_node*, %struct.device_node** %2, align 8
  %18 = getelementptr inbounds %struct.device_node, %struct.device_node* %17, i32 0, i32 0
  %19 = load %struct.device_node*, %struct.device_node** %18, align 8
  call void @dlpar_free_cc_nodes(%struct.device_node* %19)
  br label %20

20:                                               ; preds = %16, %11
  %21 = load %struct.device_node*, %struct.device_node** %2, align 8
  %22 = call i32 @dlpar_free_one_cc_node(%struct.device_node* %21)
  ret void
}

declare dso_local i32 @dlpar_free_one_cc_node(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
