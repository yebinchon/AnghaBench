; ModuleID = '/home/carl/AnghaBench/git/trace2/extr_tr2_cmd_name.c_tr2_cmd_name_append_hierarchy.c'
source_filename = "/home/carl/AnghaBench/git/trace2/extr_tr2_cmd_name.c_tr2_cmd_name_append_hierarchy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@TR2_ENVVAR_PARENT_NAME = common dso_local global i32 0, align 4
@tr2cmdname_hierarchy = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tr2_cmd_name_append_hierarchy(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i32, i32* @TR2_ENVVAR_PARENT_NAME, align 4
  %5 = call i8* @getenv(i32 %4)
  store i8* %5, i8** %3, align 8
  %6 = call i32 @strbuf_reset(%struct.TYPE_5__* @tr2cmdname_hierarchy)
  %7 = load i8*, i8** %3, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @strbuf_addstr(%struct.TYPE_5__* @tr2cmdname_hierarchy, i8* %15)
  %17 = call i32 @strbuf_addch(%struct.TYPE_5__* @tr2cmdname_hierarchy, i8 signext 47)
  br label %18

18:                                               ; preds = %14, %9, %1
  %19 = load i8*, i8** %2, align 8
  %20 = call i32 @strbuf_addstr(%struct.TYPE_5__* @tr2cmdname_hierarchy, i8* %19)
  %21 = load i32, i32* @TR2_ENVVAR_PARENT_NAME, align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tr2cmdname_hierarchy, i32 0, i32 0), align 4
  %23 = call i32 @setenv(i32 %21, i32 %22, i32 1)
  ret void
}

declare dso_local i8* @getenv(i32) #1

declare dso_local i32 @strbuf_reset(%struct.TYPE_5__*) #1

declare dso_local i32 @strbuf_addstr(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @strbuf_addch(%struct.TYPE_5__*, i8 signext) #1

declare dso_local i32 @setenv(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
