; ModuleID = '/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_drivers.c_for_each_padev.c'
source_filename = "/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_drivers.c_for_each_padev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type opaque
%struct.recurse_struct = type { i8*, i32 (%struct.device.0*, i8*)* }
%struct.device.0 = type opaque

@root = common dso_local global i32 0, align 4
@descend_children = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32 (%struct.device*, i8*)*, i8*)* @for_each_padev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @for_each_padev(i32 (%struct.device*, i8*)* %0, i8* %1) #0 {
  %3 = alloca i32 (%struct.device*, i8*)*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.recurse_struct, align 8
  store i32 (%struct.device*, i8*)* %0, i32 (%struct.device*, i8*)** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = getelementptr inbounds %struct.recurse_struct, %struct.recurse_struct* %5, i32 0, i32 0
  %7 = load i8*, i8** %4, align 8
  store i8* %7, i8** %6, align 8
  %8 = getelementptr inbounds %struct.recurse_struct, %struct.recurse_struct* %5, i32 0, i32 1
  %9 = load i32 (%struct.device*, i8*)*, i32 (%struct.device*, i8*)** %3, align 8
  %10 = bitcast i32 (%struct.device*, i8*)* %9 to i32 (%struct.device.0*, i8*)*
  store i32 (%struct.device.0*, i8*)* %10, i32 (%struct.device.0*, i8*)** %8, align 8
  %11 = load i32, i32* @descend_children, align 4
  %12 = call i32 @device_for_each_child(i32* @root, %struct.recurse_struct* %5, i32 %11)
  ret i32 %12
}

declare dso_local i32 @device_for_each_child(i32*, %struct.recurse_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
