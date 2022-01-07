; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-log-split.c_usage.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-log-split.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [749 x i8] c"usage:\09%s [-v] [-u<username>] [-m<rem>,<mod>] [...options...] <old-binlog-file> [<output-file>]\0A\09Copies (some of) lists engine binlog records to another binlog. If <output-file> is specified, resulting binlog is appended to it.\0A\09-h\09this help screen\0A\09-v\09verbose mode on\0A\09-f\09skip LEV_ROTATE_TO and LEV_ROTATE_FROM entries (useful when binlog is merged in one file)\0A\09-m<rem>,<mod>\09copy only record with id %% <mod> == <rem>\0A\09-s<start-binlog-pos>\09start reading binlog from specified position\0A\09-t<stop-binlog-pos>\09stop reading binlog at specified position\0A\09-u<username>\09assume identity of given user\0A\09-M<mode>\09 split mode: firstint (default) or liked\09-f\09skip rotate\0A\09-F\09member_fans: value := 0; flags := 0\0A\09\09fans_members: value := 1; flags := flags & 4\0A\00", align 1
@progname = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usage() #0 {
  %1 = load i32, i32* @stderr, align 4
  %2 = load i8*, i8** @progname, align 8
  %3 = call i32 @fprintf(i32 %1, i8* getelementptr inbounds ([749 x i8], [749 x i8]* @.str, i64 0, i64 0), i8* %2)
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
