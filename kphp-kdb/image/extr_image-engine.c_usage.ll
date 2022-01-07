; ModuleID = '/home/carl/AnghaBench/kphp-kdb/image/extr_image-engine.c_usage.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/image/extr_image-engine.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [893 x i8] c"usage: image-engine [-d] [-v] [-p<port>] [-u<username>] [-g<groupname>] [-c<max-conn>] [-l<log_name>] [-P<max-child-process-number>][-H<max-all-child-process-result>] [-n<nice>] [-N<nice>] [-A<area>] [-M<memory>]\0A%s\0A[-p<port>]\09TCP port number to listen on (default: %d)\0A[-u<username>]\09assume identity of <username> (only when run as root)\0A[-c<max_conn>]\09max simultaneous connections, default is %d\0A[-v]\09\09verbose\0A[-h]\09\09print this help and exit\0A[-b<backlog>]\0A[-l<log_name>]\09log... about something\0A[-P<max-child-process-number>]\09\0A[-H<max-all-child-process-result>]\09default 16m\0A[-n<nice>]\09set main process nice (range from -20 to 19)\0A[-N<nice>]\09set job process nice (range from -20 to 19)\0A[-M<memory>]\09set GraphicsMagick memory limit (default: 256m)\0A[-R<memory>]\09set resident set size limit (default: 1g)\0A[-A<area>]\09set max load image area in pixels\0A[-T<threads>]\09set threads limit (default: %d)\0A\00", align 1
@FullVersionStr = common dso_local global i8* null, align 8
@TCP_PORT = common dso_local global i32 0, align 4
@MAX_CONNECTIONS = common dso_local global i32 0, align 4
@threads_limit = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usage() #0 {
  %1 = load i8*, i8** @FullVersionStr, align 8
  %2 = load i32, i32* @TCP_PORT, align 4
  %3 = load i32, i32* @MAX_CONNECTIONS, align 4
  %4 = load i32, i32* @threads_limit, align 4
  %5 = call i32 @printf(i8* getelementptr inbounds ([893 x i8], [893 x i8]* @.str, i64 0, i64 0), i8* %1, i32 %2, i32 %3, i32 %4)
  %6 = call i32 @exit(i32 2) #3
  unreachable
}

declare dso_local i32 @printf(i8*, i8*, i32, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
