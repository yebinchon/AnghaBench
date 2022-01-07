; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-name.c_update_candidates.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-name.c_update_candidates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disambiguate_state = type { i32, i32, i32, i32, i64, i32, i32, i64 (i32, %struct.object_id*, i32)*, %struct.object_id, i64 }
%struct.object_id = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.disambiguate_state*, %struct.object_id*)* @update_candidates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_candidates(%struct.disambiguate_state* %0, %struct.object_id* %1) #0 {
  %3 = alloca %struct.disambiguate_state*, align 8
  %4 = alloca %struct.object_id*, align 8
  store %struct.disambiguate_state* %0, %struct.disambiguate_state** %3, align 8
  store %struct.object_id* %1, %struct.object_id** %4, align 8
  %5 = load %struct.disambiguate_state*, %struct.disambiguate_state** %3, align 8
  %6 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %5, i32 0, i32 9
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %26

9:                                                ; preds = %2
  %10 = load %struct.disambiguate_state*, %struct.disambiguate_state** %3, align 8
  %11 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %10, i32 0, i32 7
  %12 = load i64 (i32, %struct.object_id*, i32)*, i64 (i32, %struct.object_id*, i32)** %11, align 8
  %13 = load %struct.disambiguate_state*, %struct.disambiguate_state** %3, align 8
  %14 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.object_id*, %struct.object_id** %4, align 8
  %17 = load %struct.disambiguate_state*, %struct.disambiguate_state** %3, align 8
  %18 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = call i64 %12(i32 %15, %struct.object_id* %16, i32 %19)
  %21 = icmp ne i64 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 1, i32 0
  %24 = load %struct.disambiguate_state*, %struct.disambiguate_state** %3, align 8
  %25 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  br label %108

26:                                               ; preds = %2
  %27 = load %struct.disambiguate_state*, %struct.disambiguate_state** %3, align 8
  %28 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %26
  %32 = load %struct.disambiguate_state*, %struct.disambiguate_state** %3, align 8
  %33 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %32, i32 0, i32 8
  %34 = load %struct.object_id*, %struct.object_id** %4, align 8
  %35 = call i32 @oidcpy(%struct.object_id* %33, %struct.object_id* %34)
  %36 = load %struct.disambiguate_state*, %struct.disambiguate_state** %3, align 8
  %37 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %36, i32 0, i32 1
  store i32 1, i32* %37, align 4
  br label %108

38:                                               ; preds = %26
  %39 = load %struct.disambiguate_state*, %struct.disambiguate_state** %3, align 8
  %40 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %39, i32 0, i32 8
  %41 = load %struct.object_id*, %struct.object_id** %4, align 8
  %42 = call i64 @oideq(%struct.object_id* %40, %struct.object_id* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %108

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.disambiguate_state*, %struct.disambiguate_state** %3, align 8
  %48 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %47, i32 0, i32 7
  %49 = load i64 (i32, %struct.object_id*, i32)*, i64 (i32, %struct.object_id*, i32)** %48, align 8
  %50 = icmp ne i64 (i32, %struct.object_id*, i32)* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = load %struct.disambiguate_state*, %struct.disambiguate_state** %3, align 8
  %53 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %52, i32 0, i32 0
  store i32 1, i32* %53, align 8
  br label %108

54:                                               ; preds = %46
  %55 = load %struct.disambiguate_state*, %struct.disambiguate_state** %3, align 8
  %56 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %78, label %59

59:                                               ; preds = %54
  %60 = load %struct.disambiguate_state*, %struct.disambiguate_state** %3, align 8
  %61 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %60, i32 0, i32 7
  %62 = load i64 (i32, %struct.object_id*, i32)*, i64 (i32, %struct.object_id*, i32)** %61, align 8
  %63 = load %struct.disambiguate_state*, %struct.disambiguate_state** %3, align 8
  %64 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.disambiguate_state*, %struct.disambiguate_state** %3, align 8
  %67 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %66, i32 0, i32 8
  %68 = load %struct.disambiguate_state*, %struct.disambiguate_state** %3, align 8
  %69 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 8
  %71 = call i64 %62(i32 %65, %struct.object_id* %67, i32 %70)
  %72 = load %struct.disambiguate_state*, %struct.disambiguate_state** %3, align 8
  %73 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %72, i32 0, i32 4
  store i64 %71, i64* %73, align 8
  %74 = load %struct.disambiguate_state*, %struct.disambiguate_state** %3, align 8
  %75 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %74, i32 0, i32 3
  store i32 1, i32* %75, align 4
  %76 = load %struct.disambiguate_state*, %struct.disambiguate_state** %3, align 8
  %77 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %76, i32 0, i32 2
  store i32 1, i32* %77, align 8
  br label %78

78:                                               ; preds = %59, %54
  %79 = load %struct.disambiguate_state*, %struct.disambiguate_state** %3, align 8
  %80 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %79, i32 0, i32 4
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %90, label %83

83:                                               ; preds = %78
  %84 = load %struct.disambiguate_state*, %struct.disambiguate_state** %3, align 8
  %85 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %84, i32 0, i32 8
  %86 = load %struct.object_id*, %struct.object_id** %4, align 8
  %87 = call i32 @oidcpy(%struct.object_id* %85, %struct.object_id* %86)
  %88 = load %struct.disambiguate_state*, %struct.disambiguate_state** %3, align 8
  %89 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %88, i32 0, i32 2
  store i32 0, i32* %89, align 8
  br label %108

90:                                               ; preds = %78
  %91 = load %struct.disambiguate_state*, %struct.disambiguate_state** %3, align 8
  %92 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %91, i32 0, i32 7
  %93 = load i64 (i32, %struct.object_id*, i32)*, i64 (i32, %struct.object_id*, i32)** %92, align 8
  %94 = load %struct.disambiguate_state*, %struct.disambiguate_state** %3, align 8
  %95 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.object_id*, %struct.object_id** %4, align 8
  %98 = load %struct.disambiguate_state*, %struct.disambiguate_state** %3, align 8
  %99 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 8
  %101 = call i64 %93(i32 %96, %struct.object_id* %97, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %90
  %104 = load %struct.disambiguate_state*, %struct.disambiguate_state** %3, align 8
  %105 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %104, i32 0, i32 4
  store i64 0, i64* %105, align 8
  %106 = load %struct.disambiguate_state*, %struct.disambiguate_state** %3, align 8
  %107 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %106, i32 0, i32 0
  store i32 1, i32* %107, align 8
  br label %108

108:                                              ; preds = %9, %31, %44, %51, %83, %103, %90
  ret void
}

declare dso_local i32 @oidcpy(%struct.object_id*, %struct.object_id*) #1

declare dso_local i64 @oideq(%struct.object_id*, %struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
