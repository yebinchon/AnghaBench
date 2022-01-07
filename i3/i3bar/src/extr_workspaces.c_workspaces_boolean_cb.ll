; ModuleID = '/home/carl/AnghaBench/i3/i3bar/src/extr_workspaces.c_workspaces_boolean_cb.c'
source_filename = "/home/carl/AnghaBench/i3/i3bar/src/extr_workspaces.c_workspaces_boolean_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.workspaces_json_params = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"visible\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"focused\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"urgent\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @workspaces_boolean_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @workspaces_boolean_cb(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.workspaces_json_params*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.workspaces_json_params*
  store %struct.workspaces_json_params* %8, %struct.workspaces_json_params** %6, align 8
  %9 = load %struct.workspaces_json_params*, %struct.workspaces_json_params** %6, align 8
  %10 = getelementptr inbounds %struct.workspaces_json_params, %struct.workspaces_json_params* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @strcmp(i32 %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.workspaces_json_params*, %struct.workspaces_json_params** %6, align 8
  %17 = getelementptr inbounds %struct.workspaces_json_params, %struct.workspaces_json_params* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 %15, i32* %19, align 4
  %20 = load %struct.workspaces_json_params*, %struct.workspaces_json_params** %6, align 8
  %21 = getelementptr inbounds %struct.workspaces_json_params, %struct.workspaces_json_params* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @FREE(i32 %22)
  store i32 1, i32* %3, align 4
  br label %61

24:                                               ; preds = %2
  %25 = load %struct.workspaces_json_params*, %struct.workspaces_json_params** %6, align 8
  %26 = getelementptr inbounds %struct.workspaces_json_params, %struct.workspaces_json_params* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @strcmp(i32 %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.workspaces_json_params*, %struct.workspaces_json_params** %6, align 8
  %33 = getelementptr inbounds %struct.workspaces_json_params, %struct.workspaces_json_params* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  store i32 %31, i32* %35, align 4
  %36 = load %struct.workspaces_json_params*, %struct.workspaces_json_params** %6, align 8
  %37 = getelementptr inbounds %struct.workspaces_json_params, %struct.workspaces_json_params* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @FREE(i32 %38)
  store i32 1, i32* %3, align 4
  br label %61

40:                                               ; preds = %24
  %41 = load %struct.workspaces_json_params*, %struct.workspaces_json_params** %6, align 8
  %42 = getelementptr inbounds %struct.workspaces_json_params, %struct.workspaces_json_params* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @strcmp(i32 %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.workspaces_json_params*, %struct.workspaces_json_params** %6, align 8
  %49 = getelementptr inbounds %struct.workspaces_json_params, %struct.workspaces_json_params* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  store i32 %47, i32* %51, align 4
  %52 = load %struct.workspaces_json_params*, %struct.workspaces_json_params** %6, align 8
  %53 = getelementptr inbounds %struct.workspaces_json_params, %struct.workspaces_json_params* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @FREE(i32 %54)
  store i32 1, i32* %3, align 4
  br label %61

56:                                               ; preds = %40
  %57 = load %struct.workspaces_json_params*, %struct.workspaces_json_params** %6, align 8
  %58 = getelementptr inbounds %struct.workspaces_json_params, %struct.workspaces_json_params* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @FREE(i32 %59)
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %56, %46, %30, %14
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @FREE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
