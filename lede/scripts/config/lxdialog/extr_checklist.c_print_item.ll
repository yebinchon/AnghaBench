; ModuleID = '/home/carl/AnghaBench/lede/scripts/config/lxdialog/extr_checklist.c_print_item.c'
source_filename = "/home/carl/AnghaBench/lede/scripts/config/lxdialog/extr_checklist.c_print_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@list_width = common dso_local global i32 0, align 4
@item_x = common dso_local global i32 0, align 4
@dlg = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@check_x = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"(%c)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32)* @print_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_item(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @list_width, align 4
  %10 = add nsw i32 %9, 1
  %11 = call i8* @malloc(i32 %10)
  store i8* %11, i8** %8, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = call i32 (...) @item_str()
  %14 = load i32, i32* @list_width, align 4
  %15 = load i32, i32* @item_x, align 4
  %16 = sub nsw i32 %14, %15
  %17 = call i32 @strncpy(i8* %12, i32 %13, i32 %16)
  %18 = load i8*, i8** %8, align 8
  %19 = load i32, i32* @list_width, align 4
  %20 = load i32, i32* @item_x, align 4
  %21 = sub nsw i32 %19, %20
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %18, i64 %22
  store i8 0, i8* %23, align 1
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @dlg, i32 0, i32 6, i32 0), align 4
  %26 = call i32 @wattrset(i32* %24, i32 %25)
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @wmove(i32* %27, i32 %28, i64 0)
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %37, %3
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @list_width, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @waddch(i32* %35, i8 signext 32)
  br label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %7, align 4
  br label %30

40:                                               ; preds = %30
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load i64, i64* @check_x, align 8
  %44 = call i32 @wmove(i32* %41, i32 %42, i64 %43)
  %45 = load i32*, i32** %4, align 8
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @dlg, i32 0, i32 5, i32 0), align 4
  br label %52

50:                                               ; preds = %40
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @dlg, i32 0, i32 4, i32 0), align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %49, %48 ], [ %51, %50 ]
  %54 = call i32 @wattrset(i32* %45, i32 %53)
  %55 = call i64 @item_is_tag(i8 signext 58)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %52
  %58 = load i32*, i32** %4, align 8
  %59 = call i64 @item_is_tag(i8 signext 88)
  %60 = icmp ne i64 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 88, i32 32
  %63 = trunc i32 %62 to i8
  %64 = call i32 @wprintw(i32* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8 signext %63)
  br label %65

65:                                               ; preds = %57, %52
  %66 = load i32*, i32** %4, align 8
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @dlg, i32 0, i32 3, i32 0), align 4
  br label %73

71:                                               ; preds = %65
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @dlg, i32 0, i32 2, i32 0), align 4
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi i32 [ %70, %69 ], [ %72, %71 ]
  %75 = call i32 @wattrset(i32* %66, i32 %74)
  %76 = load i32*, i32** %4, align 8
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @item_x, align 4
  %79 = load i8*, i8** %8, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 0
  %81 = load i8, i8* %80, align 1
  %82 = call i32 @mvwaddch(i32* %76, i32 %77, i32 %78, i8 signext %81)
  %83 = load i32*, i32** %4, align 8
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %73
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @dlg, i32 0, i32 1, i32 0), align 4
  br label %90

88:                                               ; preds = %73
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @dlg, i32 0, i32 0, i32 0), align 4
  br label %90

90:                                               ; preds = %88, %86
  %91 = phi i32 [ %87, %86 ], [ %89, %88 ]
  %92 = call i32 @wattrset(i32* %83, i32 %91)
  %93 = load i32*, i32** %4, align 8
  %94 = load i8*, i8** %8, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 1
  %96 = call i32 @waddstr(i32* %93, i8* %95)
  %97 = load i32, i32* %6, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %90
  %100 = load i32*, i32** %4, align 8
  %101 = load i32, i32* %5, align 4
  %102 = load i64, i64* @check_x, align 8
  %103 = add nsw i64 %102, 1
  %104 = call i32 @wmove(i32* %100, i32 %101, i64 %103)
  %105 = load i32*, i32** %4, align 8
  %106 = call i32 @wrefresh(i32* %105)
  br label %107

107:                                              ; preds = %99, %90
  %108 = load i8*, i8** %8, align 8
  %109 = call i32 @free(i8* %108)
  ret void
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @strncpy(i8*, i32, i32) #1

declare dso_local i32 @item_str(...) #1

declare dso_local i32 @wattrset(i32*, i32) #1

declare dso_local i32 @wmove(i32*, i32, i64) #1

declare dso_local i32 @waddch(i32*, i8 signext) #1

declare dso_local i64 @item_is_tag(i8 signext) #1

declare dso_local i32 @wprintw(i32*, i8*, i8 signext) #1

declare dso_local i32 @mvwaddch(i32*, i32, i32, i8 signext) #1

declare dso_local i32 @waddstr(i32*, i8*) #1

declare dso_local i32 @wrefresh(i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
