; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_output.c_print_html_title.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_output.c_print_html_title.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@HTML_REPORT_TITLE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"<title>\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"</title>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @print_html_title to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_html_title(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 0), align 8
  %5 = icmp ne i8* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 0), align 8
  br label %10

8:                                                ; preds = %1
  %9 = load i8*, i8** @HTML_REPORT_TITLE, align 8
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i8* [ %7, %6 ], [ %9, %8 ]
  store i8* %11, i8** %3, align 8
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @fprintf(i32* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %14 = load i32*, i32** %2, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @clean_output(i32* %14, i8* %15)
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @fprintf(i32* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*) #1

declare dso_local i32 @clean_output(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
