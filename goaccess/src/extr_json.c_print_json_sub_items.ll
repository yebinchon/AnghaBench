; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_json.c_print_json_sub_items.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_json.c_print_json_sub_items.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_7__* }

@conf = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@.str = private unnamed_addr constant [24 x i8] c",%.*s%.*s\22items\22: [%.*s\00", align 1
@nlines = common dso_local global i32 0, align 4
@NL = common dso_local global i32 0, align 4
@TAB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_8__*, i32, i32, i32)* @print_json_sub_items to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_json_sub_items(i32* %0, %struct.TYPE_8__* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  br label %85

23:                                               ; preds = %5
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @conf, i32 0, i32 0), align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load i32, i32* %10, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %15, align 4
  %29 = load i32, i32* %15, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %16, align 4
  br label %31

31:                                               ; preds = %26, %23
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %33 = icmp eq %struct.TYPE_6__* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  br label %85

35:                                               ; preds = %31
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* @nlines, align 4
  %38 = load i32, i32* @NL, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @TAB, align 4
  %41 = load i32, i32* @nlines, align 4
  %42 = load i32, i32* @NL, align 4
  %43 = call i32 @pjson(i32* %36, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38, i32 %39, i32 %40, i32 %41, i32 %42)
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  store %struct.TYPE_7__* %46, %struct.TYPE_7__** %12, align 8
  br label %47

47:                                               ; preds = %75, %35
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %49 = icmp ne %struct.TYPE_7__* %48, null
  br i1 %49, label %50, label %81

50:                                               ; preds = %47
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @set_data_metrics(i32 %53, i32** %11, i32 %54)
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* %15, align 4
  %58 = call i32 @popen_obj(i32* %56, i32 %57)
  %59 = load i32*, i32** %6, align 8
  %60 = load i32*, i32** %11, align 8
  %61 = load i32, i32* %16, align 4
  %62 = call i32 @print_json_block(i32* %59, i32* %60, i32 %61)
  %63 = load i32*, i32** %6, align 8
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* %14, align 4
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sub nsw i32 %68, 1
  %70 = icmp eq i32 %65, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @pclose_obj(i32* %63, i32 %64, i32 %71)
  %73 = load i32*, i32** %11, align 8
  %74 = call i32 @free(i32* %73)
  br label %75

75:                                               ; preds = %50
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  store %struct.TYPE_7__* %78, %struct.TYPE_7__** %12, align 8
  %79 = load i32, i32* %14, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %14, align 4
  br label %47

81:                                               ; preds = %47
  %82 = load i32*, i32** %6, align 8
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @pclose_arr(i32* %82, i32 %83, i32 1)
  br label %85

85:                                               ; preds = %81, %34, %22
  ret void
}

declare dso_local i32 @pjson(i32*, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @set_data_metrics(i32, i32**, i32) #1

declare dso_local i32 @popen_obj(i32*, i32) #1

declare dso_local i32 @print_json_block(i32*, i32*, i32) #1

declare dso_local i32 @pclose_obj(i32*, i32, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @pclose_arr(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
