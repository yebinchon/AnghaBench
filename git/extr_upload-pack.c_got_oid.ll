; ModuleID = '/home/carl/AnghaBench/git/extr_upload-pack.c_got_oid.c'
source_filename = "/home/carl/AnghaBench/git/extr_upload-pack.c_got_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.object_array = type { i32 }
%struct.object = type { i64, i32 }
%struct.commit_list = type { %struct.TYPE_4__*, %struct.commit_list* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.commit = type { i64, %struct.commit_list* }

@.str = private unnamed_addr constant [48 x i8] c"git upload-pack: expected SHA1 object, got '%s'\00", align 1
@the_repository = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"oops (%s)\00", align 1
@OBJ_COMMIT = common dso_local global i64 0, align 8
@THEY_HAVE = common dso_local global i32 0, align 4
@oldest_have = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.object_id*, %struct.object_array*)* @got_oid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @got_oid(i8* %0, %struct.object_id* %1, %struct.object_array* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.object_id*, align 8
  %7 = alloca %struct.object_array*, align 8
  %8 = alloca %struct.object*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.commit_list*, align 8
  %11 = alloca %struct.commit*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.object_id* %1, %struct.object_id** %6, align 8
  store %struct.object_array* %2, %struct.object_array** %7, align 8
  store i32 0, i32* %9, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = load %struct.object_id*, %struct.object_id** %6, align 8
  %14 = call i64 @get_oid_hex(i8* %12, %struct.object_id* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @die(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* %17)
  br label %19

19:                                               ; preds = %16, %3
  %20 = load %struct.object_id*, %struct.object_id** %6, align 8
  %21 = call i32 @has_object_file(%struct.object_id* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  store i32 -1, i32* %4, align 4
  br label %98

24:                                               ; preds = %19
  %25 = load i32, i32* @the_repository, align 4
  %26 = load %struct.object_id*, %struct.object_id** %6, align 8
  %27 = call %struct.object* @parse_object(i32 %25, %struct.object_id* %26)
  store %struct.object* %27, %struct.object** %8, align 8
  %28 = load %struct.object*, %struct.object** %8, align 8
  %29 = icmp ne %struct.object* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %24
  %31 = load %struct.object_id*, %struct.object_id** %6, align 8
  %32 = call i8* @oid_to_hex(%struct.object_id* %31)
  %33 = call i32 @die(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  br label %34

34:                                               ; preds = %30, %24
  %35 = load %struct.object*, %struct.object** %8, align 8
  %36 = getelementptr inbounds %struct.object, %struct.object* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @OBJ_COMMIT, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %90

40:                                               ; preds = %34
  %41 = load %struct.object*, %struct.object** %8, align 8
  %42 = bitcast %struct.object* %41 to %struct.commit*
  store %struct.commit* %42, %struct.commit** %11, align 8
  %43 = load %struct.object*, %struct.object** %8, align 8
  %44 = getelementptr inbounds %struct.object, %struct.object* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @THEY_HAVE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  store i32 1, i32* %9, align 4
  br label %56

50:                                               ; preds = %40
  %51 = load i32, i32* @THEY_HAVE, align 4
  %52 = load %struct.object*, %struct.object** %8, align 8
  %53 = getelementptr inbounds %struct.object, %struct.object* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 8
  br label %56

56:                                               ; preds = %50, %49
  %57 = load i64, i64* @oldest_have, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = load %struct.commit*, %struct.commit** %11, align 8
  %61 = getelementptr inbounds %struct.commit, %struct.commit* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @oldest_have, align 8
  %64 = icmp slt i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %59, %56
  %66 = load %struct.commit*, %struct.commit** %11, align 8
  %67 = getelementptr inbounds %struct.commit, %struct.commit* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* @oldest_have, align 8
  br label %69

69:                                               ; preds = %65, %59
  %70 = load %struct.commit*, %struct.commit** %11, align 8
  %71 = getelementptr inbounds %struct.commit, %struct.commit* %70, i32 0, i32 1
  %72 = load %struct.commit_list*, %struct.commit_list** %71, align 8
  store %struct.commit_list* %72, %struct.commit_list** %10, align 8
  br label %73

73:                                               ; preds = %85, %69
  %74 = load %struct.commit_list*, %struct.commit_list** %10, align 8
  %75 = icmp ne %struct.commit_list* %74, null
  br i1 %75, label %76, label %89

76:                                               ; preds = %73
  %77 = load i32, i32* @THEY_HAVE, align 4
  %78 = load %struct.commit_list*, %struct.commit_list** %10, align 8
  %79 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %77
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %76
  %86 = load %struct.commit_list*, %struct.commit_list** %10, align 8
  %87 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %86, i32 0, i32 1
  %88 = load %struct.commit_list*, %struct.commit_list** %87, align 8
  store %struct.commit_list* %88, %struct.commit_list** %10, align 8
  br label %73

89:                                               ; preds = %73
  br label %90

90:                                               ; preds = %89, %34
  %91 = load i32, i32* %9, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %90
  %94 = load %struct.object*, %struct.object** %8, align 8
  %95 = load %struct.object_array*, %struct.object_array** %7, align 8
  %96 = call i32 @add_object_array(%struct.object* %94, i32* null, %struct.object_array* %95)
  store i32 1, i32* %4, align 4
  br label %98

97:                                               ; preds = %90
  store i32 0, i32* %4, align 4
  br label %98

98:                                               ; preds = %97, %93, %23
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i64 @get_oid_hex(i8*, %struct.object_id*) #1

declare dso_local i32 @die(i8*, i8*) #1

declare dso_local i32 @has_object_file(%struct.object_id*) #1

declare dso_local %struct.object* @parse_object(i32, %struct.object_id*) #1

declare dso_local i8* @oid_to_hex(%struct.object_id*) #1

declare dso_local i32 @add_object_array(%struct.object*, i32*, %struct.object_array*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
