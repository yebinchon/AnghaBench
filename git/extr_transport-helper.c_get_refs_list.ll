; ModuleID = '/home/carl/AnghaBench/git/extr_transport-helper.c_get_refs_list.c'
source_filename = "/home/carl/AnghaBench/git/extr_transport-helper.c_get_refs_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref = type { i32 }
%struct.transport = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.argv_array = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ref* (%struct.transport*, i32, %struct.argv_array*)* @get_refs_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ref* @get_refs_list(%struct.transport* %0, i32 %1, %struct.argv_array* %2) #0 {
  %4 = alloca %struct.ref*, align 8
  %5 = alloca %struct.transport*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.argv_array*, align 8
  store %struct.transport* %0, %struct.transport** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.argv_array* %2, %struct.argv_array** %7, align 8
  %8 = load %struct.transport*, %struct.transport** %5, align 8
  %9 = call i32 @get_helper(%struct.transport* %8)
  %10 = load %struct.transport*, %struct.transport** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i64 @process_connect(%struct.transport* %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %3
  %15 = load %struct.transport*, %struct.transport** %5, align 8
  %16 = call i32 @do_take_over(%struct.transport* %15)
  %17 = load %struct.transport*, %struct.transport** %5, align 8
  %18 = getelementptr inbounds %struct.transport, %struct.transport* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = bitcast {}** %20 to %struct.ref* (%struct.transport*, i32, %struct.argv_array*)**
  %22 = load %struct.ref* (%struct.transport*, i32, %struct.argv_array*)*, %struct.ref* (%struct.transport*, i32, %struct.argv_array*)** %21, align 8
  %23 = load %struct.transport*, %struct.transport** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.argv_array*, %struct.argv_array** %7, align 8
  %26 = call %struct.ref* %22(%struct.transport* %23, i32 %24, %struct.argv_array* %25)
  store %struct.ref* %26, %struct.ref** %4, align 8
  br label %31

27:                                               ; preds = %3
  %28 = load %struct.transport*, %struct.transport** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call %struct.ref* @get_refs_list_using_list(%struct.transport* %28, i32 %29)
  store %struct.ref* %30, %struct.ref** %4, align 8
  br label %31

31:                                               ; preds = %27, %14
  %32 = load %struct.ref*, %struct.ref** %4, align 8
  ret %struct.ref* %32
}

declare dso_local i32 @get_helper(%struct.transport*) #1

declare dso_local i64 @process_connect(%struct.transport*, i32) #1

declare dso_local i32 @do_take_over(%struct.transport*) #1

declare dso_local %struct.ref* @get_refs_list_using_list(%struct.transport*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
