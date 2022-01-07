; ModuleID = '/home/carl/AnghaBench/git/extr_revision.c_get_reference.c'
source_filename = "/home/carl/AnghaBench/git/extr_revision.c_get_reference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object = type { i32 }
%struct.rev_info = type { i64, i64, i32 }
%struct.object_id = type { i32 }
%struct.commit = type { i32 }

@OBJ_COMMIT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"bad object %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.object* (%struct.rev_info*, i8*, %struct.object_id*, i32)* @get_reference to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.object* @get_reference(%struct.rev_info* %0, i8* %1, %struct.object_id* %2, i32 %3) #0 {
  %5 = alloca %struct.object*, align 8
  %6 = alloca %struct.rev_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.object_id*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.object*, align 8
  %11 = alloca %struct.commit*, align 8
  store %struct.rev_info* %0, %struct.rev_info** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.object_id* %2, %struct.object_id** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %13 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.object_id*, %struct.object_id** %8, align 8
  %16 = call i64 @oid_object_info(i32 %14, %struct.object_id* %15, i32* null)
  %17 = load i64, i64* @OBJ_COMMIT, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %36

19:                                               ; preds = %4
  %20 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %21 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.object_id*, %struct.object_id** %8, align 8
  %24 = call %struct.commit* @lookup_commit(i32 %22, %struct.object_id* %23)
  store %struct.commit* %24, %struct.commit** %11, align 8
  %25 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %26 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.commit*, %struct.commit** %11, align 8
  %29 = call i32 @repo_parse_commit(i32 %27, %struct.commit* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %19
  %32 = load %struct.commit*, %struct.commit** %11, align 8
  %33 = bitcast %struct.commit* %32 to %struct.object*
  store %struct.object* %33, %struct.object** %10, align 8
  br label %35

34:                                               ; preds = %19
  store %struct.object* null, %struct.object** %10, align 8
  br label %35

35:                                               ; preds = %34, %31
  br label %42

36:                                               ; preds = %4
  %37 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %38 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.object_id*, %struct.object_id** %8, align 8
  %41 = call %struct.object* @parse_object(i32 %39, %struct.object_id* %40)
  store %struct.object* %41, %struct.object** %10, align 8
  br label %42

42:                                               ; preds = %36, %35
  %43 = load %struct.object*, %struct.object** %10, align 8
  %44 = icmp ne %struct.object* %43, null
  br i1 %44, label %65, label %45

45:                                               ; preds = %42
  %46 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %47 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load %struct.object*, %struct.object** %10, align 8
  store %struct.object* %51, %struct.object** %5, align 8
  br label %72

52:                                               ; preds = %45
  %53 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %54 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.object_id*, %struct.object_id** %8, align 8
  %59 = call i64 @is_promisor_object(%struct.object_id* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  store %struct.object* null, %struct.object** %5, align 8
  br label %72

62:                                               ; preds = %57, %52
  %63 = load i8*, i8** %7, align 8
  %64 = call i32 @die(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %63)
  br label %65

65:                                               ; preds = %62, %42
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.object*, %struct.object** %10, align 8
  %68 = getelementptr inbounds %struct.object, %struct.object* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  %71 = load %struct.object*, %struct.object** %10, align 8
  store %struct.object* %71, %struct.object** %5, align 8
  br label %72

72:                                               ; preds = %65, %61, %50
  %73 = load %struct.object*, %struct.object** %5, align 8
  ret %struct.object* %73
}

declare dso_local i64 @oid_object_info(i32, %struct.object_id*, i32*) #1

declare dso_local %struct.commit* @lookup_commit(i32, %struct.object_id*) #1

declare dso_local i32 @repo_parse_commit(i32, %struct.commit*) #1

declare dso_local %struct.object* @parse_object(i32, %struct.object_id*) #1

declare dso_local i64 @is_promisor_object(%struct.object_id*) #1

declare dso_local i32 @die(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
