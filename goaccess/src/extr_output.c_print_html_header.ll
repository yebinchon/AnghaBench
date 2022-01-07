; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_output.c_print_html_header.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_output.c_print_html_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [315 x i8] c"<!DOCTYPE html><html lang='%s'><head><meta charset='UTF-8'><meta name='referrer' content='no-referrer'><meta http-equiv='X-UA-Compatible' content='IE=edge'><meta name='google' content='notranslate'><meta name='viewport' content='width=device-width, initial-scale=1'><meta name='robots' content='noindex, nofollow'>\00", align 1
@DOC_LANG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [497 x i8] c"<link rel='icon' href='data:image/x-icon;base64,AAABAAEAEBAQAAEABAAoAQAAFgAAACgAAAAQAAAAIAAAAAEABAAAAAAAgAAAAAAAAAAAAAAAEAAAAAAAAADGxsYAWFhYABwcHABfAP8A/9dfAADXrwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIiIiIiIiIiIjMlUkQgAiIiIiIiIiIiIiIzJVJEIAAAIiIiIiIiIiIiMyVSRCAAIiIiIiIiIiIiIRERERERERERERERERERERIiIiIiIiIiIgACVVUiIiIiIiIiIiIiIiIAAlVVIiIiIiIiIiIiIiIhEREREREREREREREREREREAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA' type='image/x-icon' />\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"<style>%s</style>\00", align 1
@fa_css = common dso_local global i8* null, align 8
@bootstrap_css = common dso_local global i8* null, align 8
@app_css = common dso_local global i8* null, align 8
@conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"<link rel='stylesheet' href='%s'>\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"</head><body>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @print_html_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_html_header(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = load i32, i32* @DOC_LANG, align 4
  %5 = call i8* @_(i32 %4)
  %6 = call i32 (i32*, i8*, ...) @fprintf(i32* %3, i8* getelementptr inbounds ([315 x i8], [315 x i8]* @.str, i64 0, i64 0), i8* %5)
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 (i32*, i8*, ...) @fprintf(i32* %7, i8* getelementptr inbounds ([497 x i8], [497 x i8]* @.str.1, i64 0, i64 0))
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @print_html_title(i32* %9)
  %11 = load i32*, i32** %2, align 8
  %12 = load i8*, i8** @fa_css, align 8
  %13 = call i32 (i32*, i8*, ...) @fprintf(i32* %11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %12)
  %14 = load i32*, i32** %2, align 8
  %15 = load i8*, i8** @bootstrap_css, align 8
  %16 = call i32 (i32*, i8*, ...) @fprintf(i32* %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %15)
  %17 = load i32*, i32** %2, align 8
  %18 = load i8*, i8** @app_css, align 8
  %19 = call i32 (i32*, i8*, ...) @fprintf(i32* %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %18)
  %20 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 0), align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load i32*, i32** %2, align 8
  %24 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 0), align 8
  %25 = call i32 (i32*, i8*, ...) @fprintf(i32* %23, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %24)
  br label %26

26:                                               ; preds = %22, %1
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 (i32*, i8*, ...) @fprintf(i32* %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i8* @_(i32) #1

declare dso_local i32 @print_html_title(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
