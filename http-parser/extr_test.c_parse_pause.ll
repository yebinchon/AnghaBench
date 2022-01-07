; ModuleID = '/home/carl/AnghaBench/http-parser/extr_test.c_parse_pause.c'
source_filename = "/home/carl/AnghaBench/http-parser/extr_test.c_parse_pause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@settings_pause = common dso_local global i32 0, align 4
@currently_parsing_eof = common dso_local global i32 0, align 4
@current_pause_parser = common dso_local global i32* null, align 8
@parser = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @parse_pause(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i32, i32* @settings_pause, align 4
  store i32 %7, i32* %6, align 4
  %8 = load i64, i64* %4, align 8
  %9 = icmp eq i64 %8, 0
  %10 = zext i1 %9 to i32
  store i32 %10, i32* @currently_parsing_eof, align 4
  store i32* %6, i32** @current_pause_parser, align 8
  %11 = load i32*, i32** @current_pause_parser, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = load i64, i64* %4, align 8
  %14 = call i64 @http_parser_execute(i32* @parser, i32* %11, i8* %12, i64 %13)
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  ret i64 %15
}

declare dso_local i64 @http_parser_execute(i32*, i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
