; ModuleID = '/home/carl/AnghaBench/git/extr_log-tree.c_show_name.c'
source_filename = "/home/carl/AnghaBench/git/extr_log-tree.c_show_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.name_decoration = type { i32 }

@decoration_flags = common dso_local global i64 0, align 8
@DECORATE_SHORT_REFS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strbuf*, %struct.name_decoration*)* @show_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_name(%struct.strbuf* %0, %struct.name_decoration* %1) #0 {
  %3 = alloca %struct.strbuf*, align 8
  %4 = alloca %struct.name_decoration*, align 8
  store %struct.strbuf* %0, %struct.strbuf** %3, align 8
  store %struct.name_decoration* %1, %struct.name_decoration** %4, align 8
  %5 = load i64, i64* @decoration_flags, align 8
  %6 = load i64, i64* @DECORATE_SHORT_REFS, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %10 = load %struct.name_decoration*, %struct.name_decoration** %4, align 8
  %11 = getelementptr inbounds %struct.name_decoration, %struct.name_decoration* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @prettify_refname(i32 %12)
  %14 = call i32 @strbuf_addstr(%struct.strbuf* %9, i32 %13)
  br label %21

15:                                               ; preds = %2
  %16 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %17 = load %struct.name_decoration*, %struct.name_decoration** %4, align 8
  %18 = getelementptr inbounds %struct.name_decoration, %struct.name_decoration* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @strbuf_addstr(%struct.strbuf* %16, i32 %19)
  br label %21

21:                                               ; preds = %15, %8
  ret void
}

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i32) #1

declare dso_local i32 @prettify_refname(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
