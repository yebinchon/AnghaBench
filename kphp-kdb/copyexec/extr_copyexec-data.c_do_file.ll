; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-data.c_do_file.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-data.c_do_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_copyexec_aux_transaction_cmd_file = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"unpack_file (%s) failed at the line %d\00", align 1
@unpack_filename_buff = common dso_local global i32 0, align 4
@cur_transaction_result = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lev_copyexec_aux_transaction_cmd_file*)* @do_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_file(%struct.lev_copyexec_aux_transaction_cmd_file* %0) #0 {
  %2 = alloca %struct.lev_copyexec_aux_transaction_cmd_file*, align 8
  %3 = alloca i32, align 4
  store %struct.lev_copyexec_aux_transaction_cmd_file* %0, %struct.lev_copyexec_aux_transaction_cmd_file** %2, align 8
  %4 = load %struct.lev_copyexec_aux_transaction_cmd_file*, %struct.lev_copyexec_aux_transaction_cmd_file** %2, align 8
  %5 = call i32 @unpack_file(%struct.lev_copyexec_aux_transaction_cmd_file* %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load i32, i32* @unpack_filename_buff, align 4
  %10 = load i32, i32* %3, align 4
  %11 = sub nsw i32 0, %10
  %12 = call i32 @write_transaction_err_logevent(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %11)
  store i32 255, i32* @cur_transaction_result, align 4
  br label %13

13:                                               ; preds = %8, %1
  %14 = load i32, i32* %3, align 4
  ret i32 %14
}

declare dso_local i32 @unpack_file(%struct.lev_copyexec_aux_transaction_cmd_file*) #1

declare dso_local i32 @write_transaction_err_logevent(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
