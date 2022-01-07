; ModuleID = '/home/carl/AnghaBench/git/extr_merge-recursive.c_init_merge_options.c'
source_filename = "/home/carl/AnghaBench/git/extr_merge-recursive.c_init_merge_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.merge_options = type { i32, i32, i32, i32, i64, i32, i32, %struct.repository* }
%struct.repository = type { i32 }

@MERGE_DIRECTORY_RENAMES_CONFLICT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"GIT_MERGE_VERBOSITY\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_merge_options(%struct.merge_options* %0, %struct.repository* %1) #0 {
  %3 = alloca %struct.merge_options*, align 8
  %4 = alloca %struct.repository*, align 8
  %5 = alloca i8*, align 8
  store %struct.merge_options* %0, %struct.merge_options** %3, align 8
  store %struct.repository* %1, %struct.repository** %4, align 8
  %6 = load %struct.merge_options*, %struct.merge_options** %3, align 8
  %7 = call i32 @memset(%struct.merge_options* %6, i32 0, i32 40)
  %8 = load %struct.repository*, %struct.repository** %4, align 8
  %9 = load %struct.merge_options*, %struct.merge_options** %3, align 8
  %10 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %9, i32 0, i32 7
  store %struct.repository* %8, %struct.repository** %10, align 8
  %11 = load %struct.merge_options*, %struct.merge_options** %3, align 8
  %12 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %11, i32 0, i32 0
  store i32 -1, i32* %12, align 8
  %13 = load i32, i32* @MERGE_DIRECTORY_RENAMES_CONFLICT, align 4
  %14 = load %struct.merge_options*, %struct.merge_options** %3, align 8
  %15 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %14, i32 0, i32 6
  store i32 %13, i32* %15, align 4
  %16 = load %struct.merge_options*, %struct.merge_options** %3, align 8
  %17 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %16, i32 0, i32 1
  store i32 -1, i32* %17, align 4
  %18 = load %struct.merge_options*, %struct.merge_options** %3, align 8
  %19 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %18, i32 0, i32 2
  store i32 2, i32* %19, align 8
  %20 = load %struct.merge_options*, %struct.merge_options** %3, align 8
  %21 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %20, i32 0, i32 3
  store i32 1, i32* %21, align 4
  %22 = load %struct.merge_options*, %struct.merge_options** %3, align 8
  %23 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %22, i32 0, i32 5
  %24 = call i32 @strbuf_init(i32* %23, i32 0)
  %25 = load %struct.merge_options*, %struct.merge_options** %3, align 8
  %26 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %25, i32 0, i32 4
  store i64 0, i64* %26, align 8
  %27 = load %struct.merge_options*, %struct.merge_options** %3, align 8
  %28 = call i32 @merge_recursive_config(%struct.merge_options* %27)
  %29 = call i8* @getenv(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i8* %29, i8** %5, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %2
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @strtol(i8* %33, i32* null, i32 10)
  %35 = load %struct.merge_options*, %struct.merge_options** %3, align 8
  %36 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  br label %37

37:                                               ; preds = %32, %2
  %38 = load %struct.merge_options*, %struct.merge_options** %3, align 8
  %39 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = icmp sge i32 %40, 5
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load %struct.merge_options*, %struct.merge_options** %3, align 8
  %44 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %43, i32 0, i32 3
  store i32 0, i32* %44, align 4
  br label %45

45:                                               ; preds = %42, %37
  ret void
}

declare dso_local i32 @memset(%struct.merge_options*, i32, i32) #1

declare dso_local i32 @strbuf_init(i32*, i32) #1

declare dso_local i32 @merge_recursive_config(%struct.merge_options*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @strtol(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
