; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_output.c_print_html_body.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_output.c_print_html_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i64 }

@.str = private unnamed_addr constant [651 x i8] c"<nav class='hidden-xs hidden-sm hide'></nav><i class='spinner fa fa-circle-o-notch fa-spin fa-3x fa-fw'></i><div class='container hide'><div class='wrap-header'><div class='row row-offcanvas row-offcanvas-right'><div class='col-md-12'><div class='page-header clearfix'><div class='pull-right'><h4><span class='label label-info' style='display:%s'><span class='hidden-xs'>%s: </span><span class='last-updated'>%s</span></span></h4></div><h1><span class='hidden-xs hidden-sm'><i class='fa fa-tachometer'></i> %s</span><span class='visible-xs visible-sm'><i class='fa fa-bars nav-minibars'></i><i class='fa fa-circle nav-ws-status mini'></i></span></h1>\00", align 1
@conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"block\00", align 1
@INFO_LAST_UPDATED = common dso_local global i8* null, align 8
@T_DASH = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [128 x i8] c"<div class='report-title'>%s</div></div><div class='wrap-general'></div></div></div></div><div class='wrap-panels'></div></div>\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tpls = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @print_html_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_html_body(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 1), align 8
  %7 = icmp ne i64 %6, 0
  %8 = zext i1 %7 to i64
  %9 = select i1 %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %10 = load i8*, i8** @INFO_LAST_UPDATED, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = load i8*, i8** @T_DASH, align 8
  %13 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %5, i8* getelementptr inbounds ([651 x i8], [651 x i8]* @.str, i64 0, i64 0), i8* %9, i8* %10, i8* %11, i8* %12)
  %14 = load i32*, i32** %3, align 8
  %15 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 0), align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 0), align 8
  br label %20

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %19, %17
  %21 = phi i8* [ %18, %17 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %19 ]
  %22 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %14, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @.str.3, i64 0, i64 0), i8* %21)
  %23 = load i32*, i32** %3, align 8
  %24 = load i8*, i8** @tpls, align 8
  %25 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %24)
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
