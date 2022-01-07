; ModuleID = '/home/carl/AnghaBench/git/extr_read-cache.c_write_ieot_extension.c'
source_filename = "/home/carl/AnghaBench/git/extr_read-cache.c_write_ieot_extension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.index_entry_offset_table = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@IEOT_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strbuf*, %struct.index_entry_offset_table*)* @write_ieot_extension to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_ieot_extension(%struct.strbuf* %0, %struct.index_entry_offset_table* %1) #0 {
  %3 = alloca %struct.strbuf*, align 8
  %4 = alloca %struct.index_entry_offset_table*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.strbuf* %0, %struct.strbuf** %3, align 8
  store %struct.index_entry_offset_table* %1, %struct.index_entry_offset_table** %4, align 8
  %7 = load i32, i32* @IEOT_VERSION, align 4
  %8 = call i32 @put_be32(i32* %5, i32 %7)
  %9 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %10 = call i32 @strbuf_add(%struct.strbuf* %9, i32* %5, i32 4)
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %40, %2
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.index_entry_offset_table*, %struct.index_entry_offset_table** %4, align 8
  %14 = getelementptr inbounds %struct.index_entry_offset_table, %struct.index_entry_offset_table* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %43

17:                                               ; preds = %11
  %18 = load %struct.index_entry_offset_table*, %struct.index_entry_offset_table** %4, align 8
  %19 = getelementptr inbounds %struct.index_entry_offset_table, %struct.index_entry_offset_table* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @put_be32(i32* %5, i32 %25)
  %27 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %28 = call i32 @strbuf_add(%struct.strbuf* %27, i32* %5, i32 4)
  %29 = load %struct.index_entry_offset_table*, %struct.index_entry_offset_table** %4, align 8
  %30 = getelementptr inbounds %struct.index_entry_offset_table, %struct.index_entry_offset_table* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @put_be32(i32* %5, i32 %36)
  %38 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %39 = call i32 @strbuf_add(%struct.strbuf* %38, i32* %5, i32 4)
  br label %40

40:                                               ; preds = %17
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %11

43:                                               ; preds = %11
  ret void
}

declare dso_local i32 @put_be32(i32*, i32) #1

declare dso_local i32 @strbuf_add(%struct.strbuf*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
