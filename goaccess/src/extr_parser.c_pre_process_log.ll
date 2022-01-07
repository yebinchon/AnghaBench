; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_parser.c_pre_process_log.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_parser.c_pre_process_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32* }

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@IGNORE_LEVEL_PANEL = common dso_local global i32 0, align 4
@IGNORE_LEVEL_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32)* @pre_process_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pre_process_log(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = call i64 @valid_line(i8* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %93

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @count_process(i32* %16)
  %18 = load i32*, i32** %5, align 8
  %19 = call %struct.TYPE_10__* @init_log_item(i32* %18)
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %8, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i64 @parse_format(%struct.TYPE_10__* %20, i8* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %15
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %26 = call i64 @verify_missing_fields(%struct.TYPE_10__* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24, %15
  store i32 1, i32* %9, align 4
  %29 = load i32*, i32** %5, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @count_invalid(i32* %29, i8* %30)
  br label %89

32:                                               ; preds = %24
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 5
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = call i32* @alloc_string(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 5
  store i32* %38, i32** %40, align 8
  br label %41

41:                                               ; preds = %37, %32
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  br label %89

45:                                               ; preds = %41
  %46 = load i32*, i32** %5, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %48 = call i32 @ignore_line(i32* %46, %struct.TYPE_10__* %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @IGNORE_LEVEL_PANEL, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %89

53:                                               ; preds = %45
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %55 = call i64 @is_404(%struct.TYPE_10__* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  br label %70

60:                                               ; preds = %53
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @is_static(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  store i32 1, i32* %68, align 4
  br label %69

69:                                               ; preds = %66, %60
  br label %70

70:                                               ; preds = %69, %57
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %72 = call i32 @get_uniq_visitor_key(%struct.TYPE_10__* %71)
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 4
  %75 = load i32*, i32** %5, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @inc_resp_size(i32* %75, i32 %78)
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %81 = call i32 @process_log(%struct.TYPE_10__* %80)
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* @IGNORE_LEVEL_REQ, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %70
  %86 = load i32*, i32** %5, align 8
  %87 = call i32 @count_valid(i32* %86)
  br label %88

88:                                               ; preds = %85, %70
  br label %89

89:                                               ; preds = %88, %52, %44, %28
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %91 = call i32 @free_glog(%struct.TYPE_10__* %90)
  %92 = load i32, i32* %9, align 4
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %89, %14
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i64 @valid_line(i8*) #1

declare dso_local i32 @count_process(i32*) #1

declare dso_local %struct.TYPE_10__* @init_log_item(i32*) #1

declare dso_local i64 @parse_format(%struct.TYPE_10__*, i8*) #1

declare dso_local i64 @verify_missing_fields(%struct.TYPE_10__*) #1

declare dso_local i32 @count_invalid(i32*, i8*) #1

declare dso_local i32* @alloc_string(i8*) #1

declare dso_local i32 @ignore_line(i32*, %struct.TYPE_10__*) #1

declare dso_local i64 @is_404(%struct.TYPE_10__*) #1

declare dso_local i64 @is_static(i32) #1

declare dso_local i32 @get_uniq_visitor_key(%struct.TYPE_10__*) #1

declare dso_local i32 @inc_resp_size(i32*, i32) #1

declare dso_local i32 @process_log(%struct.TYPE_10__*) #1

declare dso_local i32 @count_valid(i32*) #1

declare dso_local i32 @free_glog(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
