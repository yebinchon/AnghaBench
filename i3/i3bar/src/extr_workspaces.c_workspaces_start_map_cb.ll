; ModuleID = '/home/carl/AnghaBench/i3/i3bar/src/extr_workspaces.c_workspaces_start_map_cb.c'
source_filename = "/home/carl/AnghaBench/i3/i3bar/src/extr_workspaces.c_workspaces_start_map_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.workspaces_json_params = type { %struct.TYPE_3__*, i32* }
%struct.TYPE_3__ = type { i32, i32*, i32, i64, i64, i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @workspaces_start_map_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @workspaces_start_map_cb(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.workspaces_json_params*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.workspaces_json_params*
  store %struct.workspaces_json_params* %7, %struct.workspaces_json_params** %4, align 8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %5, align 8
  %8 = load %struct.workspaces_json_params*, %struct.workspaces_json_params** %4, align 8
  %9 = getelementptr inbounds %struct.workspaces_json_params, %struct.workspaces_json_params* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %32

12:                                               ; preds = %1
  %13 = call %struct.TYPE_3__* @smalloc(i32 56)
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %5, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store i32 -1, i32* %15, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 6
  store i32* null, i32** %17, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 5
  store i64 0, i64* %19, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 4
  store i64 0, i64* %21, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 3
  store i64 0, i64* %23, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = call i32 @memset(i32* %25, i32 0, i32 4)
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  store i32* null, i32** %28, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %30 = load %struct.workspaces_json_params*, %struct.workspaces_json_params** %4, align 8
  %31 = getelementptr inbounds %struct.workspaces_json_params, %struct.workspaces_json_params* %30, i32 0, i32 0
  store %struct.TYPE_3__* %29, %struct.TYPE_3__** %31, align 8
  store i32 1, i32* %2, align 4
  br label %33

32:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %12
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.TYPE_3__* @smalloc(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
