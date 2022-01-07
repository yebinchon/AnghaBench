; ModuleID = '/home/carl/AnghaBench/git/extr_tag.c_parse_tag.c'
source_filename = "/home/carl/AnghaBench/git/extr_tag.c_parse_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tag = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@.str = private unnamed_addr constant [18 x i8] c"Could not read %s\00", align 1
@OBJ_TAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Object %s not a tag\00", align 1
@the_repository = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_tag(%struct.tag* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tag*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.tag* %0, %struct.tag** %3, align 8
  %8 = load %struct.tag*, %struct.tag** %3, align 8
  %9 = getelementptr inbounds %struct.tag, %struct.tag* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %48

14:                                               ; preds = %1
  %15 = load %struct.tag*, %struct.tag** %3, align 8
  %16 = getelementptr inbounds %struct.tag, %struct.tag* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i8* @read_object_file(i32* %17, i32* %4, i64* %6)
  store i8* %18, i8** %5, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %14
  %22 = load %struct.tag*, %struct.tag** %3, align 8
  %23 = getelementptr inbounds %struct.tag, %struct.tag* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @oid_to_hex(i32* %24)
  %26 = call i32 @error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %25)
  store i32 %26, i32* %2, align 4
  br label %48

27:                                               ; preds = %14
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @OBJ_TAG, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @free(i8* %32)
  %34 = load %struct.tag*, %struct.tag** %3, align 8
  %35 = getelementptr inbounds %struct.tag, %struct.tag* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = call i32 @oid_to_hex(i32* %36)
  %38 = call i32 @error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  store i32 %38, i32* %2, align 4
  br label %48

39:                                               ; preds = %27
  %40 = load i32, i32* @the_repository, align 4
  %41 = load %struct.tag*, %struct.tag** %3, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @parse_tag_buffer(i32 %40, %struct.tag* %41, i8* %42, i64 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @free(i8* %45)
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %39, %31, %21, %13
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i8* @read_object_file(i32*, i32*, i64*) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @oid_to_hex(i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @parse_tag_buffer(i32, %struct.tag*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
