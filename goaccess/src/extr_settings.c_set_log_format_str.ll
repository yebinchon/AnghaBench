; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_settings.c_set_log_format_str.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_settings.c_set_log_format_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [40 x i8] c"Unable to set log format from enum: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_log_format_str(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i8* null, i8** %3, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 @get_log_format_item_enum(i8* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 0), align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 0), align 8
  %11 = call i32 @free(i8* %10)
  br label %12

12:                                               ; preds = %9, %1
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i8*, i8** %2, align 8
  %17 = call i8* @unescape_str(i8* %16)
  store i8* %17, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 0), align 8
  br label %34

18:                                               ; preds = %12
  %19 = load i32, i32* %4, align 4
  %20 = call i8* @get_selected_format_str(i32 %19)
  store i8* %20, i8** %3, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i8*, i8** %2, align 8
  %24 = call i32 @LOG_DEBUG(i8* %23)
  br label %34

25:                                               ; preds = %18
  %26 = load i8*, i8** %3, align 8
  %27 = call i8* @unescape_str(i8* %26)
  store i8* %27, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 0), align 8
  %28 = load i8*, i8** %2, align 8
  %29 = call i32 @set_time_format_str(i8* %28)
  %30 = load i8*, i8** %2, align 8
  %31 = call i32 @set_date_format_str(i8* %30)
  %32 = load i8*, i8** %3, align 8
  %33 = call i32 @free(i8* %32)
  br label %34

34:                                               ; preds = %25, %22, %15
  ret void
}

declare dso_local i32 @get_log_format_item_enum(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @unescape_str(i8*) #1

declare dso_local i8* @get_selected_format_str(i32) #1

declare dso_local i32 @LOG_DEBUG(i8*) #1

declare dso_local i32 @set_time_format_str(i8*) #1

declare dso_local i32 @set_date_format_str(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
