; ModuleID = '/home/carl/AnghaBench/jq/src/extr_execute.c_frame_push.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_execute.c_frame_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame = type { %union.frame_entry*, %struct.TYPE_2__*, i32 }
%union.frame_entry = type { i32 }
%struct.jq_state = type { i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.closure = type { %struct.TYPE_2__*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.frame* (%struct.jq_state*, %struct.TYPE_2__*, i32, i32*, i32)* @frame_push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.frame* @frame_push(%struct.jq_state* %0, %struct.TYPE_2__* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.closure, align 8
  %7 = alloca %struct.jq_state*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.frame*, align 8
  %12 = alloca %union.frame_entry*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = bitcast %struct.closure* %6 to { %struct.TYPE_2__*, i32 }*
  %16 = getelementptr inbounds { %struct.TYPE_2__*, i32 }, { %struct.TYPE_2__*, i32 }* %15, i32 0, i32 0
  store %struct.TYPE_2__* %1, %struct.TYPE_2__** %16, align 8
  %17 = getelementptr inbounds { %struct.TYPE_2__*, i32 }, { %struct.TYPE_2__*, i32 }* %15, i32 0, i32 1
  store i32 %2, i32* %17, align 8
  store %struct.jq_state* %0, %struct.jq_state** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 %4, i32* %9, align 4
  %18 = load %struct.jq_state*, %struct.jq_state** %7, align 8
  %19 = getelementptr inbounds %struct.jq_state, %struct.jq_state* %18, i32 0, i32 1
  %20 = load %struct.jq_state*, %struct.jq_state** %7, align 8
  %21 = getelementptr inbounds %struct.jq_state, %struct.jq_state* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.closure, %struct.closure* %6, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = call i32 @frame_size(%struct.TYPE_2__* %24)
  %26 = call i32 @stack_push_block(i32* %19, i32 %22, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load %struct.jq_state*, %struct.jq_state** %7, align 8
  %28 = getelementptr inbounds %struct.jq_state, %struct.jq_state* %27, i32 0, i32 1
  %29 = load i32, i32* %10, align 4
  %30 = call %struct.frame* @stack_block(i32* %28, i32 %29)
  store %struct.frame* %30, %struct.frame** %11, align 8
  %31 = getelementptr inbounds %struct.closure, %struct.closure* %6, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load %struct.frame*, %struct.frame** %11, align 8
  %34 = getelementptr inbounds %struct.frame, %struct.frame* %33, i32 0, i32 1
  store %struct.TYPE_2__* %32, %struct.TYPE_2__** %34, align 8
  %35 = getelementptr inbounds %struct.closure, %struct.closure* %6, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.frame*, %struct.frame** %11, align 8
  %38 = getelementptr inbounds %struct.frame, %struct.frame* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.frame*, %struct.frame** %11, align 8
  %41 = getelementptr inbounds %struct.frame, %struct.frame* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %39, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load %struct.frame*, %struct.frame** %11, align 8
  %49 = getelementptr inbounds %struct.frame, %struct.frame* %48, i32 0, i32 0
  %50 = load %union.frame_entry*, %union.frame_entry** %49, align 8
  store %union.frame_entry* %50, %union.frame_entry** %12, align 8
  store i32 0, i32* %13, align 4
  br label %51

51:                                               ; preds = %67, %5
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %70

55:                                               ; preds = %51
  %56 = load %struct.jq_state*, %struct.jq_state** %7, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = load i32, i32* %13, align 4
  %59 = mul nsw i32 %58, 2
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = call i32 @make_closure(%struct.jq_state* %56, i32* %61)
  %63 = load %union.frame_entry*, %union.frame_entry** %12, align 8
  %64 = bitcast %union.frame_entry* %63 to i32*
  store i32 %62, i32* %64, align 4
  %65 = load %union.frame_entry*, %union.frame_entry** %12, align 8
  %66 = getelementptr inbounds %union.frame_entry, %union.frame_entry* %65, i32 1
  store %union.frame_entry* %66, %union.frame_entry** %12, align 8
  br label %67

67:                                               ; preds = %55
  %68 = load i32, i32* %13, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %13, align 4
  br label %51

70:                                               ; preds = %51
  store i32 0, i32* %14, align 4
  br label %71

71:                                               ; preds = %84, %70
  %72 = load i32, i32* %14, align 4
  %73 = getelementptr inbounds %struct.closure, %struct.closure* %6, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp slt i32 %72, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %71
  %79 = call i32 (...) @jv_invalid()
  %80 = load %union.frame_entry*, %union.frame_entry** %12, align 8
  %81 = bitcast %union.frame_entry* %80 to i32*
  store i32 %79, i32* %81, align 4
  %82 = load %union.frame_entry*, %union.frame_entry** %12, align 8
  %83 = getelementptr inbounds %union.frame_entry, %union.frame_entry* %82, i32 1
  store %union.frame_entry* %83, %union.frame_entry** %12, align 8
  br label %84

84:                                               ; preds = %78
  %85 = load i32, i32* %14, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %14, align 4
  br label %71

87:                                               ; preds = %71
  %88 = load i32, i32* %10, align 4
  %89 = load %struct.jq_state*, %struct.jq_state** %7, align 8
  %90 = getelementptr inbounds %struct.jq_state, %struct.jq_state* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 4
  %91 = load %struct.frame*, %struct.frame** %11, align 8
  ret %struct.frame* %91
}

declare dso_local i32 @stack_push_block(i32*, i32, i32) #1

declare dso_local i32 @frame_size(%struct.TYPE_2__*) #1

declare dso_local %struct.frame* @stack_block(i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @make_closure(%struct.jq_state*, i32*) #1

declare dso_local i32 @jv_invalid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
