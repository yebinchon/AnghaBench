; ModuleID = '/home/carl/AnghaBench/git/extr_mailmap.c_read_mailmap_blob.c'
source_filename = "/home/carl/AnghaBench/git/extr_mailmap.c_read_mailmap_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32 }
%struct.object_id = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"unable to read mailmap object at %s\00", align 1
@OBJ_BLOB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"mailmap is not a blob: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.string_list*, i8*, i8**)* @read_mailmap_blob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_mailmap_blob(%struct.string_list* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.string_list*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.object_id, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.string_list* %0, %struct.string_list** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %41

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  %17 = call i64 @get_oid(i8* %16, %struct.object_id* %8)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %41

20:                                               ; preds = %15
  %21 = call i8* @read_object_file(%struct.object_id* %8, i32* %11, i64* %10)
  store i8* %21, i8** %9, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %25)
  store i32 %26, i32* %4, align 4
  br label %41

27:                                               ; preds = %20
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @OBJ_BLOB, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  store i32 %33, i32* %4, align 4
  br label %41

34:                                               ; preds = %27
  %35 = load %struct.string_list*, %struct.string_list** %5, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = load i8**, i8*** %7, align 8
  %38 = call i32 @read_mailmap_string(%struct.string_list* %35, i8* %36, i8** %37)
  %39 = load i8*, i8** %9, align 8
  %40 = call i32 @free(i8* %39)
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %34, %31, %24, %19, %14
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i64 @get_oid(i8*, %struct.object_id*) #1

declare dso_local i8* @read_object_file(%struct.object_id*, i32*, i64*) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i32 @read_mailmap_string(%struct.string_list*, i8*, i8**) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
