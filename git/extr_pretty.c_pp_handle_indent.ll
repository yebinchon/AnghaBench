; ModuleID = '/home/carl/AnghaBench/git/extr_pretty.c_pp_handle_indent.c'
source_filename = "/home/carl/AnghaBench/git/extr_pretty.c_pp_handle_indent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pretty_print_context = type { i64 }
%struct.strbuf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pretty_print_context*, %struct.strbuf*, i32, i8*, i32)* @pp_handle_indent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pp_handle_indent(%struct.pretty_print_context* %0, %struct.strbuf* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.pretty_print_context*, align 8
  %7 = alloca %struct.strbuf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.pretty_print_context* %0, %struct.pretty_print_context** %6, align 8
  store %struct.strbuf* %1, %struct.strbuf** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %12 = load i32, i32* %8, align 4
  %13 = call i32 @strbuf_addchars(%struct.strbuf* %11, i8 signext 32, i32 %12)
  %14 = load %struct.pretty_print_context*, %struct.pretty_print_context** %6, align 8
  %15 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %5
  %19 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %20 = load %struct.pretty_print_context*, %struct.pretty_print_context** %6, align 8
  %21 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @strbuf_add_tabexpand(%struct.strbuf* %19, i64 %22, i8* %23, i32 %24)
  br label %31

26:                                               ; preds = %5
  %27 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @strbuf_add(%struct.strbuf* %27, i8* %28, i32 %29)
  br label %31

31:                                               ; preds = %26, %18
  ret void
}

declare dso_local i32 @strbuf_addchars(%struct.strbuf*, i8 signext, i32) #1

declare dso_local i32 @strbuf_add_tabexpand(%struct.strbuf*, i64, i8*, i32) #1

declare dso_local i32 @strbuf_add(%struct.strbuf*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
