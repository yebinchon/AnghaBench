; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_dlpar.c_dlpar_free_one_cc_node.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_dlpar.c_dlpar_free_one_cc_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { %struct.device_node*, %struct.property* }
%struct.property = type { %struct.property* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device_node*)* @dlpar_free_one_cc_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dlpar_free_one_cc_node(%struct.device_node* %0) #0 {
  %2 = alloca %struct.device_node*, align 8
  %3 = alloca %struct.property*, align 8
  store %struct.device_node* %0, %struct.device_node** %2, align 8
  br label %4

4:                                                ; preds = %9, %1
  %5 = load %struct.device_node*, %struct.device_node** %2, align 8
  %6 = getelementptr inbounds %struct.device_node, %struct.device_node* %5, i32 0, i32 1
  %7 = load %struct.property*, %struct.property** %6, align 8
  %8 = icmp ne %struct.property* %7, null
  br i1 %8, label %9, label %20

9:                                                ; preds = %4
  %10 = load %struct.device_node*, %struct.device_node** %2, align 8
  %11 = getelementptr inbounds %struct.device_node, %struct.device_node* %10, i32 0, i32 1
  %12 = load %struct.property*, %struct.property** %11, align 8
  store %struct.property* %12, %struct.property** %3, align 8
  %13 = load %struct.property*, %struct.property** %3, align 8
  %14 = getelementptr inbounds %struct.property, %struct.property* %13, i32 0, i32 0
  %15 = load %struct.property*, %struct.property** %14, align 8
  %16 = load %struct.device_node*, %struct.device_node** %2, align 8
  %17 = getelementptr inbounds %struct.device_node, %struct.device_node* %16, i32 0, i32 1
  store %struct.property* %15, %struct.property** %17, align 8
  %18 = load %struct.property*, %struct.property** %3, align 8
  %19 = call i32 @dlpar_free_cc_property(%struct.property* %18)
  br label %4

20:                                               ; preds = %4
  %21 = load %struct.device_node*, %struct.device_node** %2, align 8
  %22 = getelementptr inbounds %struct.device_node, %struct.device_node* %21, i32 0, i32 0
  %23 = load %struct.device_node*, %struct.device_node** %22, align 8
  %24 = call i32 @kfree(%struct.device_node* %23)
  %25 = load %struct.device_node*, %struct.device_node** %2, align 8
  %26 = call i32 @kfree(%struct.device_node* %25)
  ret void
}

declare dso_local i32 @dlpar_free_cc_property(%struct.property*) #1

declare dso_local i32 @kfree(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
