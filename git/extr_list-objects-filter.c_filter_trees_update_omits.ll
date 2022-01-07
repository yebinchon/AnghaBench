; ModuleID = '/home/carl/AnghaBench/git/extr_list-objects-filter.c_filter_trees_update_omits.c'
source_filename = "/home/carl/AnghaBench/git/extr_list-objects-filter.c_filter_trees_update_omits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object = type { i32 }
%struct.oidset = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object*, %struct.oidset*, i32)* @filter_trees_update_omits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_trees_update_omits(%struct.object* %0, %struct.oidset* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.object*, align 8
  %6 = alloca %struct.oidset*, align 8
  %7 = alloca i32, align 4
  store %struct.object* %0, %struct.object** %5, align 8
  store %struct.oidset* %1, %struct.oidset** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.oidset*, %struct.oidset** %6, align 8
  %9 = icmp ne %struct.oidset* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %24

11:                                               ; preds = %3
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = load %struct.oidset*, %struct.oidset** %6, align 8
  %16 = load %struct.object*, %struct.object** %5, align 8
  %17 = getelementptr inbounds %struct.object, %struct.object* %16, i32 0, i32 0
  %18 = call i32 @oidset_remove(%struct.oidset* %15, i32* %17)
  store i32 %18, i32* %4, align 4
  br label %24

19:                                               ; preds = %11
  %20 = load %struct.oidset*, %struct.oidset** %6, align 8
  %21 = load %struct.object*, %struct.object** %5, align 8
  %22 = getelementptr inbounds %struct.object, %struct.object* %21, i32 0, i32 0
  %23 = call i32 @oidset_insert(%struct.oidset* %20, i32* %22)
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %19, %14, %10
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local i32 @oidset_remove(%struct.oidset*, i32*) #1

declare dso_local i32 @oidset_insert(%struct.oidset*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
