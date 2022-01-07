; ModuleID = '/home/carl/AnghaBench/git/extr_json-writer.c_object_common.c'
source_filename = "/home/carl/AnghaBench/git/extr_json-writer.c_object_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.json_writer = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.json_writer*, i8*)* @object_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @object_common(%struct.json_writer* %0, i8* %1) #0 {
  %3 = alloca %struct.json_writer*, align 8
  %4 = alloca i8*, align 8
  store %struct.json_writer* %0, %struct.json_writer** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.json_writer*, %struct.json_writer** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i32 @assert_in_object(%struct.json_writer* %5, i8* %6)
  %8 = load %struct.json_writer*, %struct.json_writer** %3, align 8
  %9 = call i32 @maybe_add_comma(%struct.json_writer* %8)
  %10 = load %struct.json_writer*, %struct.json_writer** %3, align 8
  %11 = getelementptr inbounds %struct.json_writer, %struct.json_writer* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.json_writer*, %struct.json_writer** %3, align 8
  %16 = getelementptr inbounds %struct.json_writer, %struct.json_writer* %15, i32 0, i32 0
  %17 = call i32 @strbuf_addch(i32* %16, i8 signext 10)
  %18 = load %struct.json_writer*, %struct.json_writer** %3, align 8
  %19 = call i32 @indent_pretty(%struct.json_writer* %18)
  br label %20

20:                                               ; preds = %14, %2
  %21 = load %struct.json_writer*, %struct.json_writer** %3, align 8
  %22 = getelementptr inbounds %struct.json_writer, %struct.json_writer* %21, i32 0, i32 0
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @append_quoted_string(i32* %22, i8* %23)
  %25 = load %struct.json_writer*, %struct.json_writer** %3, align 8
  %26 = getelementptr inbounds %struct.json_writer, %struct.json_writer* %25, i32 0, i32 0
  %27 = call i32 @strbuf_addch(i32* %26, i8 signext 58)
  %28 = load %struct.json_writer*, %struct.json_writer** %3, align 8
  %29 = getelementptr inbounds %struct.json_writer, %struct.json_writer* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %20
  %33 = load %struct.json_writer*, %struct.json_writer** %3, align 8
  %34 = getelementptr inbounds %struct.json_writer, %struct.json_writer* %33, i32 0, i32 0
  %35 = call i32 @strbuf_addch(i32* %34, i8 signext 32)
  br label %36

36:                                               ; preds = %32, %20
  ret void
}

declare dso_local i32 @assert_in_object(%struct.json_writer*, i8*) #1

declare dso_local i32 @maybe_add_comma(%struct.json_writer*) #1

declare dso_local i32 @strbuf_addch(i32*, i8 signext) #1

declare dso_local i32 @indent_pretty(%struct.json_writer*) #1

declare dso_local i32 @append_quoted_string(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
