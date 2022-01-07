; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-name.c_repo_peel_to_type.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-name.c_repo_peel_to_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.object = type { i32, i32, i32 }
%struct.tag = type { %struct.object* }
%struct.commit = type { i32 }
%struct.TYPE_2__ = type { %struct.object }

@OBJ_ANY = common dso_local global i32 0, align 4
@OBJ_TAG = common dso_local global i64 0, align 8
@OBJ_COMMIT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [63 x i8] c"%.*s: expected %s type, but the object dereferences to %s type\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.object* @repo_peel_to_type(%struct.repository* %0, i8* %1, i32 %2, %struct.object* %3, i32 %4) #0 {
  %6 = alloca %struct.object*, align 8
  %7 = alloca %struct.repository*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.object*, align 8
  %11 = alloca i32, align 4
  store %struct.repository* %0, %struct.repository** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.object* %3, %struct.object** %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = load i8*, i8** %8, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %5
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @strlen(i8* %18)
  store i32 %19, i32* %9, align 4
  br label %20

20:                                               ; preds = %17, %14, %5
  br label %21

21:                                               ; preds = %20, %88
  %22 = load %struct.object*, %struct.object** %10, align 8
  %23 = icmp ne %struct.object* %22, null
  br i1 %23, label %24, label %35

24:                                               ; preds = %21
  %25 = load %struct.object*, %struct.object** %10, align 8
  %26 = getelementptr inbounds %struct.object, %struct.object* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %24
  %30 = load %struct.repository*, %struct.repository** %7, align 8
  %31 = load %struct.object*, %struct.object** %10, align 8
  %32 = getelementptr inbounds %struct.object, %struct.object* %31, i32 0, i32 1
  %33 = call i32 @parse_object(%struct.repository* %30, i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %29, %21
  store %struct.object* null, %struct.object** %6, align 8
  br label %89

36:                                               ; preds = %29, %24
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* @OBJ_ANY, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %46, label %40

40:                                               ; preds = %36
  %41 = load %struct.object*, %struct.object** %10, align 8
  %42 = getelementptr inbounds %struct.object, %struct.object* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %40, %36
  %47 = load %struct.object*, %struct.object** %10, align 8
  store %struct.object* %47, %struct.object** %6, align 8
  br label %89

48:                                               ; preds = %40
  %49 = load %struct.object*, %struct.object** %10, align 8
  %50 = getelementptr inbounds %struct.object, %struct.object* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* @OBJ_TAG, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %48
  %56 = load %struct.object*, %struct.object** %10, align 8
  %57 = bitcast %struct.object* %56 to %struct.tag*
  %58 = getelementptr inbounds %struct.tag, %struct.tag* %57, i32 0, i32 0
  %59 = load %struct.object*, %struct.object** %58, align 8
  store %struct.object* %59, %struct.object** %10, align 8
  br label %88

60:                                               ; preds = %48
  %61 = load %struct.object*, %struct.object** %10, align 8
  %62 = getelementptr inbounds %struct.object, %struct.object* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* @OBJ_COMMIT, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %60
  %68 = load %struct.repository*, %struct.repository** %7, align 8
  %69 = load %struct.object*, %struct.object** %10, align 8
  %70 = bitcast %struct.object* %69 to %struct.commit*
  %71 = call %struct.TYPE_2__* @repo_get_commit_tree(%struct.repository* %68, %struct.commit* %70)
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store %struct.object* %72, %struct.object** %10, align 8
  br label %87

73:                                               ; preds = %60
  %74 = load i8*, i8** %8, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %86

76:                                               ; preds = %73
  %77 = load i32, i32* %9, align 4
  %78 = load i8*, i8** %8, align 8
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @type_name(i32 %79)
  %81 = load %struct.object*, %struct.object** %10, align 8
  %82 = getelementptr inbounds %struct.object, %struct.object* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @type_name(i32 %83)
  %85 = call i32 @error(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %77, i8* %78, i32 %80, i32 %84)
  br label %86

86:                                               ; preds = %76, %73
  store %struct.object* null, %struct.object** %6, align 8
  br label %89

87:                                               ; preds = %67
  br label %88

88:                                               ; preds = %87, %55
  br label %21

89:                                               ; preds = %86, %46, %35
  %90 = load %struct.object*, %struct.object** %6, align 8
  ret %struct.object* %90
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @parse_object(%struct.repository*, i32*) #1

declare dso_local %struct.TYPE_2__* @repo_get_commit_tree(%struct.repository*, %struct.commit*) #1

declare dso_local i32 @error(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @type_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
