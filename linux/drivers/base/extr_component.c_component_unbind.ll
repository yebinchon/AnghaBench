; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_component.c_component_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_component.c_component_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.component = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32, i8*)* }
%struct.master = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.component*, %struct.master*, i8*)* @component_unbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @component_unbind(%struct.component* %0, %struct.master* %1, i8* %2) #0 {
  %4 = alloca %struct.component*, align 8
  %5 = alloca %struct.master*, align 8
  %6 = alloca i8*, align 8
  store %struct.component* %0, %struct.component** %4, align 8
  store %struct.master* %1, %struct.master** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.component*, %struct.component** %4, align 8
  %8 = getelementptr inbounds %struct.component, %struct.component* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @WARN_ON(i32 %12)
  %14 = load %struct.component*, %struct.component** %4, align 8
  %15 = getelementptr inbounds %struct.component, %struct.component* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %17, align 8
  %19 = load %struct.component*, %struct.component** %4, align 8
  %20 = getelementptr inbounds %struct.component, %struct.component* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.master*, %struct.master** %5, align 8
  %23 = getelementptr inbounds %struct.master, %struct.master* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 %18(i32 %21, i32 %24, i8* %25)
  %27 = load %struct.component*, %struct.component** %4, align 8
  %28 = getelementptr inbounds %struct.component, %struct.component* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  %29 = load %struct.component*, %struct.component** %4, align 8
  %30 = getelementptr inbounds %struct.component, %struct.component* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.component*, %struct.component** %4, align 8
  %33 = call i32 @devres_release_group(i32 %31, %struct.component* %32)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @devres_release_group(i32, %struct.component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
