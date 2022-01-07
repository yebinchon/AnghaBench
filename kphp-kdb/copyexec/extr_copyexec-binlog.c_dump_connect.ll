; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-binlog.c_dump_connect.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-binlog.c_dump_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_copyexec_result_connect = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"LEV_COPYEXEC_RESULT_CONNECT\00", align 1
@out = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"0x%llx\090x%llx\09%s\09%.*s\09%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lev_copyexec_result_connect*)* @dump_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_connect(%struct.lev_copyexec_result_connect* %0) #0 {
  %2 = alloca %struct.lev_copyexec_result_connect*, align 8
  store %struct.lev_copyexec_result_connect* %0, %struct.lev_copyexec_result_connect** %2, align 8
  %3 = call i64 @dump_line_header(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %28

6:                                                ; preds = %1
  %7 = load i32, i32* @out, align 4
  %8 = load %struct.lev_copyexec_result_connect*, %struct.lev_copyexec_result_connect** %2, align 8
  %9 = getelementptr inbounds %struct.lev_copyexec_result_connect, %struct.lev_copyexec_result_connect* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.lev_copyexec_result_connect*, %struct.lev_copyexec_result_connect** %2, align 8
  %12 = getelementptr inbounds %struct.lev_copyexec_result_connect, %struct.lev_copyexec_result_connect* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.lev_copyexec_result_connect*, %struct.lev_copyexec_result_connect** %2, align 8
  %15 = getelementptr inbounds %struct.lev_copyexec_result_connect, %struct.lev_copyexec_result_connect* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @show_ip(i32 %16)
  %18 = load %struct.lev_copyexec_result_connect*, %struct.lev_copyexec_result_connect** %2, align 8
  %19 = getelementptr inbounds %struct.lev_copyexec_result_connect, %struct.lev_copyexec_result_connect* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.lev_copyexec_result_connect*, %struct.lev_copyexec_result_connect** %2, align 8
  %22 = getelementptr inbounds %struct.lev_copyexec_result_connect, %struct.lev_copyexec_result_connect* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.lev_copyexec_result_connect*, %struct.lev_copyexec_result_connect** %2, align 8
  %25 = getelementptr inbounds %struct.lev_copyexec_result_connect, %struct.lev_copyexec_result_connect* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @fprintf(i32 %7, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %10, i32 %13, i32 %17, i32 %20, i32 %23, i32 %26)
  br label %28

28:                                               ; preds = %6, %5
  ret void
}

declare dso_local i64 @dump_line_header(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @show_ip(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
