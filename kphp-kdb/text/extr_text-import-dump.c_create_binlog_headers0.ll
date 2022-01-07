; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-import-dump.c_create_binlog_headers0.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-import-dump.c_create_binlog_headers0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i32, i32 }

@binlog_headers = common dso_local global i32 0, align 4
@KHDR = common dso_local global %struct.TYPE_6__* null, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@default_progname = common dso_local global i8* null, align 8
@kfs_Hdr = common dso_local global %struct.TYPE_6__* null, align 8
@kfs_binlog = common dso_local global i32 0, align 4
@split_max = common dso_local global i32 0, align 4
@split_min = common dso_local global i32 0, align 4
@split_mod = common dso_local global i32 0, align 4
@stdout_mode = common dso_local global i64 0, align 8
@table_format = common dso_local global i32 0, align 4
@targ_fd = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @create_binlog_headers0(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @binlog_headers, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %3
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** @KHDR, align 8
  %11 = icmp ne %struct.TYPE_6__* %10, null
  %12 = xor i1 %11, true
  br label %13

13:                                               ; preds = %9, %3
  %14 = phi i1 [ false, %3 ], [ %12, %9 ]
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
