; ModuleID = '/home/carl/AnghaBench/git/extr_packfile.c_report_pack_garbage.c'
source_filename = "/home/carl/AnghaBench/git/extr_packfile.c_report_pack_garbage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@PACKDIR_FILE_GARBAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"pack\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"idx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.string_list*)* @report_pack_garbage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @report_pack_garbage(%struct.string_list* %0) #0 {
  %2 = alloca %struct.string_list*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.string_list* %0, %struct.string_list** %2, align 8
  store i32 -1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = load %struct.string_list*, %struct.string_list** %2, align 8
  %10 = call i32 @string_list_sort(%struct.string_list* %9)
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %90, %1
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.string_list*, %struct.string_list** %2, align 8
  %14 = getelementptr inbounds %struct.string_list, %struct.string_list* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %93

17:                                               ; preds = %11
  %18 = load %struct.string_list*, %struct.string_list** %2, align 8
  %19 = getelementptr inbounds %struct.string_list, %struct.string_list* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %7, align 8
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, -1
  br i1 %27, label %28, label %47

28:                                               ; preds = %17
  %29 = load i8*, i8** %7, align 8
  %30 = load %struct.string_list*, %struct.string_list** %2, align 8
  %31 = getelementptr inbounds %struct.string_list, %struct.string_list* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i64 @strncmp(i8* %29, i8* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %28
  %42 = load %struct.string_list*, %struct.string_list** %2, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @report_helper(%struct.string_list* %42, i32 %43, i32 %44, i32 %45)
  store i32 -1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %47

47:                                               ; preds = %41, %28, %17
  %48 = load i32, i32* %4, align 4
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %68

50:                                               ; preds = %47
  %51 = load i8*, i8** %7, align 8
  %52 = call i8* @strrchr(i8* %51, i8 signext 46)
  store i8* %52, i8** %8, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* @PACKDIR_FILE_GARBAGE, align 4
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 @report_garbage(i32 %56, i8* %57)
  br label %90

59:                                               ; preds = %50
  %60 = load i8*, i8** %8, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = ptrtoint i8* %60 to i64
  %63 = ptrtoint i8* %61 to i64
  %64 = sub i64 %62, %63
  %65 = add nsw i64 %64, 1
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %3, align 4
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %59, %47
  %69 = load i8*, i8** %7, align 8
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  %73 = call i32 @strcmp(i8* %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %68
  %76 = load i32, i32* %6, align 4
  %77 = or i32 %76, 1
  store i32 %77, i32* %6, align 4
  br label %89

78:                                               ; preds = %68
  %79 = load i8*, i8** %7, align 8
  %80 = load i32, i32* %4, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  %83 = call i32 @strcmp(i8* %82, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %78
  %86 = load i32, i32* %6, align 4
  %87 = or i32 %86, 2
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %85, %78
  br label %89

89:                                               ; preds = %88, %75
  br label %90

90:                                               ; preds = %89, %55
  %91 = load i32, i32* %3, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %3, align 4
  br label %11

93:                                               ; preds = %11
  %94 = load %struct.string_list*, %struct.string_list** %2, align 8
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* %5, align 4
  %97 = load %struct.string_list*, %struct.string_list** %2, align 8
  %98 = getelementptr inbounds %struct.string_list, %struct.string_list* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @report_helper(%struct.string_list* %94, i32 %95, i32 %96, i32 %99)
  ret void
}

declare dso_local i32 @string_list_sort(%struct.string_list*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @report_helper(%struct.string_list*, i32, i32, i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @report_garbage(i32, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
