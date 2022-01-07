; ModuleID = '/home/carl/AnghaBench/git/extr_parse-options-cb.c_parse_opt_commit.c'
source_filename = "/home/carl/AnghaBench/git/extr_parse-options-cb.c_parse_opt_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { %struct.commit** }
%struct.commit = type { i32 }
%struct.object_id = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"malformed object name %s\00", align 1
@the_repository = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"no such commit %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_opt_commit(%struct.option* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.option*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.object_id, align 4
  %9 = alloca %struct.commit*, align 8
  %10 = alloca %struct.commit**, align 8
  store %struct.option* %0, %struct.option** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.option*, %struct.option** %5, align 8
  %12 = getelementptr inbounds %struct.option, %struct.option* %11, i32 0, i32 0
  %13 = load %struct.commit**, %struct.commit*** %12, align 8
  store %struct.commit** %13, %struct.commit*** %10, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %35

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = call i64 @get_oid(i8* %18, %struct.object_id* %8)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %22)
  store i32 %23, i32* %4, align 4
  br label %35

24:                                               ; preds = %17
  %25 = load i32, i32* @the_repository, align 4
  %26 = call %struct.commit* @lookup_commit_reference(i32 %25, %struct.object_id* %8)
  store %struct.commit* %26, %struct.commit** %9, align 8
  %27 = load %struct.commit*, %struct.commit** %9, align 8
  %28 = icmp ne %struct.commit* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  store i32 %31, i32* %4, align 4
  br label %35

32:                                               ; preds = %24
  %33 = load %struct.commit*, %struct.commit** %9, align 8
  %34 = load %struct.commit**, %struct.commit*** %10, align 8
  store %struct.commit* %33, %struct.commit** %34, align 8
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %32, %29, %21, %16
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i64 @get_oid(i8*, %struct.object_id*) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local %struct.commit* @lookup_commit_reference(i32, %struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
