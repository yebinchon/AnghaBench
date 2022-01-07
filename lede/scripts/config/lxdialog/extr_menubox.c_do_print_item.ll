; ModuleID = '/home/carl/AnghaBench/lede/scripts/config/lxdialog/extr_menubox.c_do_print_item.c'
source_filename = "/home/carl/AnghaBench/lede/scripts/config/lxdialog/extr_menubox.c_do_print_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@menu_width = common dso_local global i32 0, align 4
@item_x = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"YyNnMmHh\00", align 1
@dlg = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i32, i32, i32)* @do_print_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_print_item(i32* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* @menu_width, align 4
  %14 = add nsw i32 %13, 1
  %15 = call i8* @malloc(i32 %14)
  store i8* %15, i8** %12, align 8
  %16 = load i8*, i8** %12, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = load i32, i32* @menu_width, align 4
  %19 = load i32, i32* @item_x, align 4
  %20 = sub nsw i32 %18, %19
  %21 = call i32 @strncpy(i8* %16, i8* %17, i32 %20)
  %22 = load i8*, i8** %12, align 8
  %23 = load i32, i32* @menu_width, align 4
  %24 = load i32, i32* @item_x, align 4
  %25 = sub nsw i32 %23, %24
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %22, i64 %26
  store i8 0, i8* %27, align 1
  %28 = load i8*, i8** %12, align 8
  %29 = call i32 @first_alpha(i8* %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %29, i32* %11, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @dlg, i32 0, i32 4, i32 0), align 4
  %32 = call i32 @wattrset(i32* %30, i32 %31)
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @wmove(i32* %33, i32 %34, i32 0)
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @wclrtoeol(i32* %36)
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %5
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @dlg, i32 0, i32 3, i32 0), align 4
  br label %45

43:                                               ; preds = %5
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @dlg, i32 0, i32 2, i32 0), align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  %47 = call i32 @wattrset(i32* %38, i32 %46)
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @item_x, align 4
  %51 = load i8*, i8** %12, align 8
  %52 = call i32 @mvwaddstr(i32* %48, i32 %49, i32 %50, i8* %51)
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %77

55:                                               ; preds = %45
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @dlg, i32 0, i32 1, i32 0), align 4
  br label %63

61:                                               ; preds = %55
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @dlg, i32 0, i32 0, i32 0), align 4
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i32 [ %60, %59 ], [ %62, %61 ]
  %65 = call i32 @wattrset(i32* %56, i32 %64)
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @item_x, align 4
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %68, %69
  %71 = load i8*, i8** %12, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = call i32 @mvwaddch(i32* %66, i32 %67, i32 %70, i8 signext %75)
  br label %77

77:                                               ; preds = %63, %45
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %77
  %81 = load i32*, i32** %6, align 8
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @item_x, align 4
  %84 = add nsw i32 %83, 1
  %85 = call i32 @wmove(i32* %81, i32 %82, i32 %84)
  br label %86

86:                                               ; preds = %80, %77
  %87 = load i8*, i8** %12, align 8
  %88 = call i32 @free(i8* %87)
  %89 = load i32*, i32** %6, align 8
  %90 = call i32 @wrefresh(i32* %89)
  ret void
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @first_alpha(i8*, i8*) #1

declare dso_local i32 @wattrset(i32*, i32) #1

declare dso_local i32 @wmove(i32*, i32, i32) #1

declare dso_local i32 @wclrtoeol(i32*) #1

declare dso_local i32 @mvwaddstr(i32*, i32, i32, i8*) #1

declare dso_local i32 @mvwaddch(i32*, i32, i32, i8 signext) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @wrefresh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
