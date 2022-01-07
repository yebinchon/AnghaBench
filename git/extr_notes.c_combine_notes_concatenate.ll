; ModuleID = '/home/carl/AnghaBench/git/extr_notes.c_combine_notes_concatenate.c'
source_filename = "/home/carl/AnghaBench/git/extr_notes.c_combine_notes_concatenate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type opaque

@OBJ_BLOB = common dso_local global i32 0, align 4
@blob_type = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @combine_notes_concatenate(%struct.object_id* %0, %struct.object_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.object_id*, align 8
  %5 = alloca %struct.object_id*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.object_id* %0, %struct.object_id** %4, align 8
  store %struct.object_id* %1, %struct.object_id** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  %15 = load %struct.object_id*, %struct.object_id** %5, align 8
  %16 = call i32 @is_null_oid(%struct.object_id* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load %struct.object_id*, %struct.object_id** %5, align 8
  %20 = call i8* @read_object_file(%struct.object_id* %19, i32* %13, i64* %10)
  store i8* %20, i8** %7, align 8
  br label %21

21:                                               ; preds = %18, %2
  %22 = load i8*, i8** %7, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load i64, i64* %10, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* @OBJ_BLOB, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27, %24, %21
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 @free(i8* %32)
  store i32 0, i32* %3, align 4
  br label %108

34:                                               ; preds = %27
  %35 = load %struct.object_id*, %struct.object_id** %4, align 8
  %36 = call i32 @is_null_oid(%struct.object_id* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = load %struct.object_id*, %struct.object_id** %4, align 8
  %40 = call i8* @read_object_file(%struct.object_id* %39, i32* %12, i64* %9)
  store i8* %40, i8** %6, align 8
  br label %41

41:                                               ; preds = %38, %34
  %42 = load i8*, i8** %6, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %41
  %45 = load i64, i64* %9, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* @OBJ_BLOB, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %47, %44, %41
  %52 = load i8*, i8** %6, align 8
  %53 = call i32 @free(i8* %52)
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 @free(i8* %54)
  %56 = load %struct.object_id*, %struct.object_id** %4, align 8
  %57 = load %struct.object_id*, %struct.object_id** %5, align 8
  %58 = call i32 @oidcpy(%struct.object_id* %56, %struct.object_id* %57)
  store i32 0, i32* %3, align 4
  br label %108

59:                                               ; preds = %47
  %60 = load i8*, i8** %6, align 8
  %61 = load i64, i64* %9, align 8
  %62 = sub i64 %61, 1
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 10
  br i1 %66, label %67, label %70

67:                                               ; preds = %59
  %68 = load i64, i64* %9, align 8
  %69 = add i64 %68, -1
  store i64 %69, i64* %9, align 8
  br label %70

70:                                               ; preds = %67, %59
  %71 = load i64, i64* %9, align 8
  %72 = add i64 %71, 2
  %73 = load i64, i64* %10, align 8
  %74 = add i64 %72, %73
  store i64 %74, i64* %11, align 8
  %75 = load i64, i64* %11, align 8
  %76 = call i64 @xmalloc(i64 %75)
  %77 = inttoptr i64 %76 to i8*
  store i8* %77, i8** %8, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = load i8*, i8** %6, align 8
  %80 = load i64, i64* %9, align 8
  %81 = call i32 @memcpy(i8* %78, i8* %79, i64 %80)
  %82 = load i8*, i8** %8, align 8
  %83 = load i64, i64* %9, align 8
  %84 = getelementptr inbounds i8, i8* %82, i64 %83
  store i8 10, i8* %84, align 1
  %85 = load i8*, i8** %8, align 8
  %86 = load i64, i64* %9, align 8
  %87 = add i64 %86, 1
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  store i8 10, i8* %88, align 1
  %89 = load i8*, i8** %8, align 8
  %90 = load i64, i64* %9, align 8
  %91 = getelementptr inbounds i8, i8* %89, i64 %90
  %92 = getelementptr inbounds i8, i8* %91, i64 2
  %93 = load i8*, i8** %7, align 8
  %94 = load i64, i64* %10, align 8
  %95 = call i32 @memcpy(i8* %92, i8* %93, i64 %94)
  %96 = load i8*, i8** %6, align 8
  %97 = call i32 @free(i8* %96)
  %98 = load i8*, i8** %7, align 8
  %99 = call i32 @free(i8* %98)
  %100 = load i8*, i8** %8, align 8
  %101 = load i64, i64* %11, align 8
  %102 = load i32, i32* @blob_type, align 4
  %103 = load %struct.object_id*, %struct.object_id** %4, align 8
  %104 = call i32 @write_object_file(i8* %100, i64 %101, i32 %102, %struct.object_id* %103)
  store i32 %104, i32* %14, align 4
  %105 = load i8*, i8** %8, align 8
  %106 = call i32 @free(i8* %105)
  %107 = load i32, i32* %14, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %70, %51, %31
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @is_null_oid(%struct.object_id*) #1

declare dso_local i8* @read_object_file(%struct.object_id*, i32*, i64*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @oidcpy(%struct.object_id*, %struct.object_id*) #1

declare dso_local i64 @xmalloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @write_object_file(i8*, i64, i32, %struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
