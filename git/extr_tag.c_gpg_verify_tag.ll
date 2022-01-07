; ModuleID = '/home/carl/AnghaBench/git/extr_tag.c_gpg_verify_tag.c'
source_filename = "/home/carl/AnghaBench/git/extr_tag.c_gpg_verify_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }

@the_repository = common dso_local global i32 0, align 4
@OBJ_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"%s: cannot verify a non-tag object of type %s.\00", align 1
@DEFAULT_ABBREV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"%s: unable to read file.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gpg_verify_tag(%struct.object_id* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.object_id*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.object_id* %0, %struct.object_id** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @the_repository, align 4
  %13 = load %struct.object_id*, %struct.object_id** %5, align 8
  %14 = call i32 @oid_object_info(i32 %12, %struct.object_id* %13, i32* null)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @OBJ_TAG, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %32

18:                                               ; preds = %3
  %19 = load i8*, i8** %6, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i8*, i8** %6, align 8
  br label %27

23:                                               ; preds = %18
  %24 = load %struct.object_id*, %struct.object_id** %5, align 8
  %25 = load i32, i32* @DEFAULT_ABBREV, align 4
  %26 = call i8* @find_unique_abbrev(%struct.object_id* %24, i32 %25)
  br label %27

27:                                               ; preds = %23, %21
  %28 = phi i8* [ %22, %21 ], [ %26, %23 ]
  %29 = load i32, i32* %8, align 4
  %30 = call i8* @type_name(i32 %29)
  %31 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %28, i8* %30)
  store i32 %31, i32* %4, align 4
  br label %57

32:                                               ; preds = %3
  %33 = load %struct.object_id*, %struct.object_id** %5, align 8
  %34 = call i8* @read_object_file(%struct.object_id* %33, i32* %8, i64* %10)
  store i8* %34, i8** %9, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %49, label %37

37:                                               ; preds = %32
  %38 = load i8*, i8** %6, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i8*, i8** %6, align 8
  br label %46

42:                                               ; preds = %37
  %43 = load %struct.object_id*, %struct.object_id** %5, align 8
  %44 = load i32, i32* @DEFAULT_ABBREV, align 4
  %45 = call i8* @find_unique_abbrev(%struct.object_id* %43, i32 %44)
  br label %46

46:                                               ; preds = %42, %40
  %47 = phi i8* [ %41, %40 ], [ %45, %42 ]
  %48 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %47)
  store i32 %48, i32* %4, align 4
  br label %57

49:                                               ; preds = %32
  %50 = load i8*, i8** %9, align 8
  %51 = load i64, i64* %10, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @run_gpg_verify(i8* %50, i64 %51, i32 %52)
  store i32 %53, i32* %11, align 4
  %54 = load i8*, i8** %9, align 8
  %55 = call i32 @free(i8* %54)
  %56 = load i32, i32* %11, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %49, %46, %27
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @oid_object_info(i32, %struct.object_id*, i32*) #1

declare dso_local i32 @error(i8*, i8*, ...) #1

declare dso_local i8* @find_unique_abbrev(%struct.object_id*, i32) #1

declare dso_local i8* @type_name(i32) #1

declare dso_local i8* @read_object_file(%struct.object_id*, i32*, i64*) #1

declare dso_local i32 @run_gpg_verify(i8*, i64, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
