; ModuleID = '/home/carl/AnghaBench/git/negotiator/extr_default.c_mark_common.c'
source_filename = "/home/carl/AnghaBench/git/negotiator/extr_default.c_mark_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.negotiation_state = type { i32 }
%struct.commit = type { %struct.commit_list*, %struct.TYPE_2__ }
%struct.commit_list = type { %struct.commit*, %struct.commit_list* }
%struct.TYPE_2__ = type { i32 }
%struct.object = type { i32, i32 }

@COMMON = common dso_local global i32 0, align 4
@SEEN = common dso_local global i32 0, align 4
@POPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.negotiation_state*, %struct.commit*, i32, i32)* @mark_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_common(%struct.negotiation_state* %0, %struct.commit* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.negotiation_state*, align 8
  %6 = alloca %struct.commit*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.object*, align 8
  %10 = alloca %struct.commit_list*, align 8
  store %struct.negotiation_state* %0, %struct.negotiation_state** %5, align 8
  store %struct.commit* %1, %struct.commit** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.commit*, %struct.commit** %6, align 8
  %12 = icmp ne %struct.commit* %11, null
  br i1 %12, label %13, label %92

13:                                               ; preds = %4
  %14 = load %struct.commit*, %struct.commit** %6, align 8
  %15 = getelementptr inbounds %struct.commit, %struct.commit* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @COMMON, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %92, label %21

21:                                               ; preds = %13
  %22 = load %struct.commit*, %struct.commit** %6, align 8
  %23 = bitcast %struct.commit* %22 to %struct.object*
  store %struct.object* %23, %struct.object** %9, align 8
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @COMMON, align 4
  %28 = load %struct.object*, %struct.object** %9, align 8
  %29 = getelementptr inbounds %struct.object, %struct.object* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %26, %21
  %33 = load %struct.object*, %struct.object** %9, align 8
  %34 = getelementptr inbounds %struct.object, %struct.object* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @SEEN, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %32
  %40 = load %struct.negotiation_state*, %struct.negotiation_state** %5, align 8
  %41 = load %struct.commit*, %struct.commit** %6, align 8
  %42 = load i32, i32* @SEEN, align 4
  %43 = call i32 @rev_list_push(%struct.negotiation_state* %40, %struct.commit* %41, i32 %42)
  br label %91

44:                                               ; preds = %32
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %59, label %47

47:                                               ; preds = %44
  %48 = load %struct.object*, %struct.object** %9, align 8
  %49 = getelementptr inbounds %struct.object, %struct.object* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @POPPED, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %47
  %55 = load %struct.negotiation_state*, %struct.negotiation_state** %5, align 8
  %56 = getelementptr inbounds %struct.negotiation_state, %struct.negotiation_state* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %54, %47, %44
  %60 = load %struct.object*, %struct.object** %9, align 8
  %61 = getelementptr inbounds %struct.object, %struct.object* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %73, label %64

64:                                               ; preds = %59
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %64
  %68 = load %struct.commit*, %struct.commit** %6, align 8
  %69 = call i64 @parse_commit(%struct.commit* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  br label %92

72:                                               ; preds = %67
  br label %73

73:                                               ; preds = %72, %64, %59
  %74 = load %struct.commit*, %struct.commit** %6, align 8
  %75 = getelementptr inbounds %struct.commit, %struct.commit* %74, i32 0, i32 0
  %76 = load %struct.commit_list*, %struct.commit_list** %75, align 8
  store %struct.commit_list* %76, %struct.commit_list** %10, align 8
  br label %77

77:                                               ; preds = %86, %73
  %78 = load %struct.commit_list*, %struct.commit_list** %10, align 8
  %79 = icmp ne %struct.commit_list* %78, null
  br i1 %79, label %80, label %90

80:                                               ; preds = %77
  %81 = load %struct.negotiation_state*, %struct.negotiation_state** %5, align 8
  %82 = load %struct.commit_list*, %struct.commit_list** %10, align 8
  %83 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %82, i32 0, i32 0
  %84 = load %struct.commit*, %struct.commit** %83, align 8
  %85 = load i32, i32* %8, align 4
  call void @mark_common(%struct.negotiation_state* %81, %struct.commit* %84, i32 0, i32 %85)
  br label %86

86:                                               ; preds = %80
  %87 = load %struct.commit_list*, %struct.commit_list** %10, align 8
  %88 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %87, i32 0, i32 1
  %89 = load %struct.commit_list*, %struct.commit_list** %88, align 8
  store %struct.commit_list* %89, %struct.commit_list** %10, align 8
  br label %77

90:                                               ; preds = %77
  br label %91

91:                                               ; preds = %90, %39
  br label %92

92:                                               ; preds = %71, %91, %13, %4
  ret void
}

declare dso_local i32 @rev_list_push(%struct.negotiation_state*, %struct.commit*, i32) #1

declare dso_local i64 @parse_commit(%struct.commit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
