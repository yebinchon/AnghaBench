; ModuleID = '/home/carl/AnghaBench/git/extr_help.c_list_cmds_by_category.c'
source_filename = "/home/carl/AnghaBench/git/extr_help.c_list_cmds_by_category.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdname_help = type { i32, i32 }
%struct.string_list = type { i32 }

@command_list = common dso_local global %struct.cmdname_help* null, align 8
@category_names = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [38 x i8] c"unsupported command listing type '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @list_cmds_by_category(%struct.string_list* %0, i8* %1) #0 {
  %3 = alloca %struct.string_list*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cmdname_help*, align 8
  store %struct.string_list* %0, %struct.string_list** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.cmdname_help*, %struct.cmdname_help** @command_list, align 8
  %10 = call i32 @ARRAY_SIZE(%struct.cmdname_help* %9)
  store i32 %10, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %33, %2
  %12 = load i64*, i64** @category_names, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i64, i64* %12, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %11
  %19 = load i8*, i8** %4, align 8
  %20 = load i64*, i64** @category_names, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @strcmp(i8* %19, i64 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %18
  %28 = load i32, i32* %5, align 4
  %29 = zext i32 %28 to i64
  %30 = shl i64 1, %29
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %7, align 4
  br label %36

32:                                               ; preds = %18
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %11

36:                                               ; preds = %27, %11
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %36
  %40 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 @die(i32 %40, i8* %41)
  br label %43

43:                                               ; preds = %39, %36
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %70, %43
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %73

48:                                               ; preds = %44
  %49 = load %struct.cmdname_help*, %struct.cmdname_help** @command_list, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.cmdname_help, %struct.cmdname_help* %49, i64 %51
  store %struct.cmdname_help* %52, %struct.cmdname_help** %8, align 8
  %53 = load %struct.cmdname_help*, %struct.cmdname_help** %8, align 8
  %54 = getelementptr inbounds %struct.cmdname_help, %struct.cmdname_help* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %7, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %48
  br label %70

60:                                               ; preds = %48
  %61 = load %struct.string_list*, %struct.string_list** %3, align 8
  %62 = load %struct.cmdname_help*, %struct.cmdname_help** %8, align 8
  %63 = getelementptr inbounds %struct.cmdname_help, %struct.cmdname_help* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.cmdname_help*, %struct.cmdname_help** %8, align 8
  %66 = getelementptr inbounds %struct.cmdname_help, %struct.cmdname_help* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @drop_prefix(i32 %64, i32 %67)
  %69 = call i32 @string_list_append(%struct.string_list* %61, i32 %68)
  br label %70

70:                                               ; preds = %60, %59
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %5, align 4
  br label %44

73:                                               ; preds = %44
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.cmdname_help*) #1

declare dso_local i32 @strcmp(i8*, i64) #1

declare dso_local i32 @die(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @string_list_append(%struct.string_list*, i32) #1

declare dso_local i32 @drop_prefix(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
