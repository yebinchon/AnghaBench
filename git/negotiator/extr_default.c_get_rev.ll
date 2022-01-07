; ModuleID = '/home/carl/AnghaBench/git/negotiator/extr_default.c_get_rev.c'
source_filename = "/home/carl/AnghaBench/git/negotiator/extr_default.c_get_rev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.negotiation_state = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.commit = type { %struct.TYPE_7__, %struct.commit_list* }
%struct.TYPE_7__ = type { i32, %struct.object_id }
%struct.commit_list = type { %struct.commit_list*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@POPPED = common dso_local global i32 0, align 4
@COMMON = common dso_local global i32 0, align 4
@SEEN = common dso_local global i32 0, align 4
@COMMON_REF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.object_id* (%struct.negotiation_state*)* @get_rev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.object_id* @get_rev(%struct.negotiation_state* %0) #0 {
  %2 = alloca %struct.object_id*, align 8
  %3 = alloca %struct.negotiation_state*, align 8
  %4 = alloca %struct.commit*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.commit_list*, align 8
  store %struct.negotiation_state* %0, %struct.negotiation_state** %3, align 8
  store %struct.commit* null, %struct.commit** %4, align 8
  br label %7

7:                                                ; preds = %112, %1
  %8 = load %struct.commit*, %struct.commit** %4, align 8
  %9 = icmp eq %struct.commit* %8, null
  br i1 %9, label %10, label %113

10:                                               ; preds = %7
  %11 = load %struct.negotiation_state*, %struct.negotiation_state** %3, align 8
  %12 = getelementptr inbounds %struct.negotiation_state, %struct.negotiation_state* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %10
  %17 = load %struct.negotiation_state*, %struct.negotiation_state** %3, align 8
  %18 = getelementptr inbounds %struct.negotiation_state, %struct.negotiation_state* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16, %10
  store %struct.object_id* null, %struct.object_id** %2, align 8
  br label %117

22:                                               ; preds = %16
  %23 = load %struct.negotiation_state*, %struct.negotiation_state** %3, align 8
  %24 = getelementptr inbounds %struct.negotiation_state, %struct.negotiation_state* %23, i32 0, i32 1
  %25 = call %struct.commit* @prio_queue_get(%struct.TYPE_9__* %24)
  store %struct.commit* %25, %struct.commit** %4, align 8
  %26 = load %struct.commit*, %struct.commit** %4, align 8
  %27 = call i32 @parse_commit(%struct.commit* %26)
  %28 = load %struct.commit*, %struct.commit** %4, align 8
  %29 = getelementptr inbounds %struct.commit, %struct.commit* %28, i32 0, i32 1
  %30 = load %struct.commit_list*, %struct.commit_list** %29, align 8
  store %struct.commit_list* %30, %struct.commit_list** %6, align 8
  %31 = load i32, i32* @POPPED, align 4
  %32 = load %struct.commit*, %struct.commit** %4, align 8
  %33 = getelementptr inbounds %struct.commit, %struct.commit* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %31
  store i32 %36, i32* %34, align 8
  %37 = load %struct.commit*, %struct.commit** %4, align 8
  %38 = getelementptr inbounds %struct.commit, %struct.commit* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @COMMON, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %22
  %45 = load %struct.negotiation_state*, %struct.negotiation_state** %3, align 8
  %46 = getelementptr inbounds %struct.negotiation_state, %struct.negotiation_state* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, -1
  store i64 %48, i64* %46, align 8
  br label %49

49:                                               ; preds = %44, %22
  %50 = load %struct.commit*, %struct.commit** %4, align 8
  %51 = getelementptr inbounds %struct.commit, %struct.commit* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @COMMON, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %49
  store %struct.commit* null, %struct.commit** %4, align 8
  %58 = load i32, i32* @COMMON, align 4
  %59 = load i32, i32* @SEEN, align 4
  %60 = or i32 %58, %59
  store i32 %60, i32* %5, align 4
  br label %76

61:                                               ; preds = %49
  %62 = load %struct.commit*, %struct.commit** %4, align 8
  %63 = getelementptr inbounds %struct.commit, %struct.commit* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @COMMON_REF, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %61
  %70 = load i32, i32* @COMMON, align 4
  %71 = load i32, i32* @SEEN, align 4
  %72 = or i32 %70, %71
  store i32 %72, i32* %5, align 4
  br label %75

73:                                               ; preds = %61
  %74 = load i32, i32* @SEEN, align 4
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %73, %69
  br label %76

76:                                               ; preds = %75, %57
  br label %77

77:                                               ; preds = %108, %76
  %78 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  %79 = icmp ne %struct.commit_list* %78, null
  br i1 %79, label %80, label %112

80:                                               ; preds = %77
  %81 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  %82 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %81, i32 0, i32 1
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @SEEN, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %97, label %90

90:                                               ; preds = %80
  %91 = load %struct.negotiation_state*, %struct.negotiation_state** %3, align 8
  %92 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  %93 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %92, i32 0, i32 1
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %93, align 8
  %95 = load i32, i32* %5, align 4
  %96 = call i32 @rev_list_push(%struct.negotiation_state* %91, %struct.TYPE_8__* %94, i32 %95)
  br label %97

97:                                               ; preds = %90, %80
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* @COMMON, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %97
  %103 = load %struct.negotiation_state*, %struct.negotiation_state** %3, align 8
  %104 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  %105 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %104, i32 0, i32 1
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %105, align 8
  %107 = call i32 @mark_common(%struct.negotiation_state* %103, %struct.TYPE_8__* %106, i32 1, i32 0)
  br label %108

108:                                              ; preds = %102, %97
  %109 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  %110 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %109, i32 0, i32 0
  %111 = load %struct.commit_list*, %struct.commit_list** %110, align 8
  store %struct.commit_list* %111, %struct.commit_list** %6, align 8
  br label %77

112:                                              ; preds = %77
  br label %7

113:                                              ; preds = %7
  %114 = load %struct.commit*, %struct.commit** %4, align 8
  %115 = getelementptr inbounds %struct.commit, %struct.commit* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 1
  store %struct.object_id* %116, %struct.object_id** %2, align 8
  br label %117

117:                                              ; preds = %113, %21
  %118 = load %struct.object_id*, %struct.object_id** %2, align 8
  ret %struct.object_id* %118
}

declare dso_local %struct.commit* @prio_queue_get(%struct.TYPE_9__*) #1

declare dso_local i32 @parse_commit(%struct.commit*) #1

declare dso_local i32 @rev_list_push(%struct.negotiation_state*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @mark_common(%struct.negotiation_state*, %struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
