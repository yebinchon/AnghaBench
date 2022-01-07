; ModuleID = '/home/carl/AnghaBench/git/extr_graph.c_strbuf_write_column.c'
source_filename = "/home/carl/AnghaBench/git/extr_graph.c_strbuf_write_column.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.column = type { i64 }

@column_colors_max = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strbuf*, %struct.column*, i8)* @strbuf_write_column to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @strbuf_write_column(%struct.strbuf* %0, %struct.column* %1, i8 signext %2) #0 {
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca %struct.column*, align 8
  %6 = alloca i8, align 1
  store %struct.strbuf* %0, %struct.strbuf** %4, align 8
  store %struct.column* %1, %struct.column** %5, align 8
  store i8 %2, i8* %6, align 1
  %7 = load %struct.column*, %struct.column** %5, align 8
  %8 = getelementptr inbounds %struct.column, %struct.column* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @column_colors_max, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %3
  %13 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %14 = load %struct.column*, %struct.column** %5, align 8
  %15 = getelementptr inbounds %struct.column, %struct.column* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @column_get_color_code(i64 %16)
  %18 = call i32 @strbuf_addstr(%struct.strbuf* %13, i32 %17)
  br label %19

19:                                               ; preds = %12, %3
  %20 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %21 = load i8, i8* %6, align 1
  %22 = call i32 @strbuf_addch(%struct.strbuf* %20, i8 signext %21)
  %23 = load %struct.column*, %struct.column** %5, align 8
  %24 = getelementptr inbounds %struct.column, %struct.column* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @column_colors_max, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %19
  %29 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %30 = load i64, i64* @column_colors_max, align 8
  %31 = call i32 @column_get_color_code(i64 %30)
  %32 = call i32 @strbuf_addstr(%struct.strbuf* %29, i32 %31)
  br label %33

33:                                               ; preds = %28, %19
  ret void
}

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i32) #1

declare dso_local i32 @column_get_color_code(i64) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
