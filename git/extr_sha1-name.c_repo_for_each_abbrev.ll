; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-name.c_repo_for_each_abbrev.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-name.c_repo_for_each_abbrev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oid_array = type { i32 }
%struct.repository = type { i32 }
%struct.disambiguate_state = type { i32, %struct.oid_array*, i32 }

@OID_ARRAY_INIT = common dso_local global %struct.oid_array zeroinitializer, align 4
@repo_collect_ambiguous = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @repo_for_each_abbrev(%struct.repository* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.repository*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.oid_array, align 4
  %11 = alloca %struct.disambiguate_state, align 8
  %12 = alloca i32, align 4
  store %struct.repository* %0, %struct.repository** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %13 = bitcast %struct.oid_array* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast (%struct.oid_array* @OID_ARRAY_INIT to i8*), i64 4, i1 false)
  %14 = load %struct.repository*, %struct.repository** %6, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @strlen(i8* %16)
  %18 = call i64 @init_object_disambiguation(%struct.repository* %14, i8* %15, i32 %17, %struct.disambiguate_state* %11)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %33

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %11, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = load i32, i32* @repo_collect_ambiguous, align 4
  %24 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %11, i32 0, i32 2
  store i32 %23, i32* %24, align 8
  %25 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %11, i32 0, i32 1
  store %struct.oid_array* %10, %struct.oid_array** %25, align 8
  %26 = call i32 @find_short_object_filename(%struct.disambiguate_state* %11)
  %27 = call i32 @find_short_packed_object(%struct.disambiguate_state* %11)
  %28 = load i32, i32* %8, align 4
  %29 = load i8*, i8** %9, align 8
  %30 = call i32 @oid_array_for_each_unique(%struct.oid_array* %10, i32 %28, i8* %29)
  store i32 %30, i32* %12, align 4
  %31 = call i32 @oid_array_clear(%struct.oid_array* %10)
  %32 = load i32, i32* %12, align 4
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %21, %20
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @init_object_disambiguation(%struct.repository*, i8*, i32, %struct.disambiguate_state*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @find_short_object_filename(%struct.disambiguate_state*) #2

declare dso_local i32 @find_short_packed_object(%struct.disambiguate_state*) #2

declare dso_local i32 @oid_array_for_each_unique(%struct.oid_array*, i32, i8*) #2

declare dso_local i32 @oid_array_clear(%struct.oid_array*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
