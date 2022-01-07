; ModuleID = '/home/carl/AnghaBench/i3/i3bar/src/extr_workspaces.c_workspaces_integer_cb.c'
source_filename = "/home/carl/AnghaBench/i3/i3bar/src/extr_workspaces.c_workspaces_integer_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.workspaces_json_params = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"num\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @workspaces_integer_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @workspaces_integer_cb(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.workspaces_json_params*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.workspaces_json_params*
  store %struct.workspaces_json_params* %8, %struct.workspaces_json_params** %6, align 8
  %9 = load %struct.workspaces_json_params*, %struct.workspaces_json_params** %6, align 8
  %10 = getelementptr inbounds %struct.workspaces_json_params, %struct.workspaces_json_params* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @strcmp(i32 %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %2
  %15 = load i64, i64* %5, align 8
  %16 = trunc i64 %15 to i32
  %17 = load %struct.workspaces_json_params*, %struct.workspaces_json_params** %6, align 8
  %18 = getelementptr inbounds %struct.workspaces_json_params, %struct.workspaces_json_params* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i32 %16, i32* %20, align 4
  %21 = load %struct.workspaces_json_params*, %struct.workspaces_json_params** %6, align 8
  %22 = getelementptr inbounds %struct.workspaces_json_params, %struct.workspaces_json_params* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @FREE(i32 %23)
  store i32 1, i32* %3, align 4
  br label %102

25:                                               ; preds = %2
  %26 = load %struct.workspaces_json_params*, %struct.workspaces_json_params** %6, align 8
  %27 = getelementptr inbounds %struct.workspaces_json_params, %struct.workspaces_json_params* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @strcmp(i32 %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %43, label %31

31:                                               ; preds = %25
  %32 = load i64, i64* %5, align 8
  %33 = trunc i64 %32 to i32
  %34 = load %struct.workspaces_json_params*, %struct.workspaces_json_params** %6, align 8
  %35 = getelementptr inbounds %struct.workspaces_json_params, %struct.workspaces_json_params* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i32 %33, i32* %38, align 4
  %39 = load %struct.workspaces_json_params*, %struct.workspaces_json_params** %6, align 8
  %40 = getelementptr inbounds %struct.workspaces_json_params, %struct.workspaces_json_params* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @FREE(i32 %41)
  store i32 1, i32* %3, align 4
  br label %102

43:                                               ; preds = %25
  %44 = load %struct.workspaces_json_params*, %struct.workspaces_json_params** %6, align 8
  %45 = getelementptr inbounds %struct.workspaces_json_params, %struct.workspaces_json_params* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @strcmp(i32 %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %61, label %49

49:                                               ; preds = %43
  %50 = load i64, i64* %5, align 8
  %51 = trunc i64 %50 to i32
  %52 = load %struct.workspaces_json_params*, %struct.workspaces_json_params** %6, align 8
  %53 = getelementptr inbounds %struct.workspaces_json_params, %struct.workspaces_json_params* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  store i32 %51, i32* %56, align 4
  %57 = load %struct.workspaces_json_params*, %struct.workspaces_json_params** %6, align 8
  %58 = getelementptr inbounds %struct.workspaces_json_params, %struct.workspaces_json_params* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @FREE(i32 %59)
  store i32 1, i32* %3, align 4
  br label %102

61:                                               ; preds = %43
  %62 = load %struct.workspaces_json_params*, %struct.workspaces_json_params** %6, align 8
  %63 = getelementptr inbounds %struct.workspaces_json_params, %struct.workspaces_json_params* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @strcmp(i32 %64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %79, label %67

67:                                               ; preds = %61
  %68 = load i64, i64* %5, align 8
  %69 = trunc i64 %68 to i32
  %70 = load %struct.workspaces_json_params*, %struct.workspaces_json_params** %6, align 8
  %71 = getelementptr inbounds %struct.workspaces_json_params, %struct.workspaces_json_params* %70, i32 0, i32 1
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 2
  store i32 %69, i32* %74, align 4
  %75 = load %struct.workspaces_json_params*, %struct.workspaces_json_params** %6, align 8
  %76 = getelementptr inbounds %struct.workspaces_json_params, %struct.workspaces_json_params* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @FREE(i32 %77)
  store i32 1, i32* %3, align 4
  br label %102

79:                                               ; preds = %61
  %80 = load %struct.workspaces_json_params*, %struct.workspaces_json_params** %6, align 8
  %81 = getelementptr inbounds %struct.workspaces_json_params, %struct.workspaces_json_params* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @strcmp(i32 %82, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %97, label %85

85:                                               ; preds = %79
  %86 = load i64, i64* %5, align 8
  %87 = trunc i64 %86 to i32
  %88 = load %struct.workspaces_json_params*, %struct.workspaces_json_params** %6, align 8
  %89 = getelementptr inbounds %struct.workspaces_json_params, %struct.workspaces_json_params* %88, i32 0, i32 1
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 3
  store i32 %87, i32* %92, align 4
  %93 = load %struct.workspaces_json_params*, %struct.workspaces_json_params** %6, align 8
  %94 = getelementptr inbounds %struct.workspaces_json_params, %struct.workspaces_json_params* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @FREE(i32 %95)
  store i32 1, i32* %3, align 4
  br label %102

97:                                               ; preds = %79
  %98 = load %struct.workspaces_json_params*, %struct.workspaces_json_params** %6, align 8
  %99 = getelementptr inbounds %struct.workspaces_json_params, %struct.workspaces_json_params* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @FREE(i32 %100)
  store i32 0, i32* %3, align 4
  br label %102

102:                                              ; preds = %97, %85, %67, %49, %31, %14
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @FREE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
