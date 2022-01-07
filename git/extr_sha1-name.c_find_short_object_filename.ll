; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-name.c_find_short_object_filename.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-name.c_find_short_object_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disambiguate_state = type { %struct.TYPE_7__, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.object_directory* }
%struct.object_directory = type { %struct.object_directory* }
%struct.oid_array = type { i32, %struct.object_id* }
%struct.object_id = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.disambiguate_state*)* @find_short_object_filename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_short_object_filename(%struct.disambiguate_state* %0) #0 {
  %2 = alloca %struct.disambiguate_state*, align 8
  %3 = alloca %struct.object_directory*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.oid_array*, align 8
  %6 = alloca %struct.object_id*, align 8
  store %struct.disambiguate_state* %0, %struct.disambiguate_state** %2, align 8
  %7 = load %struct.disambiguate_state*, %struct.disambiguate_state** %2, align 8
  %8 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %7, i32 0, i32 3
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.object_directory*, %struct.object_directory** %12, align 8
  store %struct.object_directory* %13, %struct.object_directory** %3, align 8
  br label %14

14:                                               ; preds = %80, %1
  %15 = load %struct.object_directory*, %struct.object_directory** %3, align 8
  %16 = icmp ne %struct.object_directory* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = load %struct.disambiguate_state*, %struct.disambiguate_state** %2, align 8
  %19 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  br label %23

23:                                               ; preds = %17, %14
  %24 = phi i1 [ false, %14 ], [ %22, %17 ]
  br i1 %24, label %25, label %84

25:                                               ; preds = %23
  %26 = load %struct.object_directory*, %struct.object_directory** %3, align 8
  %27 = load %struct.disambiguate_state*, %struct.disambiguate_state** %2, align 8
  %28 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %27, i32 0, i32 0
  %29 = call %struct.oid_array* @odb_loose_cache(%struct.object_directory* %26, %struct.TYPE_7__* %28)
  store %struct.oid_array* %29, %struct.oid_array** %5, align 8
  %30 = load %struct.oid_array*, %struct.oid_array** %5, align 8
  %31 = load %struct.disambiguate_state*, %struct.disambiguate_state** %2, align 8
  %32 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %31, i32 0, i32 0
  %33 = call i32 @oid_array_lookup(%struct.oid_array* %30, %struct.TYPE_7__* %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %25
  %37 = load i32, i32* %4, align 4
  %38 = sub nsw i32 -1, %37
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %36, %25
  br label %40

40:                                               ; preds = %73, %39
  %41 = load %struct.disambiguate_state*, %struct.disambiguate_state** %2, align 8
  %42 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.oid_array*, %struct.oid_array** %5, align 8
  %48 = getelementptr inbounds %struct.oid_array, %struct.oid_array* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %46, %49
  br label %51

51:                                               ; preds = %45, %40
  %52 = phi i1 [ false, %40 ], [ %50, %45 ]
  br i1 %52, label %53, label %79

53:                                               ; preds = %51
  %54 = load %struct.oid_array*, %struct.oid_array** %5, align 8
  %55 = getelementptr inbounds %struct.oid_array, %struct.oid_array* %54, i32 0, i32 1
  %56 = load %struct.object_id*, %struct.object_id** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.object_id, %struct.object_id* %56, i64 %58
  store %struct.object_id* %59, %struct.object_id** %6, align 8
  %60 = load %struct.disambiguate_state*, %struct.disambiguate_state** %2, align 8
  %61 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.disambiguate_state*, %struct.disambiguate_state** %2, align 8
  %64 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.object_id*, %struct.object_id** %6, align 8
  %68 = getelementptr inbounds %struct.object_id, %struct.object_id* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @match_sha(i32 %62, i32 %66, i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %53
  br label %79

73:                                               ; preds = %53
  %74 = load %struct.disambiguate_state*, %struct.disambiguate_state** %2, align 8
  %75 = load %struct.object_id*, %struct.object_id** %6, align 8
  %76 = call i32 @update_candidates(%struct.disambiguate_state* %74, %struct.object_id* %75)
  %77 = load i32, i32* %4, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %4, align 4
  br label %40

79:                                               ; preds = %72, %51
  br label %80

80:                                               ; preds = %79
  %81 = load %struct.object_directory*, %struct.object_directory** %3, align 8
  %82 = getelementptr inbounds %struct.object_directory, %struct.object_directory* %81, i32 0, i32 0
  %83 = load %struct.object_directory*, %struct.object_directory** %82, align 8
  store %struct.object_directory* %83, %struct.object_directory** %3, align 8
  br label %14

84:                                               ; preds = %23
  ret void
}

declare dso_local %struct.oid_array* @odb_loose_cache(%struct.object_directory*, %struct.TYPE_7__*) #1

declare dso_local i32 @oid_array_lookup(%struct.oid_array*, %struct.TYPE_7__*) #1

declare dso_local i32 @match_sha(i32, i32, i32) #1

declare dso_local i32 @update_candidates(%struct.disambiguate_state*, %struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
