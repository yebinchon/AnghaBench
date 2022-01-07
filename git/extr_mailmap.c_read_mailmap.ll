; ModuleID = '/home/carl/AnghaBench/git/extr_mailmap.c_read_mailmap.c'
source_filename = "/home/carl/AnghaBench/git/extr_mailmap.c_read_mailmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.string_list = type { i32, i32 }

@namemap_cmp = common dso_local global i32 0, align 4
@git_mailmap_blob = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"HEAD:.mailmap\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c".mailmap\00", align 1
@startup_info = common dso_local global %struct.TYPE_2__* null, align 8
@git_mailmap_file = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_mailmap(%struct.string_list* %0, i8** %1) #0 {
  %3 = alloca %struct.string_list*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store %struct.string_list* %0, %struct.string_list** %3, align 8
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.string_list*, %struct.string_list** %3, align 8
  %7 = getelementptr inbounds %struct.string_list, %struct.string_list* %6, i32 0, i32 0
  store i32 1, i32* %7, align 4
  %8 = load i32, i32* @namemap_cmp, align 4
  %9 = load %struct.string_list*, %struct.string_list** %3, align 8
  %10 = getelementptr inbounds %struct.string_list, %struct.string_list* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 4
  %11 = load i8*, i8** @git_mailmap_blob, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = call i64 (...) @is_bare_repository()
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** @git_mailmap_blob, align 8
  br label %17

17:                                               ; preds = %16, %13, %2
  %18 = load %struct.string_list*, %struct.string_list** %3, align 8
  %19 = load i8**, i8*** %4, align 8
  %20 = call i32 @read_mailmap_file(%struct.string_list* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %19)
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @startup_info, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %17
  %28 = load %struct.string_list*, %struct.string_list** %3, align 8
  %29 = load i8*, i8** @git_mailmap_blob, align 8
  %30 = load i8**, i8*** %4, align 8
  %31 = call i32 @read_mailmap_blob(%struct.string_list* %28, i8* %29, i8** %30)
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %27, %17
  %35 = load %struct.string_list*, %struct.string_list** %3, align 8
  %36 = load i8*, i8** @git_mailmap_file, align 8
  %37 = load i8**, i8*** %4, align 8
  %38 = call i32 @read_mailmap_file(%struct.string_list* %35, i8* %36, i8** %37)
  %39 = load i32, i32* %5, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i64 @is_bare_repository(...) #1

declare dso_local i32 @read_mailmap_file(%struct.string_list*, i8*, i8**) #1

declare dso_local i32 @read_mailmap_blob(%struct.string_list*, i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
