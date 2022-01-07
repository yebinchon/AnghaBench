; ModuleID = '/home/carl/AnghaBench/git/extr_refs.c_parse_hide_refs_config.c'
source_filename = "/home/carl/AnghaBench/git/extr_refs.c_parse_hide_refs_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"transfer.hiderefs\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"hiderefs\00", align 1
@hide_refs = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_hide_refs_config(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @strcmp(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @parse_config_key(i8* %15, i8* %16, i32* null, i32* null, i8** %8)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %65, label %19

19:                                               ; preds = %14
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %65, label %23

23:                                               ; preds = %19, %3
  %24 = load i8*, i8** %6, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @config_error_nonbool(i8* %27)
  store i32 %28, i32* %4, align 4
  br label %66

29:                                               ; preds = %23
  %30 = load i8*, i8** %6, align 8
  %31 = call i8* @xstrdup(i8* %30)
  store i8* %31, i8** %9, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = call i32 @strlen(i8* %32)
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %48, %29
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = load i8*, i8** %9, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %38, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 47
  br label %46

46:                                               ; preds = %37, %34
  %47 = phi i1 [ false, %34 ], [ %45, %37 ]
  br i1 %47, label %48, label %54

48:                                               ; preds = %46
  %49 = load i8*, i8** %9, align 8
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %49, i64 %52
  store i8 0, i8* %53, align 1
  br label %34

54:                                               ; preds = %46
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hide_refs, align 8
  %56 = icmp ne %struct.TYPE_4__* %55, null
  br i1 %56, label %61, label %57

57:                                               ; preds = %54
  %58 = call %struct.TYPE_4__* @xcalloc(i32 1, i32 4)
  store %struct.TYPE_4__* %58, %struct.TYPE_4__** @hide_refs, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hide_refs, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  store i32 1, i32* %60, align 4
  br label %61

61:                                               ; preds = %57, %54
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hide_refs, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = call i32 @string_list_append(%struct.TYPE_4__* %62, i8* %63)
  br label %65

65:                                               ; preds = %61, %19, %14
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %65, %26
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @parse_config_key(i8*, i8*, i32*, i32*, i8**) #1

declare dso_local i32 @config_error_nonbool(i8*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.TYPE_4__* @xcalloc(i32, i32) #1

declare dso_local i32 @string_list_append(%struct.TYPE_4__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
