; ModuleID = '/home/carl/AnghaBench/git/extr_help.c_print_cmd_by_category.c'
source_filename = "/home/carl/AnghaBench/git/extr_help.c_print_cmd_by_category.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.category_description = type { i8*, i32 }
%struct.cmdname_help = type { i64 }

@cmd_name_cmp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"\0A%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.category_description*, i32*)* @print_cmd_by_category to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_cmd_by_category(%struct.category_description* %0, i32* %1) #0 {
  %3 = alloca %struct.category_description*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.cmdname_help*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.category_description* %0, %struct.category_description** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %29, %2
  %13 = load %struct.category_description*, %struct.category_description** %3, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.category_description, %struct.category_description* %13, i64 %15
  %17 = getelementptr inbounds %struct.category_description, %struct.category_description* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %32

20:                                               ; preds = %12
  %21 = load %struct.category_description*, %struct.category_description** %3, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.category_description, %struct.category_description* %21, i64 %23
  %25 = getelementptr inbounds %struct.category_description, %struct.category_description* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %9, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %9, align 4
  br label %29

29:                                               ; preds = %20
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %7, align 4
  br label %12

32:                                               ; preds = %12
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @extract_cmds(%struct.cmdname_help** %5, i32 %33)
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %62, %32
  %36 = load %struct.cmdname_help*, %struct.cmdname_help** %5, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.cmdname_help, %struct.cmdname_help* %36, i64 %38
  %40 = getelementptr inbounds %struct.cmdname_help, %struct.cmdname_help* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %67

43:                                               ; preds = %35
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.cmdname_help*, %struct.cmdname_help** %5, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.cmdname_help, %struct.cmdname_help* %45, i64 %47
  %49 = getelementptr inbounds %struct.cmdname_help, %struct.cmdname_help* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @strlen(i64 %50)
  %52 = icmp slt i32 %44, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %43
  %54 = load %struct.cmdname_help*, %struct.cmdname_help** %5, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.cmdname_help, %struct.cmdname_help* %54, i64 %56
  %58 = getelementptr inbounds %struct.cmdname_help, %struct.cmdname_help* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @strlen(i64 %59)
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %53, %43
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %35

67:                                               ; preds = %35
  %68 = load %struct.cmdname_help*, %struct.cmdname_help** %5, align 8
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @cmd_name_cmp, align 4
  %71 = call i32 @QSORT(%struct.cmdname_help* %68, i32 %69, i32 %70)
  store i32 0, i32* %7, align 4
  br label %72

72:                                               ; preds = %100, %67
  %73 = load %struct.category_description*, %struct.category_description** %3, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.category_description, %struct.category_description* %73, i64 %75
  %77 = getelementptr inbounds %struct.category_description, %struct.category_description* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %103

80:                                               ; preds = %72
  %81 = load %struct.category_description*, %struct.category_description** %3, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.category_description, %struct.category_description* %81, i64 %83
  %85 = getelementptr inbounds %struct.category_description, %struct.category_description* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  store i32 %86, i32* %10, align 4
  %87 = load %struct.category_description*, %struct.category_description** %3, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.category_description, %struct.category_description* %87, i64 %89
  %91 = getelementptr inbounds %struct.category_description, %struct.category_description* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  store i8* %92, i8** %11, align 8
  %93 = load i8*, i8** %11, align 8
  %94 = call i8* @_(i8* %93)
  %95 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %94)
  %96 = load %struct.cmdname_help*, %struct.cmdname_help** %5, align 8
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* %6, align 4
  %99 = call i32 @print_command_list(%struct.cmdname_help* %96, i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %80
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %7, align 4
  br label %72

103:                                              ; preds = %72
  %104 = load %struct.cmdname_help*, %struct.cmdname_help** %5, align 8
  %105 = call i32 @free(%struct.cmdname_help* %104)
  %106 = load i32*, i32** %4, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load i32, i32* %6, align 4
  %110 = load i32*, i32** %4, align 8
  store i32 %109, i32* %110, align 4
  br label %111

111:                                              ; preds = %108, %103
  ret void
}

declare dso_local i32 @extract_cmds(%struct.cmdname_help**, i32) #1

declare dso_local i32 @strlen(i64) #1

declare dso_local i32 @QSORT(%struct.cmdname_help*, i32, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @print_command_list(%struct.cmdname_help*, i32, i32) #1

declare dso_local i32 @free(%struct.cmdname_help*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
