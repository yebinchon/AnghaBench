; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-mysql-server.c_sqls_execute.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-mysql-server.c_sqls_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }

@SKIP_ALL_BYTES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqls_execute(%struct.connection* %0, i32 %1) #0 {
  %3 = alloca %struct.connection*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.connection*, %struct.connection** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @sqls_builtin_execute(%struct.connection* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @SKIP_ALL_BYTES, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.connection*, %struct.connection** %3, align 8
  %14 = call i32 @send_error_packet(%struct.connection* %13, i32 1045, i32 28000, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6, i32 1)
  br label %15

15:                                               ; preds = %12, %2
  %16 = load i32, i32* %5, align 4
  ret i32 %16
}

declare dso_local i32 @sqls_builtin_execute(%struct.connection*, i32) #1

declare dso_local i32 @send_error_packet(%struct.connection*, i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
