; ModuleID = '/home/carl/AnghaBench/git/refs/extr_files-backend.c_write_ref_to_lockfile.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_files-backend.c_write_ref_to_lockfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.ref_lock = type { i32, i32 }
%struct.object_id = type { i32 }
%struct.strbuf = type { i32 }
%struct.object = type { i64 }

@write_ref_to_lockfile.term = internal global i8 10, align 1
@the_repository = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"trying to write ref '%s' with nonexistent object %s\00", align 1
@OBJ_COMMIT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [52 x i8] c"trying to write non-commit object %s to branch '%s'\00", align 1
@the_hash_algo = common dso_local global %struct.TYPE_2__* null, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"couldn't write '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ref_lock*, %struct.object_id*, %struct.strbuf*)* @write_ref_to_lockfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_ref_to_lockfile(%struct.ref_lock* %0, %struct.object_id* %1, %struct.strbuf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ref_lock*, align 8
  %6 = alloca %struct.object_id*, align 8
  %7 = alloca %struct.strbuf*, align 8
  %8 = alloca %struct.object*, align 8
  %9 = alloca i32, align 4
  store %struct.ref_lock* %0, %struct.ref_lock** %5, align 8
  store %struct.object_id* %1, %struct.object_id** %6, align 8
  store %struct.strbuf* %2, %struct.strbuf** %7, align 8
  %10 = load i32, i32* @the_repository, align 4
  %11 = load %struct.object_id*, %struct.object_id** %6, align 8
  %12 = call %struct.object* @parse_object(i32 %10, %struct.object_id* %11)
  store %struct.object* %12, %struct.object** %8, align 8
  %13 = load %struct.object*, %struct.object** %8, align 8
  %14 = icmp ne %struct.object* %13, null
  br i1 %14, label %27, label %15

15:                                               ; preds = %3
  %16 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %17 = load %struct.ref_lock*, %struct.ref_lock** %5, align 8
  %18 = getelementptr inbounds %struct.ref_lock, %struct.ref_lock* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to i8*
  %22 = load %struct.object_id*, %struct.object_id** %6, align 8
  %23 = call i8* @oid_to_hex(%struct.object_id* %22)
  %24 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %16, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i8* %21, i8* %23)
  %25 = load %struct.ref_lock*, %struct.ref_lock** %5, align 8
  %26 = call i32 @unlock_ref(%struct.ref_lock* %25)
  store i32 -1, i32* %4, align 4
  br label %80

27:                                               ; preds = %3
  %28 = load %struct.object*, %struct.object** %8, align 8
  %29 = getelementptr inbounds %struct.object, %struct.object* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @OBJ_COMMIT, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %49

33:                                               ; preds = %27
  %34 = load %struct.ref_lock*, %struct.ref_lock** %5, align 8
  %35 = getelementptr inbounds %struct.ref_lock, %struct.ref_lock* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @is_branch(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %33
  %40 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %41 = load %struct.object_id*, %struct.object_id** %6, align 8
  %42 = call i8* @oid_to_hex(%struct.object_id* %41)
  %43 = load %struct.ref_lock*, %struct.ref_lock** %5, align 8
  %44 = getelementptr inbounds %struct.ref_lock, %struct.ref_lock* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %40, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i8* %42, i32 %45)
  %47 = load %struct.ref_lock*, %struct.ref_lock** %5, align 8
  %48 = call i32 @unlock_ref(%struct.ref_lock* %47)
  store i32 -1, i32* %4, align 4
  br label %80

49:                                               ; preds = %33, %27
  %50 = load %struct.ref_lock*, %struct.ref_lock** %5, align 8
  %51 = getelementptr inbounds %struct.ref_lock, %struct.ref_lock* %50, i32 0, i32 0
  %52 = call i32 @get_lock_file_fd(i32* %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.object_id*, %struct.object_id** %6, align 8
  %55 = call i8* @oid_to_hex(%struct.object_id* %54)
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @write_in_full(i32 %53, i8* %55, i32 %58)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %69, label %61

61:                                               ; preds = %49
  %62 = load i32, i32* %9, align 4
  %63 = call i64 @write_in_full(i32 %62, i8* @write_ref_to_lockfile.term, i32 1)
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = load %struct.ref_lock*, %struct.ref_lock** %5, align 8
  %67 = call i64 @close_ref_gently(%struct.ref_lock* %66)
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %65, %61, %49
  %70 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %71 = load %struct.ref_lock*, %struct.ref_lock** %5, align 8
  %72 = getelementptr inbounds %struct.ref_lock, %struct.ref_lock* %71, i32 0, i32 0
  %73 = call i32 @get_lock_file_path(i32* %72)
  %74 = sext i32 %73 to i64
  %75 = inttoptr i64 %74 to i8*
  %76 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %70, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %75)
  %77 = load %struct.ref_lock*, %struct.ref_lock** %5, align 8
  %78 = call i32 @unlock_ref(%struct.ref_lock* %77)
  store i32 -1, i32* %4, align 4
  br label %80

79:                                               ; preds = %65
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %79, %69, %39, %15
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local %struct.object* @parse_object(i32, %struct.object_id*) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*, ...) #1

declare dso_local i8* @oid_to_hex(%struct.object_id*) #1

declare dso_local i32 @unlock_ref(%struct.ref_lock*) #1

declare dso_local i64 @is_branch(i32) #1

declare dso_local i32 @get_lock_file_fd(i32*) #1

declare dso_local i64 @write_in_full(i32, i8*, i32) #1

declare dso_local i64 @close_ref_gently(%struct.ref_lock*) #1

declare dso_local i32 @get_lock_file_path(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
