; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_reconfig.c_release_prop_list.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_reconfig.c_release_prop_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.property = type { %struct.property*, %struct.property*, %struct.property* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.property*)* @release_prop_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @release_prop_list(%struct.property* %0) #0 {
  %2 = alloca %struct.property*, align 8
  %3 = alloca %struct.property*, align 8
  store %struct.property* %0, %struct.property** %2, align 8
  br label %4

4:                                                ; preds = %21, %1
  %5 = load %struct.property*, %struct.property** %2, align 8
  %6 = icmp ne %struct.property* %5, null
  br i1 %6, label %7, label %23

7:                                                ; preds = %4
  %8 = load %struct.property*, %struct.property** %2, align 8
  %9 = getelementptr inbounds %struct.property, %struct.property* %8, i32 0, i32 2
  %10 = load %struct.property*, %struct.property** %9, align 8
  store %struct.property* %10, %struct.property** %3, align 8
  %11 = load %struct.property*, %struct.property** %2, align 8
  %12 = getelementptr inbounds %struct.property, %struct.property* %11, i32 0, i32 1
  %13 = load %struct.property*, %struct.property** %12, align 8
  %14 = call i32 @kfree(%struct.property* %13)
  %15 = load %struct.property*, %struct.property** %2, align 8
  %16 = getelementptr inbounds %struct.property, %struct.property* %15, i32 0, i32 0
  %17 = load %struct.property*, %struct.property** %16, align 8
  %18 = call i32 @kfree(%struct.property* %17)
  %19 = load %struct.property*, %struct.property** %2, align 8
  %20 = call i32 @kfree(%struct.property* %19)
  br label %21

21:                                               ; preds = %7
  %22 = load %struct.property*, %struct.property** %3, align 8
  store %struct.property* %22, %struct.property** %2, align 8
  br label %4

23:                                               ; preds = %4
  ret void
}

declare dso_local i32 @kfree(%struct.property*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
