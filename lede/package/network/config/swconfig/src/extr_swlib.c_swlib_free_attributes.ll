; ModuleID = '/home/carl/AnghaBench/lede/package/network/config/swconfig/src/extr_swlib.c_swlib_free_attributes.c'
source_filename = "/home/carl/AnghaBench/lede/package/network/config/swconfig/src/extr_swlib.c_swlib_free_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_attr = type { %struct.switch_attr*, %struct.switch_attr*, %struct.switch_attr* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.switch_attr**)* @swlib_free_attributes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @swlib_free_attributes(%struct.switch_attr** %0) #0 {
  %2 = alloca %struct.switch_attr**, align 8
  %3 = alloca %struct.switch_attr*, align 8
  %4 = alloca %struct.switch_attr*, align 8
  store %struct.switch_attr** %0, %struct.switch_attr*** %2, align 8
  %5 = load %struct.switch_attr**, %struct.switch_attr*** %2, align 8
  %6 = load %struct.switch_attr*, %struct.switch_attr** %5, align 8
  store %struct.switch_attr* %6, %struct.switch_attr** %3, align 8
  br label %7

7:                                                ; preds = %10, %1
  %8 = load %struct.switch_attr*, %struct.switch_attr** %3, align 8
  %9 = icmp ne %struct.switch_attr* %8, null
  br i1 %9, label %10, label %25

10:                                               ; preds = %7
  %11 = load %struct.switch_attr*, %struct.switch_attr** %3, align 8
  %12 = getelementptr inbounds %struct.switch_attr, %struct.switch_attr* %11, i32 0, i32 2
  %13 = load %struct.switch_attr*, %struct.switch_attr** %12, align 8
  store %struct.switch_attr* %13, %struct.switch_attr** %4, align 8
  %14 = load %struct.switch_attr*, %struct.switch_attr** %3, align 8
  %15 = getelementptr inbounds %struct.switch_attr, %struct.switch_attr* %14, i32 0, i32 1
  %16 = load %struct.switch_attr*, %struct.switch_attr** %15, align 8
  %17 = call i32 @free(%struct.switch_attr* %16)
  %18 = load %struct.switch_attr*, %struct.switch_attr** %3, align 8
  %19 = getelementptr inbounds %struct.switch_attr, %struct.switch_attr* %18, i32 0, i32 0
  %20 = load %struct.switch_attr*, %struct.switch_attr** %19, align 8
  %21 = call i32 @free(%struct.switch_attr* %20)
  %22 = load %struct.switch_attr*, %struct.switch_attr** %3, align 8
  %23 = call i32 @free(%struct.switch_attr* %22)
  %24 = load %struct.switch_attr*, %struct.switch_attr** %4, align 8
  store %struct.switch_attr* %24, %struct.switch_attr** %3, align 8
  br label %7

25:                                               ; preds = %7
  %26 = load %struct.switch_attr**, %struct.switch_attr*** %2, align 8
  store %struct.switch_attr* null, %struct.switch_attr** %26, align 8
  ret void
}

declare dso_local i32 @free(%struct.switch_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
