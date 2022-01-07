; ModuleID = '/home/carl/AnghaBench/git/extr_http-push.c_process_blob.c'
source_filename = "/home/carl/AnghaBench/git/extr_http-push.c_process_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blob = type { %struct.object }
%struct.object = type { i32 }
%struct.object_list = type { i32 }

@LOCAL = common dso_local global i32 0, align 4
@UNINTERESTING = common dso_local global i32 0, align 4
@SEEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.object_list** (%struct.blob*, %struct.object_list**)* @process_blob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.object_list** @process_blob(%struct.blob* %0, %struct.object_list** %1) #0 {
  %3 = alloca %struct.object_list**, align 8
  %4 = alloca %struct.blob*, align 8
  %5 = alloca %struct.object_list**, align 8
  %6 = alloca %struct.object*, align 8
  store %struct.blob* %0, %struct.blob** %4, align 8
  store %struct.object_list** %1, %struct.object_list*** %5, align 8
  %7 = load %struct.blob*, %struct.blob** %4, align 8
  %8 = getelementptr inbounds %struct.blob, %struct.blob* %7, i32 0, i32 0
  store %struct.object* %8, %struct.object** %6, align 8
  %9 = load i32, i32* @LOCAL, align 4
  %10 = load %struct.object*, %struct.object** %6, align 8
  %11 = getelementptr inbounds %struct.object, %struct.object* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, %9
  store i32 %13, i32* %11, align 4
  %14 = load %struct.object*, %struct.object** %6, align 8
  %15 = getelementptr inbounds %struct.object, %struct.object* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @UNINTERESTING, align 4
  %18 = load i32, i32* @SEEN, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load %struct.object_list**, %struct.object_list*** %5, align 8
  store %struct.object_list** %23, %struct.object_list*** %3, align 8
  br label %33

24:                                               ; preds = %2
  %25 = load i32, i32* @SEEN, align 4
  %26 = load %struct.object*, %struct.object** %6, align 8
  %27 = getelementptr inbounds %struct.object, %struct.object* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load %struct.object*, %struct.object** %6, align 8
  %31 = load %struct.object_list**, %struct.object_list*** %5, align 8
  %32 = call %struct.object_list** @add_one_object(%struct.object* %30, %struct.object_list** %31)
  store %struct.object_list** %32, %struct.object_list*** %3, align 8
  br label %33

33:                                               ; preds = %24, %22
  %34 = load %struct.object_list**, %struct.object_list*** %3, align 8
  ret %struct.object_list** %34
}

declare dso_local %struct.object_list** @add_one_object(%struct.object*, %struct.object_list**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
