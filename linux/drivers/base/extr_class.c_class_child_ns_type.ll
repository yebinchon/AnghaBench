; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_class.c_class_child_ns_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_class.c_class_child_ns_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobj_ns_type_operations = type { i32 }
%struct.kobject = type { i32 }
%struct.subsys_private = type { %struct.class* }
%struct.class = type { %struct.kobj_ns_type_operations* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kobj_ns_type_operations* (%struct.kobject*)* @class_child_ns_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kobj_ns_type_operations* @class_child_ns_type(%struct.kobject* %0) #0 {
  %2 = alloca %struct.kobject*, align 8
  %3 = alloca %struct.subsys_private*, align 8
  %4 = alloca %struct.class*, align 8
  store %struct.kobject* %0, %struct.kobject** %2, align 8
  %5 = load %struct.kobject*, %struct.kobject** %2, align 8
  %6 = call %struct.subsys_private* @to_subsys_private(%struct.kobject* %5)
  store %struct.subsys_private* %6, %struct.subsys_private** %3, align 8
  %7 = load %struct.subsys_private*, %struct.subsys_private** %3, align 8
  %8 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %7, i32 0, i32 0
  %9 = load %struct.class*, %struct.class** %8, align 8
  store %struct.class* %9, %struct.class** %4, align 8
  %10 = load %struct.class*, %struct.class** %4, align 8
  %11 = getelementptr inbounds %struct.class, %struct.class* %10, i32 0, i32 0
  %12 = load %struct.kobj_ns_type_operations*, %struct.kobj_ns_type_operations** %11, align 8
  ret %struct.kobj_ns_type_operations* %12
}

declare dso_local %struct.subsys_private* @to_subsys_private(%struct.kobject*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
