; ModuleID = '/home/carl/AnghaBench/kphp-kdb/money/extr_money-import-dump.c_output_stats.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/money/extr_money-import-dump.c_output_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [126 x i8] c"read: %lld bytes, %d records read, %d processed\0Awritten: %lld bytes\0Atemp data: %ld bytes allocated, %d+%d in read/write maps\0A\00", align 1
@rd_bytes = common dso_local global i32 0, align 4
@line_no = common dso_local global i32 0, align 4
@adj_rec = common dso_local global i32 0, align 4
@wr_bytes = common dso_local global i32 0, align 4
@GS = common dso_local global i64 0, align 8
@GC = common dso_local global i64 0, align 8
@Gc = common dso_local global i32 0, align 4
@Gd = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @output_stats() #0 {
  %1 = load i32, i32* @stderr, align 4
  %2 = load i32, i32* @rd_bytes, align 4
  %3 = load i32, i32* @line_no, align 4
  %4 = load i32, i32* @adj_rec, align 4
  %5 = load i32, i32* @wr_bytes, align 4
  %6 = load i64, i64* @GS, align 8
  %7 = load i64, i64* @GC, align 8
  %8 = sub nsw i64 %6, %7
  %9 = load i32, i32* @Gc, align 4
  %10 = load i32, i32* @Gd, align 4
  %11 = call i32 @fprintf(i32 %1, i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str, i64 0, i64 0), i32 %2, i32 %3, i32 %4, i32 %5, i64 %8, i32 %9, i32 %10)
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i32, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
