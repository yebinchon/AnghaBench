; ModuleID = '/home/carl/AnghaBench/git/negotiator/extr_skipping.c_get_rev.c'
source_filename = "/home/carl/AnghaBench/git/negotiator/extr_skipping.c_get_rev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.data = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.commit = type { %struct.TYPE_3__, %struct.commit_list* }
%struct.TYPE_3__ = type { i32, %struct.object_id }
%struct.commit_list = type { i32, %struct.commit_list* }
%struct.entry = type { i32, %struct.commit* }

@POPPED = common dso_local global i32 0, align 4
@COMMON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.object_id* (%struct.data*)* @get_rev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.object_id* @get_rev(%struct.data* %0) #0 {
  %2 = alloca %struct.object_id*, align 8
  %3 = alloca %struct.data*, align 8
  %4 = alloca %struct.commit*, align 8
  %5 = alloca %struct.entry*, align 8
  %6 = alloca %struct.commit*, align 8
  %7 = alloca %struct.commit_list*, align 8
  %8 = alloca i32, align 4
  store %struct.data* %0, %struct.data** %3, align 8
  store %struct.commit* null, %struct.commit** %4, align 8
  br label %9

9:                                                ; preds = %99, %1
  %10 = load %struct.commit*, %struct.commit** %4, align 8
  %11 = icmp eq %struct.commit* %10, null
  br i1 %11, label %12, label %102

12:                                               ; preds = %9
  store i32 0, i32* %8, align 4
  %13 = load %struct.data*, %struct.data** %3, align 8
  %14 = getelementptr inbounds %struct.data, %struct.data* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %12
  %19 = load %struct.data*, %struct.data** %3, align 8
  %20 = getelementptr inbounds %struct.data, %struct.data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18, %12
  store %struct.object_id* null, %struct.object_id** %2, align 8
  br label %106

24:                                               ; preds = %18
  %25 = load %struct.data*, %struct.data** %3, align 8
  %26 = getelementptr inbounds %struct.data, %struct.data* %25, i32 0, i32 1
  %27 = call %struct.entry* @prio_queue_get(%struct.TYPE_4__* %26)
  store %struct.entry* %27, %struct.entry** %5, align 8
  %28 = load %struct.entry*, %struct.entry** %5, align 8
  %29 = getelementptr inbounds %struct.entry, %struct.entry* %28, i32 0, i32 1
  %30 = load %struct.commit*, %struct.commit** %29, align 8
  store %struct.commit* %30, %struct.commit** %6, align 8
  %31 = load i32, i32* @POPPED, align 4
  %32 = load %struct.commit*, %struct.commit** %6, align 8
  %33 = getelementptr inbounds %struct.commit, %struct.commit* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %31
  store i32 %36, i32* %34, align 8
  %37 = load %struct.commit*, %struct.commit** %6, align 8
  %38 = getelementptr inbounds %struct.commit, %struct.commit* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @COMMON, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %24
  %45 = load %struct.data*, %struct.data** %3, align 8
  %46 = getelementptr inbounds %struct.data, %struct.data* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, -1
  store i64 %48, i64* %46, align 8
  br label %49

49:                                               ; preds = %44, %24
  %50 = load %struct.commit*, %struct.commit** %6, align 8
  %51 = getelementptr inbounds %struct.commit, %struct.commit* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @COMMON, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %49
  %58 = load %struct.entry*, %struct.entry** %5, align 8
  %59 = getelementptr inbounds %struct.entry, %struct.entry* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %57
  %63 = load %struct.commit*, %struct.commit** %6, align 8
  store %struct.commit* %63, %struct.commit** %4, align 8
  br label %64

64:                                               ; preds = %62, %57, %49
  %65 = load %struct.commit*, %struct.commit** %6, align 8
  %66 = call i32 @parse_commit(%struct.commit* %65)
  %67 = load %struct.commit*, %struct.commit** %6, align 8
  %68 = getelementptr inbounds %struct.commit, %struct.commit* %67, i32 0, i32 1
  %69 = load %struct.commit_list*, %struct.commit_list** %68, align 8
  store %struct.commit_list* %69, %struct.commit_list** %7, align 8
  br label %70

70:                                               ; preds = %82, %64
  %71 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %72 = icmp ne %struct.commit_list* %71, null
  br i1 %72, label %73, label %86

73:                                               ; preds = %70
  %74 = load %struct.data*, %struct.data** %3, align 8
  %75 = load %struct.entry*, %struct.entry** %5, align 8
  %76 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %77 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @push_parent(%struct.data* %74, %struct.entry* %75, i32 %78)
  %80 = load i32, i32* %8, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %8, align 4
  br label %82

82:                                               ; preds = %73
  %83 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %84 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %83, i32 0, i32 1
  %85 = load %struct.commit_list*, %struct.commit_list** %84, align 8
  store %struct.commit_list* %85, %struct.commit_list** %7, align 8
  br label %70

86:                                               ; preds = %70
  %87 = load %struct.commit*, %struct.commit** %6, align 8
  %88 = getelementptr inbounds %struct.commit, %struct.commit* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @COMMON, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %86
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %94
  %98 = load %struct.commit*, %struct.commit** %6, align 8
  store %struct.commit* %98, %struct.commit** %4, align 8
  br label %99

99:                                               ; preds = %97, %94, %86
  %100 = load %struct.entry*, %struct.entry** %5, align 8
  %101 = call i32 @free(%struct.entry* %100)
  br label %9

102:                                              ; preds = %9
  %103 = load %struct.commit*, %struct.commit** %4, align 8
  %104 = getelementptr inbounds %struct.commit, %struct.commit* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 1
  store %struct.object_id* %105, %struct.object_id** %2, align 8
  br label %106

106:                                              ; preds = %102, %23
  %107 = load %struct.object_id*, %struct.object_id** %2, align 8
  ret %struct.object_id* %107
}

declare dso_local %struct.entry* @prio_queue_get(%struct.TYPE_4__*) #1

declare dso_local i32 @parse_commit(%struct.commit*) #1

declare dso_local i32 @push_parent(%struct.data*, %struct.entry*, i32) #1

declare dso_local i32 @free(%struct.entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
