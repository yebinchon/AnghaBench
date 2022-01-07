; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_odb.c_odb_otype_fast.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_odb.c_odb_otype_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"cannot get object type\00", align 1
@GIT_PASSTHROUGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @odb_otype_fast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @odb_otype_fast(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = call i64 @git_oid_is_zero(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @GIT_ENOTFOUND, align 4
  %16 = call i32 @error_null_oid(i32 %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 %16, i32* %4, align 4
  br label %56

17:                                               ; preds = %3
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @odb_cache(i32* %18)
  %20 = load i32*, i32** %7, align 8
  %21 = call %struct.TYPE_7__* @git_cache_get_raw(i32 %19, i32* %20)
  store %struct.TYPE_7__* %21, %struct.TYPE_7__** %8, align 8
  %22 = icmp ne %struct.TYPE_7__* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %5, align 8
  store i32 %27, i32* %28, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %30 = call i32 @git_odb_object_free(%struct.TYPE_7__* %29)
  store i32 0, i32* %4, align 4
  br label %56

31:                                               ; preds = %17
  %32 = load i32*, i32** %5, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @odb_read_header_1(i64* %9, i32* %32, i32* %33, i32* %34, i32 0)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @GIT_PASSTHROUGH, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %54

39:                                               ; preds = %31
  %40 = load i32*, i32** %6, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = call i32 @odb_read_1(%struct.TYPE_7__** %8, i32* %40, i32* %41, i32 0)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %39
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %5, align 8
  store i32 %49, i32* %50, align 4
  br label %51

51:                                               ; preds = %45, %39
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %53 = call i32 @git_odb_object_free(%struct.TYPE_7__* %52)
  br label %54

54:                                               ; preds = %51, %31
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %54, %23, %14
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i64 @git_oid_is_zero(i32*) #1

declare dso_local i32 @error_null_oid(i32, i8*) #1

declare dso_local %struct.TYPE_7__* @git_cache_get_raw(i32, i32*) #1

declare dso_local i32 @odb_cache(i32*) #1

declare dso_local i32 @git_odb_object_free(%struct.TYPE_7__*) #1

declare dso_local i32 @odb_read_header_1(i64*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @odb_read_1(%struct.TYPE_7__**, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
