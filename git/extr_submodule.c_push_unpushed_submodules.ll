; ModuleID = '/home/carl/AnghaBench/git/extr_submodule.c_push_unpushed_submodules.c'
source_filename = "/home/carl/AnghaBench/git/extr_submodule.c_push_unpushed_submodules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }
%struct.repository = type { i32 }
%struct.oid_array = type { i32 }
%struct.remote = type { i64, i32 }
%struct.refspec = type { i32 }
%struct.object_id = type { i32 }

@STRING_LIST_INIT_DUP = common dso_local global %struct.string_list zeroinitializer, align 8
@REMOTE_UNCONFIGURED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Failed to resolve HEAD as a valid ref.\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Pushing submodule '%s'\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Unable to push submodule '%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @push_unpushed_submodules(%struct.repository* %0, %struct.oid_array* %1, %struct.remote* %2, %struct.refspec* %3, %struct.string_list* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.repository*, align 8
  %9 = alloca %struct.oid_array*, align 8
  %10 = alloca %struct.remote*, align 8
  %11 = alloca %struct.refspec*, align 8
  %12 = alloca %struct.string_list*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.string_list, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.object_id, align 4
  %19 = alloca i8*, align 8
  store %struct.repository* %0, %struct.repository** %8, align 8
  store %struct.oid_array* %1, %struct.oid_array** %9, align 8
  store %struct.remote* %2, %struct.remote** %10, align 8
  store %struct.refspec* %3, %struct.refspec** %11, align 8
  store %struct.string_list* %4, %struct.string_list** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 1, i32* %15, align 4
  %20 = bitcast %struct.string_list* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 bitcast (%struct.string_list* @STRING_LIST_INIT_DUP to i8*), i64 16, i1 false)
  %21 = load %struct.repository*, %struct.repository** %8, align 8
  %22 = load %struct.oid_array*, %struct.oid_array** %9, align 8
  %23 = load %struct.remote*, %struct.remote** %10, align 8
  %24 = getelementptr inbounds %struct.remote, %struct.remote* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @find_unpushed_submodules(%struct.repository* %21, %struct.oid_array* %22, i32 %25, %struct.string_list* %16)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %6
  store i32 1, i32* %7, align 4
  br label %101

29:                                               ; preds = %6
  %30 = load %struct.remote*, %struct.remote** %10, align 8
  %31 = getelementptr inbounds %struct.remote, %struct.remote* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @REMOTE_UNCONFIGURED, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %66

35:                                               ; preds = %29
  %36 = call i8* @resolve_refdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 0, %struct.object_id* %18, i32* null)
  store i8* %36, i8** %17, align 8
  %37 = load i8*, i8** %17, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %41 = call i32 @die(i32 %40)
  br label %42

42:                                               ; preds = %39, %35
  store i32 0, i32* %14, align 4
  br label %43

43:                                               ; preds = %60, %42
  %44 = load i32, i32* %14, align 4
  %45 = getelementptr inbounds %struct.string_list, %struct.string_list* %16, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %48, label %63

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.string_list, %struct.string_list* %16, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %14, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = load i8*, i8** %17, align 8
  %57 = load %struct.remote*, %struct.remote** %10, align 8
  %58 = load %struct.refspec*, %struct.refspec** %11, align 8
  %59 = call i32 @submodule_push_check(i8* %55, i8* %56, %struct.remote* %57, %struct.refspec* %58)
  br label %60

60:                                               ; preds = %48
  %61 = load i32, i32* %14, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %14, align 4
  br label %43

63:                                               ; preds = %43
  %64 = load i8*, i8** %17, align 8
  %65 = call i32 @free(i8* %64)
  br label %66

66:                                               ; preds = %63, %29
  store i32 0, i32* %14, align 4
  br label %67

67:                                               ; preds = %95, %66
  %68 = load i32, i32* %14, align 4
  %69 = getelementptr inbounds %struct.string_list, %struct.string_list* %16, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %68, %70
  br i1 %71, label %72, label %98

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.string_list, %struct.string_list* %16, i32 0, i32 1
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = load i32, i32* %14, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  store i8* %79, i8** %19, align 8
  %80 = load i32, i32* @stderr, align 4
  %81 = load i8*, i8** %19, align 8
  %82 = call i32 @fprintf(i32 %80, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %81)
  %83 = load i8*, i8** %19, align 8
  %84 = load %struct.remote*, %struct.remote** %10, align 8
  %85 = load %struct.refspec*, %struct.refspec** %11, align 8
  %86 = load %struct.string_list*, %struct.string_list** %12, align 8
  %87 = load i32, i32* %13, align 4
  %88 = call i32 @push_submodule(i8* %83, %struct.remote* %84, %struct.refspec* %85, %struct.string_list* %86, i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %72
  %91 = load i32, i32* @stderr, align 4
  %92 = load i8*, i8** %19, align 8
  %93 = call i32 @fprintf(i32 %91, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %92)
  store i32 0, i32* %15, align 4
  br label %94

94:                                               ; preds = %90, %72
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %14, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %14, align 4
  br label %67

98:                                               ; preds = %67
  %99 = call i32 @string_list_clear(%struct.string_list* %16, i32 0)
  %100 = load i32, i32* %15, align 4
  store i32 %100, i32* %7, align 4
  br label %101

101:                                              ; preds = %98, %28
  %102 = load i32, i32* %7, align 4
  ret i32 %102
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @find_unpushed_submodules(%struct.repository*, %struct.oid_array*, i32, %struct.string_list*) #2

declare dso_local i8* @resolve_refdup(i8*, i32, %struct.object_id*, i32*) #2

declare dso_local i32 @die(i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @submodule_push_check(i8*, i8*, %struct.remote*, %struct.refspec*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @fprintf(i32, i8*, i8*) #2

declare dso_local i32 @push_submodule(i8*, %struct.remote*, %struct.refspec*, %struct.string_list*, i32) #2

declare dso_local i32 @string_list_clear(%struct.string_list*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
