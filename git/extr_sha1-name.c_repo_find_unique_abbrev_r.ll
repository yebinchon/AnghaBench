; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-name.c_repo_find_unique_abbrev_r.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-name.c_repo_find_unique_abbrev_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.object_id = type { i32 }
%struct.disambiguate_state = type { i32, i8*, i32 }
%struct.min_abbrev_data = type { i32, i32, i8*, %struct.object_id*, %struct.repository* }

@FALLBACK_DEFAULT_ABBREV = common dso_local global i32 0, align 4
@repo_extend_abbrev_len = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @repo_find_unique_abbrev_r(%struct.repository* %0, i8* %1, %struct.object_id* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.repository*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.object_id*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.disambiguate_state, align 8
  %11 = alloca %struct.min_abbrev_data, align 8
  %12 = alloca %struct.object_id, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.repository* %0, %struct.repository** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.object_id* %2, %struct.object_id** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.repository*, %struct.repository** %6, align 8
  %16 = getelementptr inbounds %struct.repository, %struct.repository* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %4
  %23 = load %struct.repository*, %struct.repository** %6, align 8
  %24 = call i64 @repo_approximate_object_count(%struct.repository* %23)
  store i64 %24, i64* %14, align 8
  %25 = load i64, i64* %14, align 8
  %26 = call i32 @msb(i64 %25)
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @DIV_ROUND_UP(i32 %28, i32 2)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @FALLBACK_DEFAULT_ABBREV, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %22
  %34 = load i32, i32* @FALLBACK_DEFAULT_ABBREV, align 4
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %33, %22
  br label %36

36:                                               ; preds = %35, %4
  %37 = load i8*, i8** %7, align 8
  %38 = load %struct.object_id*, %struct.object_id** %8, align 8
  %39 = call i32 @oid_to_hex_r(i8* %37, %struct.object_id* %38)
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %46, label %43

43:                                               ; preds = %36
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %43, %36
  %47 = load i32, i32* %13, align 4
  store i32 %47, i32* %5, align 4
  br label %82

48:                                               ; preds = %43
  %49 = load %struct.repository*, %struct.repository** %6, align 8
  %50 = getelementptr inbounds %struct.min_abbrev_data, %struct.min_abbrev_data* %11, i32 0, i32 4
  store %struct.repository* %49, %struct.repository** %50, align 8
  %51 = load i32, i32* %9, align 4
  %52 = getelementptr inbounds %struct.min_abbrev_data, %struct.min_abbrev_data* %11, i32 0, i32 0
  store i32 %51, i32* %52, align 8
  %53 = load i32, i32* %9, align 4
  %54 = getelementptr inbounds %struct.min_abbrev_data, %struct.min_abbrev_data* %11, i32 0, i32 1
  store i32 %53, i32* %54, align 4
  %55 = load i8*, i8** %7, align 8
  %56 = getelementptr inbounds %struct.min_abbrev_data, %struct.min_abbrev_data* %11, i32 0, i32 2
  store i8* %55, i8** %56, align 8
  %57 = load %struct.object_id*, %struct.object_id** %8, align 8
  %58 = getelementptr inbounds %struct.min_abbrev_data, %struct.min_abbrev_data* %11, i32 0, i32 3
  store %struct.object_id* %57, %struct.object_id** %58, align 8
  %59 = call i32 @find_abbrev_len_packed(%struct.min_abbrev_data* %11)
  %60 = load %struct.repository*, %struct.repository** %6, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = getelementptr inbounds %struct.min_abbrev_data, %struct.min_abbrev_data* %11, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @init_object_disambiguation(%struct.repository* %60, i8* %61, i32 %63, %struct.disambiguate_state* %10)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %48
  store i32 -1, i32* %5, align 4
  br label %82

67:                                               ; preds = %48
  %68 = load i32, i32* @repo_extend_abbrev_len, align 4
  %69 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %10, i32 0, i32 2
  store i32 %68, i32* %69, align 8
  %70 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %10, i32 0, i32 0
  store i32 1, i32* %70, align 8
  %71 = bitcast %struct.min_abbrev_data* %11 to i8*
  %72 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %10, i32 0, i32 1
  store i8* %71, i8** %72, align 8
  %73 = call i32 @find_short_object_filename(%struct.disambiguate_state* %10)
  %74 = call i32 @finish_object_disambiguation(%struct.disambiguate_state* %10, %struct.object_id* %12)
  %75 = load i8*, i8** %7, align 8
  %76 = getelementptr inbounds %struct.min_abbrev_data, %struct.min_abbrev_data* %11, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %75, i64 %78
  store i8 0, i8* %79, align 1
  %80 = getelementptr inbounds %struct.min_abbrev_data, %struct.min_abbrev_data* %11, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %67, %66, %46
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i64 @repo_approximate_object_count(%struct.repository*) #1

declare dso_local i32 @msb(i64) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @oid_to_hex_r(i8*, %struct.object_id*) #1

declare dso_local i32 @find_abbrev_len_packed(%struct.min_abbrev_data*) #1

declare dso_local i64 @init_object_disambiguation(%struct.repository*, i8*, i32, %struct.disambiguate_state*) #1

declare dso_local i32 @find_short_object_filename(%struct.disambiguate_state*) #1

declare dso_local i32 @finish_object_disambiguation(%struct.disambiguate_state*, %struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
