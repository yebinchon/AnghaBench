; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-file.c_read_object_file_extended.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-file.c_read_object_file_extended.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.object_id = type { i32 }
%struct.packed_git = type { i8* }
%struct.stat = type { i32 }

@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"failed to read object %s\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"replacement %s not found for %s\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"loose object %s (stored in %s) is corrupt\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"packed object %s (stored in %s) is corrupt\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @read_object_file_extended(%struct.repository* %0, %struct.object_id* %1, i32* %2, i64* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.repository*, align 8
  %8 = alloca %struct.object_id*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.packed_git*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.stat, align 4
  %16 = alloca %struct.object_id*, align 8
  store %struct.repository* %0, %struct.repository** %7, align 8
  store %struct.object_id* %1, %struct.object_id** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %5
  %20 = load %struct.repository*, %struct.repository** %7, align 8
  %21 = load %struct.object_id*, %struct.object_id** %8, align 8
  %22 = call %struct.object_id* @lookup_replace_object(%struct.repository* %20, %struct.object_id* %21)
  br label %25

23:                                               ; preds = %5
  %24 = load %struct.object_id*, %struct.object_id** %8, align 8
  br label %25

25:                                               ; preds = %23, %19
  %26 = phi %struct.object_id* [ %22, %19 ], [ %24, %23 ]
  store %struct.object_id* %26, %struct.object_id** %16, align 8
  store i64 0, i64* @errno, align 8
  %27 = load %struct.repository*, %struct.repository** %7, align 8
  %28 = load %struct.object_id*, %struct.object_id** %16, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = load i64*, i64** %10, align 8
  %31 = call i8* @read_object(%struct.repository* %27, %struct.object_id* %28, i32* %29, i64* %30)
  store i8* %31, i8** %12, align 8
  %32 = load i8*, i8** %12, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load i8*, i8** %12, align 8
  store i8* %35, i8** %6, align 8
  br label %86

36:                                               ; preds = %25
  %37 = load i64, i64* @errno, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %36
  %40 = load i64, i64* @errno, align 8
  %41 = load i64, i64* @ENOENT, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.object_id*, %struct.object_id** %8, align 8
  %46 = call i8* @oid_to_hex(%struct.object_id* %45)
  %47 = call i32 @die_errno(i32 %44, i8* %46)
  br label %48

48:                                               ; preds = %43, %39, %36
  %49 = load %struct.object_id*, %struct.object_id** %16, align 8
  %50 = load %struct.object_id*, %struct.object_id** %8, align 8
  %51 = icmp ne %struct.object_id* %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %54 = load %struct.object_id*, %struct.object_id** %16, align 8
  %55 = call i8* @oid_to_hex(%struct.object_id* %54)
  %56 = load %struct.object_id*, %struct.object_id** %8, align 8
  %57 = call i8* @oid_to_hex(%struct.object_id* %56)
  %58 = call i32 @die(i32 %53, i8* %55, i8* %57)
  br label %59

59:                                               ; preds = %52, %48
  %60 = load %struct.repository*, %struct.repository** %7, align 8
  %61 = load %struct.object_id*, %struct.object_id** %16, align 8
  %62 = call i32 @stat_loose_object(%struct.repository* %60, %struct.object_id* %61, %struct.stat* %15, i8** %14)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %59
  %65 = call i32 @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %66 = load %struct.object_id*, %struct.object_id** %16, align 8
  %67 = call i8* @oid_to_hex(%struct.object_id* %66)
  %68 = load i8*, i8** %14, align 8
  %69 = call i32 @die(i32 %65, i8* %67, i8* %68)
  br label %70

70:                                               ; preds = %64, %59
  %71 = load %struct.repository*, %struct.repository** %7, align 8
  %72 = load %struct.object_id*, %struct.object_id** %16, align 8
  %73 = getelementptr inbounds %struct.object_id, %struct.object_id* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call %struct.packed_git* @has_packed_and_bad(%struct.repository* %71, i32 %74)
  store %struct.packed_git* %75, %struct.packed_git** %13, align 8
  %76 = icmp ne %struct.packed_git* %75, null
  br i1 %76, label %77, label %85

77:                                               ; preds = %70
  %78 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %79 = load %struct.object_id*, %struct.object_id** %16, align 8
  %80 = call i8* @oid_to_hex(%struct.object_id* %79)
  %81 = load %struct.packed_git*, %struct.packed_git** %13, align 8
  %82 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @die(i32 %78, i8* %80, i8* %83)
  br label %85

85:                                               ; preds = %77, %70
  store i8* null, i8** %6, align 8
  br label %86

86:                                               ; preds = %85, %34
  %87 = load i8*, i8** %6, align 8
  ret i8* %87
}

declare dso_local %struct.object_id* @lookup_replace_object(%struct.repository*, %struct.object_id*) #1

declare dso_local i8* @read_object(%struct.repository*, %struct.object_id*, i32*, i64*) #1

declare dso_local i32 @die_errno(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @oid_to_hex(%struct.object_id*) #1

declare dso_local i32 @die(i32, i8*, i8*) #1

declare dso_local i32 @stat_loose_object(%struct.repository*, %struct.object_id*, %struct.stat*, i8**) #1

declare dso_local %struct.packed_git* @has_packed_and_bad(%struct.repository*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
