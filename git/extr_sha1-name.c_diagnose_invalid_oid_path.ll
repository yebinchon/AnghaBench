; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-name.c_diagnose_invalid_oid_path.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-name.c_diagnose_invalid_oid_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.object_id = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Path '%s' exists on disk, but not in '%.*s'.\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.3 = private unnamed_addr constant [72 x i8] c"Path '%s' exists, but not '%s'.\0ADid you mean '%.*s:%s' aka '%.*s:./%s'?\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Path '%s' does not exist in '%.*s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.repository*, i8*, i8*, %struct.object_id*, i8*, i32)* @diagnose_invalid_oid_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @diagnose_invalid_oid_path(%struct.repository* %0, i8* %1, i8* %2, %struct.object_id* %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.repository*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.object_id*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.object_id, align 4
  %14 = alloca i16, align 2
  %15 = alloca i8*, align 8
  store %struct.repository* %0, %struct.repository** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.object_id* %3, %struct.object_id** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %6
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %19

19:                                               ; preds = %18, %6
  %20 = load i8*, i8** %9, align 8
  %21 = call i64 @file_exists(i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load i8*, i8** %9, align 8
  %25 = load i32, i32* %12, align 4
  %26 = load i8*, i8** %11, align 8
  %27 = call i32 (i8*, i8*, ...) @die(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* %24, i32 %25, i8* %26)
  br label %28

28:                                               ; preds = %23, %19
  %29 = load i32, i32* @errno, align 4
  %30 = call i64 @is_missing_file_error(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %56

32:                                               ; preds = %28
  %33 = load i8*, i8** %8, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = call i8* @xstrfmt(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %33, i8* %34)
  store i8* %35, i8** %15, align 8
  %36 = load %struct.repository*, %struct.repository** %7, align 8
  %37 = load %struct.object_id*, %struct.object_id** %10, align 8
  %38 = load i8*, i8** %15, align 8
  %39 = call i32 @get_tree_entry(%struct.repository* %36, %struct.object_id* %37, i8* %38, %struct.object_id* %13, i16* %14)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %32
  %42 = load i8*, i8** %15, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = load i32, i32* %12, align 4
  %45 = load i8*, i8** %11, align 8
  %46 = load i8*, i8** %15, align 8
  %47 = load i32, i32* %12, align 4
  %48 = load i8*, i8** %11, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = call i32 (i8*, i8*, ...) @die(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.3, i64 0, i64 0), i8* %42, i8* %43, i32 %44, i8* %45, i8* %46, i32 %47, i8* %48, i8* %49)
  br label %51

51:                                               ; preds = %41, %32
  %52 = load i8*, i8** %9, align 8
  %53 = load i32, i32* %12, align 4
  %54 = load i8*, i8** %11, align 8
  %55 = call i32 (i8*, i8*, ...) @die(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* %52, i32 %53, i8* %54)
  br label %56

56:                                               ; preds = %51, %28
  ret void
}

declare dso_local i64 @file_exists(i8*) #1

declare dso_local i32 @die(i8*, i8*, ...) #1

declare dso_local i64 @is_missing_file_error(i32) #1

declare dso_local i8* @xstrfmt(i8*, i8*, i8*) #1

declare dso_local i32 @get_tree_entry(%struct.repository*, %struct.object_id*, i8*, %struct.object_id*, i16*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
