; ModuleID = '/home/carl/AnghaBench/git/vcs-svn/extr_fast_export.c_die_short_read.c'
source_filename = "/home/carl/AnghaBench/git/vcs-svn/extr_fast_export.c_die_short_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line_buffer = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"error reading dump file\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"invalid dump: unexpected end of file\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.line_buffer*)* @die_short_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @die_short_read(%struct.line_buffer* %0) #0 {
  %2 = alloca %struct.line_buffer*, align 8
  store %struct.line_buffer* %0, %struct.line_buffer** %2, align 8
  %3 = load %struct.line_buffer*, %struct.line_buffer** %2, align 8
  %4 = call i64 @buffer_ferror(%struct.line_buffer* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = call i32 @die_errno(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %8

8:                                                ; preds = %6, %1
  %9 = call i32 @die(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i64 @buffer_ferror(%struct.line_buffer*) #1

declare dso_local i32 @die_errno(i8*) #1

declare dso_local i32 @die(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
