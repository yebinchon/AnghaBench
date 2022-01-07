; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_odb.c_git_odb_exists_prefix.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_odb.c_git_odb_exists_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }

@GIT_OID_MINPREFIXLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"prefix length too short\00", align 1
@GIT_OID_HEXSZ = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"no match for id prefix\00", align 1
@GIT_ENOTFOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_odb_exists_prefix(%struct.TYPE_14__* %0, i32* %1, %struct.TYPE_14__* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_14__, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = bitcast %struct.TYPE_14__* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 4, i1 false)
  %13 = load i32*, i32** %7, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %17 = icmp ne %struct.TYPE_14__* %16, null
  br label %18

18:                                               ; preds = %15, %4
  %19 = phi i1 [ false, %4 ], [ %17, %15 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* @GIT_OID_MINPREFIXLEN, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = call i32 @git_odb__error_ambiguous(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 %26, i32* %5, align 4
  br label %77

27:                                               ; preds = %18
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* @GIT_OID_HEXSZ, align 8
  %30 = icmp uge i64 %28, %29
  br i1 %30, label %31, label %48

31:                                               ; preds = %27
  %32 = load i32*, i32** %7, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %34 = call i64 @git_odb_exists(i32* %32, %struct.TYPE_14__* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %38 = icmp ne %struct.TYPE_14__* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %42 = call i32 @git_oid_cpy(%struct.TYPE_14__* %40, %struct.TYPE_14__* %41)
  br label %43

43:                                               ; preds = %39, %36
  store i32 0, i32* %5, align 4
  br label %77

44:                                               ; preds = %31
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %46 = load i64, i64* %9, align 8
  %47 = call i32 @git_odb__error_notfound(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_14__* %45, i64 %46)
  store i32 %47, i32* %5, align 4
  br label %77

48:                                               ; preds = %27
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %50 = load i64, i64* %9, align 8
  %51 = call i32 @git_oid__cpy_prefix(%struct.TYPE_14__* %11, %struct.TYPE_14__* %49, i64 %50)
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = load i64, i64* %9, align 8
  %55 = call i32 @odb_exists_prefix_1(%struct.TYPE_14__* %52, i32* %53, %struct.TYPE_14__* %11, i64 %54, i32 0)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @GIT_ENOTFOUND, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %48
  %60 = load i32*, i32** %7, align 8
  %61 = call i32 @git_odb_refresh(i32* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %59
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = load i64, i64* %9, align 8
  %67 = call i32 @odb_exists_prefix_1(%struct.TYPE_14__* %64, i32* %65, %struct.TYPE_14__* %11, i64 %66, i32 1)
  store i32 %67, i32* %10, align 4
  br label %68

68:                                               ; preds = %63, %59, %48
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* @GIT_ENOTFOUND, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load i64, i64* %9, align 8
  %74 = call i32 @git_odb__error_notfound(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_14__* %11, i64 %73)
  store i32 %74, i32* %5, align 4
  br label %77

75:                                               ; preds = %68
  %76 = load i32, i32* %10, align 4
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %75, %72, %44, %43, %25
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @git_odb__error_ambiguous(i8*) #2

declare dso_local i64 @git_odb_exists(i32*, %struct.TYPE_14__*) #2

declare dso_local i32 @git_oid_cpy(%struct.TYPE_14__*, %struct.TYPE_14__*) #2

declare dso_local i32 @git_odb__error_notfound(i8*, %struct.TYPE_14__*, i64) #2

declare dso_local i32 @git_oid__cpy_prefix(%struct.TYPE_14__*, %struct.TYPE_14__*, i64) #2

declare dso_local i32 @odb_exists_prefix_1(%struct.TYPE_14__*, i32*, %struct.TYPE_14__*, i64, i32) #2

declare dso_local i32 @git_odb_refresh(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
