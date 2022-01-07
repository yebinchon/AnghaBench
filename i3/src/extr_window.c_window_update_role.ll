; ModuleID = '/home/carl/AnghaBench/i3/src/extr_window.c_window_update_role.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_window.c_window_update_role.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [25 x i8] c"WM_WINDOW_ROLE not set.\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"WM_WINDOW_ROLE changed to \22%s\22\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @window_update_role(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load i8*, i8** %4, align 8
  %10 = call i64 @xcb_get_property_value_length(i8* %9)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %8, %2
  %13 = call i32 @DLOG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @FREE(i8* %14)
  br label %36

16:                                               ; preds = %8
  %17 = load i8*, i8** %4, align 8
  %18 = call i64 @xcb_get_property_value_length(i8* %17)
  %19 = load i8*, i8** %4, align 8
  %20 = call i64 @xcb_get_property_value(i8* %19)
  %21 = inttoptr i64 %20 to i8*
  %22 = call i32 @sasprintf(i8** %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %18, i8* %21)
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @FREE(i8* %25)
  %27 = load i8*, i8** %5, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @LOG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %32)
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @free(i8* %34)
  br label %36

36:                                               ; preds = %16, %12
  ret void
}

declare dso_local i64 @xcb_get_property_value_length(i8*) #1

declare dso_local i32 @DLOG(i8*) #1

declare dso_local i32 @FREE(i8*) #1

declare dso_local i32 @sasprintf(i8**, i8*, i64, i8*) #1

declare dso_local i64 @xcb_get_property_value(i8*) #1

declare dso_local i32 @LOG(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
