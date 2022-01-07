; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-binlog.c_dump_enable.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-binlog.c_dump_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_copyexec_result_enable = type { i64, i32 }

@LEV_COPYEXEC_RESULT_ENABLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"LEV_COPYEXEC_RESULT_ENABLE\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"LEV_COPYEXEC_RESULT_DISABLE\00", align 1
@out = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"0x%llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lev_copyexec_result_enable*)* @dump_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_enable(%struct.lev_copyexec_result_enable* %0) #0 {
  %2 = alloca %struct.lev_copyexec_result_enable*, align 8
  store %struct.lev_copyexec_result_enable* %0, %struct.lev_copyexec_result_enable** %2, align 8
  %3 = load %struct.lev_copyexec_result_enable*, %struct.lev_copyexec_result_enable** %2, align 8
  %4 = getelementptr inbounds %struct.lev_copyexec_result_enable, %struct.lev_copyexec_result_enable* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @LEV_COPYEXEC_RESULT_ENABLE, align 8
  %7 = icmp eq i64 %5, %6
  %8 = zext i1 %7 to i64
  %9 = select i1 %7, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0)
  %10 = call i64 @dump_line_header(i8* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %19

13:                                               ; preds = %1
  %14 = load i32, i32* @out, align 4
  %15 = load %struct.lev_copyexec_result_enable*, %struct.lev_copyexec_result_enable** %2, align 8
  %16 = getelementptr inbounds %struct.lev_copyexec_result_enable, %struct.lev_copyexec_result_enable* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @fprintf(i32 %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %13, %12
  ret void
}

declare dso_local i64 @dump_line_header(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
