; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal-powercap.c_powercap_add_attr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal-powercap.c_powercap_add_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.powercap_attr = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i32 }

@powercap_show = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, %struct.powercap_attr*)* @powercap_add_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @powercap_add_attr(i32 %0, i8* %1, %struct.powercap_attr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.powercap_attr*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store %struct.powercap_attr* %2, %struct.powercap_attr** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.powercap_attr*, %struct.powercap_attr** %6, align 8
  %9 = getelementptr inbounds %struct.powercap_attr, %struct.powercap_attr* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 8
  %10 = load %struct.powercap_attr*, %struct.powercap_attr** %6, align 8
  %11 = getelementptr inbounds %struct.powercap_attr, %struct.powercap_attr* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = call i32 @sysfs_attr_init(%struct.TYPE_4__* %12)
  %14 = load i8*, i8** %5, align 8
  %15 = load %struct.powercap_attr*, %struct.powercap_attr** %6, align 8
  %16 = getelementptr inbounds %struct.powercap_attr, %struct.powercap_attr* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i8* %14, i8** %18, align 8
  %19 = load %struct.powercap_attr*, %struct.powercap_attr** %6, align 8
  %20 = getelementptr inbounds %struct.powercap_attr, %struct.powercap_attr* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  store i32 292, i32* %22, align 8
  %23 = load i32, i32* @powercap_show, align 4
  %24 = load %struct.powercap_attr*, %struct.powercap_attr** %6, align 8
  %25 = getelementptr inbounds %struct.powercap_attr, %struct.powercap_attr* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 8
  ret void
}

declare dso_local i32 @sysfs_attr_init(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
