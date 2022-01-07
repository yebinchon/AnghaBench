; ModuleID = '/home/carl/AnghaBench/kphp-kdb/logs/extr_logs-data.c_create_type.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/logs/extr_logs-data.c_create_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_logs_create_type = type { i32, i32 }

@buff = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @create_type(%struct.lev_logs_create_type* %0) #0 {
  %2 = alloca %struct.lev_logs_create_type*, align 8
  store %struct.lev_logs_create_type* %0, %struct.lev_logs_create_type** %2, align 8
  %3 = load i32, i32* @buff, align 4
  %4 = load %struct.lev_logs_create_type*, %struct.lev_logs_create_type** %2, align 8
  %5 = getelementptr inbounds %struct.lev_logs_create_type, %struct.lev_logs_create_type* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @strcpy(i32 %3, i32 %6)
  %8 = load i32, i32* @buff, align 4
  %9 = load %struct.lev_logs_create_type*, %struct.lev_logs_create_type** %2, align 8
  %10 = getelementptr inbounds %struct.lev_logs_create_type, %struct.lev_logs_create_type* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i8* @create_type_buf(i32 %8, i32 %11)
  ret i8* %12
}

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i8* @create_type_buf(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
