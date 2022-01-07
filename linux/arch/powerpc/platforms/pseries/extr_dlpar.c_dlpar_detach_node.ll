; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_dlpar.c_dlpar_detach_node.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_dlpar.c_dlpar_detach_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlpar_detach_node(%struct.device_node* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  %6 = load %struct.device_node*, %struct.device_node** %3, align 8
  %7 = call %struct.device_node* @of_get_next_child(%struct.device_node* %6, %struct.device_node* null)
  store %struct.device_node* %7, %struct.device_node** %4, align 8
  br label %8

8:                                                ; preds = %11, %1
  %9 = load %struct.device_node*, %struct.device_node** %4, align 8
  %10 = icmp ne %struct.device_node* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = load %struct.device_node*, %struct.device_node** %4, align 8
  %13 = call i32 @dlpar_detach_node(%struct.device_node* %12)
  %14 = load %struct.device_node*, %struct.device_node** %3, align 8
  %15 = load %struct.device_node*, %struct.device_node** %4, align 8
  %16 = call %struct.device_node* @of_get_next_child(%struct.device_node* %14, %struct.device_node* %15)
  store %struct.device_node* %16, %struct.device_node** %4, align 8
  br label %8

17:                                               ; preds = %8
  %18 = load %struct.device_node*, %struct.device_node** %3, align 8
  %19 = call i32 @of_detach_node(%struct.device_node* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %27

24:                                               ; preds = %17
  %25 = load %struct.device_node*, %struct.device_node** %3, align 8
  %26 = call i32 @of_node_put(%struct.device_node* %25)
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %24, %22
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local %struct.device_node* @of_get_next_child(%struct.device_node*, %struct.device_node*) #1

declare dso_local i32 @of_detach_node(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
