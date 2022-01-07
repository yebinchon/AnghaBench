; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-file.c_pretend_object_file.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-file.c_pretend_object_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cached_object = type { i64, i32, i32, i32 }
%struct.object_id = type { i32 }

@cached_objects = common dso_local global %struct.cached_object* null, align 8
@cached_object_nr = common dso_local global i64 0, align 8
@cached_object_alloc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pretend_object_file(i8* %0, i64 %1, i32 %2, %struct.object_id* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.object_id*, align 8
  %10 = alloca %struct.cached_object*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.object_id* %3, %struct.object_id** %9, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @type_name(i32 %13)
  %15 = load %struct.object_id*, %struct.object_id** %9, align 8
  %16 = call i32 @hash_object_file(i8* %11, i64 %12, i32 %14, %struct.object_id* %15)
  %17 = load %struct.object_id*, %struct.object_id** %9, align 8
  %18 = call i64 @has_object_file(%struct.object_id* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %4
  %21 = load %struct.object_id*, %struct.object_id** %9, align 8
  %22 = call i64 @find_cached_object(%struct.object_id* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20, %4
  store i32 0, i32* %5, align 4
  br label %55

25:                                               ; preds = %20
  %26 = load %struct.cached_object*, %struct.cached_object** @cached_objects, align 8
  %27 = load i64, i64* @cached_object_nr, align 8
  %28 = add nsw i64 %27, 1
  %29 = load i32, i32* @cached_object_alloc, align 4
  %30 = call i32 @ALLOC_GROW(%struct.cached_object* %26, i64 %28, i32 %29)
  %31 = load %struct.cached_object*, %struct.cached_object** @cached_objects, align 8
  %32 = load i64, i64* @cached_object_nr, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* @cached_object_nr, align 8
  %34 = getelementptr inbounds %struct.cached_object, %struct.cached_object* %31, i64 %32
  store %struct.cached_object* %34, %struct.cached_object** %10, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load %struct.cached_object*, %struct.cached_object** %10, align 8
  %37 = getelementptr inbounds %struct.cached_object, %struct.cached_object* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.cached_object*, %struct.cached_object** %10, align 8
  %40 = getelementptr inbounds %struct.cached_object, %struct.cached_object* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @xmalloc(i64 %41)
  %43 = load %struct.cached_object*, %struct.cached_object** %10, align 8
  %44 = getelementptr inbounds %struct.cached_object, %struct.cached_object* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 8
  %45 = load %struct.cached_object*, %struct.cached_object** %10, align 8
  %46 = getelementptr inbounds %struct.cached_object, %struct.cached_object* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @memcpy(i32 %47, i8* %48, i64 %49)
  %51 = load %struct.cached_object*, %struct.cached_object** %10, align 8
  %52 = getelementptr inbounds %struct.cached_object, %struct.cached_object* %51, i32 0, i32 2
  %53 = load %struct.object_id*, %struct.object_id** %9, align 8
  %54 = call i32 @oidcpy(i32* %52, %struct.object_id* %53)
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %25, %24
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @hash_object_file(i8*, i64, i32, %struct.object_id*) #1

declare dso_local i32 @type_name(i32) #1

declare dso_local i64 @has_object_file(%struct.object_id*) #1

declare dso_local i64 @find_cached_object(%struct.object_id*) #1

declare dso_local i32 @ALLOC_GROW(%struct.cached_object*, i64, i32) #1

declare dso_local i32 @xmalloc(i64) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i32 @oidcpy(i32*, %struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
