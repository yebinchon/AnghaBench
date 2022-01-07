; ModuleID = '/home/carl/AnghaBench/i3/src/extr_sighandler.c_sighandler_draw_dialog.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_sighandler.c_sighandler_draw_dialog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64 }

@.str = private unnamed_addr constant [8 x i8] c"#000000\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"#FFFFFF\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"#FF0000\00", align 1
@border_width = common dso_local global i32 0, align 4
@margin = common dso_local global i32 0, align 4
@message_intro = common dso_local global i32 0, align 4
@config = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@message_intro2 = common dso_local global i32 0, align 4
@backtrace_done = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"#AA0000\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"#00AA00\00", align 1
@message_option_backtrace = common dso_local global i32 0, align 4
@message_option_restart = common dso_local global i32 0, align 4
@message_option_forget = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @sighandler_draw_dialog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sighandler_draw_dialog(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %10 = call i32 @draw_util_hex_to_color(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %10, i32* %3, align 4
  %11 = call i32 @draw_util_hex_to_color(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 %11, i32* %4, align 4
  %12 = call i32 @draw_util_hex_to_color(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i32 %12, i32* %5, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @draw_util_clear_surface(i32* %14, i32 %15)
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @border_width, align 4
  %21 = load i32, i32* @border_width, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @border_width, align 4
  %27 = mul nsw i32 2, %26
  %28 = sub nsw i32 %25, %27
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* @border_width, align 4
  %34 = mul nsw i32 2, %33
  %35 = sext i32 %34 to i64
  %36 = sub nsw i64 %32, %35
  %37 = call i32 @draw_util_rectangle(i32* %18, i32 %19, i32 %20, i32 %21, i32 %28, i64 %36)
  %38 = load i32, i32* @border_width, align 4
  %39 = load i32, i32* @margin, align 4
  %40 = add nsw i32 %38, %39
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* @border_width, align 4
  %42 = load i32, i32* @margin, align 4
  %43 = add nsw i32 %41, %42
  store i32 %43, i32* %7, align 4
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = mul nsw i32 2, %48
  %50 = sub nsw i32 %47, %49
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* @message_intro, align 4
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @draw_util_text(i32 %51, i32* %53, i32 %54, i32 %55, i32 %56, i32 %57, i32 %58)
  %60 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @config, i32 0, i32 0, i32 0), align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %62, %60
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* @message_intro2, align 4
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* %3, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @draw_util_text(i32 %65, i32* %67, i32 %68, i32 %69, i32 %70, i32 %71, i32 %72)
  %74 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @config, i32 0, i32 0, i32 0), align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %76, %74
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %6, align 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  %79 = load i64, i64* @backtrace_done, align 8
  %80 = icmp slt i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  br label %87

82:                                               ; preds = %1
  %83 = load i64, i64* @backtrace_done, align 8
  %84 = icmp sgt i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %9, align 8
  br label %86

86:                                               ; preds = %85, %82
  br label %87

87:                                               ; preds = %86, %81
  %88 = load i32, i32* @message_option_backtrace, align 4
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i8*, i8** %9, align 8
  %92 = call i32 @draw_util_hex_to_color(i8* %91)
  %93 = load i32, i32* %3, align 4
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @draw_util_text(i32 %88, i32* %90, i32 %92, i32 %93, i32 %94, i32 %95, i32 %96)
  %98 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @config, i32 0, i32 0, i32 0), align 8
  %99 = load i32, i32* %6, align 4
  %100 = sext i32 %99 to i64
  %101 = add nsw i64 %100, %98
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* @message_option_restart, align 4
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* %3, align 4
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* %8, align 4
  %111 = call i32 @draw_util_text(i32 %103, i32* %105, i32 %106, i32 %107, i32 %108, i32 %109, i32 %110)
  %112 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @config, i32 0, i32 0, i32 0), align 8
  %113 = load i32, i32* %6, align 4
  %114 = sext i32 %113 to i64
  %115 = add nsw i64 %114, %112
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %6, align 4
  %117 = load i32, i32* @message_option_forget, align 4
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = load i32, i32* %4, align 4
  %121 = load i32, i32* %3, align 4
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* %8, align 4
  %125 = call i32 @draw_util_text(i32 %117, i32* %119, i32 %120, i32 %121, i32 %122, i32 %123, i32 %124)
  %126 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @config, i32 0, i32 0, i32 0), align 8
  %127 = load i32, i32* %6, align 4
  %128 = sext i32 %127 to i64
  %129 = add nsw i64 %128, %126
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %6, align 4
  ret void
}

declare dso_local i32 @draw_util_hex_to_color(i8*) #1

declare dso_local i32 @draw_util_clear_surface(i32*, i32) #1

declare dso_local i32 @draw_util_rectangle(i32*, i32, i32, i32, i32, i64) #1

declare dso_local i32 @draw_util_text(i32, i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
