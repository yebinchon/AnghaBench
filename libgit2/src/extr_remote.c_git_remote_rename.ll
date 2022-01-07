; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_remote.c_git_remote_rename.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_remote.c_git_remote_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_8__ = type { i8**, i32 }

@GIT_VECTOR_INIT = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_remote_rename(%struct.TYPE_8__* %0, i32* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = bitcast %struct.TYPE_7__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 bitcast (%struct.TYPE_7__* @GIT_VECTOR_INIT to i8*), i64 16, i1 false)
  store i32* null, i32** %12, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %15 = icmp ne %struct.TYPE_8__* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %4
  %17 = load i32*, i32** %7, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load i8*, i8** %8, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i8*, i8** %9, align 8
  %24 = icmp ne i8* %23, null
  br label %25

25:                                               ; preds = %22, %19, %16, %4
  %26 = phi i1 [ false, %19 ], [ false, %16 ], [ false, %4 ], [ %24, %22 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load i32*, i32** %7, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @git_remote_lookup(i32** %12, i32* %29, i8* %30)
  store i32 %31, i32* %10, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %5, align 4
  br label %92

35:                                               ; preds = %25
  %36 = load i8*, i8** %9, align 8
  %37 = call i32 @ensure_remote_name_is_valid(i8* %36)
  store i32 %37, i32* %10, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %83

40:                                               ; preds = %35
  %41 = load i32*, i32** %7, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = call i32 @ensure_remote_doesnot_exist(i32* %41, i8* %42)
  store i32 %43, i32* %10, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %83

46:                                               ; preds = %40
  %47 = load i32*, i32** %7, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = call i32 @rename_remote_config_section(i32* %47, i8* %48, i8* %49)
  store i32 %50, i32* %10, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %83

53:                                               ; preds = %46
  %54 = load i32*, i32** %7, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = call i32 @update_branch_remote_config_entry(i32* %54, i8* %55, i8* %56)
  store i32 %57, i32* %10, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %83

60:                                               ; preds = %53
  %61 = load i32*, i32** %7, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = call i32 @rename_remote_references(i32* %61, i8* %62, i8* %63)
  store i32 %64, i32* %10, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  br label %83

67:                                               ; preds = %60
  %68 = load i32*, i32** %12, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = call i32 @rename_fetch_refspecs(%struct.TYPE_7__* %11, i32* %68, i8* %69)
  store i32 %70, i32* %10, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %83

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = inttoptr i64 %79 to i8**
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  store i8** %80, i8*** %82, align 8
  br label %83

83:                                               ; preds = %73, %72, %66, %59, %52, %45, %39
  %84 = load i32, i32* %10, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = call i32 @git_vector_free(%struct.TYPE_7__* %11)
  br label %88

88:                                               ; preds = %86, %83
  %89 = load i32*, i32** %12, align 8
  %90 = call i32 @git_remote_free(i32* %89)
  %91 = load i32, i32* %10, align 4
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %88, %33
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @git_remote_lookup(i32**, i32*, i8*) #2

declare dso_local i32 @ensure_remote_name_is_valid(i8*) #2

declare dso_local i32 @ensure_remote_doesnot_exist(i32*, i8*) #2

declare dso_local i32 @rename_remote_config_section(i32*, i8*, i8*) #2

declare dso_local i32 @update_branch_remote_config_entry(i32*, i8*, i8*) #2

declare dso_local i32 @rename_remote_references(i32*, i8*, i8*) #2

declare dso_local i32 @rename_fetch_refspecs(%struct.TYPE_7__*, i32*, i8*) #2

declare dso_local i32 @git_vector_free(%struct.TYPE_7__*) #2

declare dso_local i32 @git_remote_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
