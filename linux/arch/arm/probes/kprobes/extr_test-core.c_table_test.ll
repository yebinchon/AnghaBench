; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/probes/kprobes/extr_test-core.c_table_test.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/probes/kprobes/extr_test-core.c_table_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.decode_item = type { i32 }
%struct.table_test_args = type { %union.decode_item*, i32, i32 }

@table_test_fn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.decode_item*)* @table_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @table_test(%union.decode_item* %0) #0 {
  %2 = alloca %union.decode_item*, align 8
  %3 = alloca %struct.table_test_args, align 8
  store %union.decode_item* %0, %union.decode_item** %2, align 8
  %4 = getelementptr inbounds %struct.table_test_args, %struct.table_test_args* %3, i32 0, i32 0
  %5 = load %union.decode_item*, %union.decode_item** %2, align 8
  store %union.decode_item* %5, %union.decode_item** %4, align 8
  %6 = getelementptr inbounds %struct.table_test_args, %struct.table_test_args* %3, i32 0, i32 1
  store i32 0, i32* %6, align 8
  %7 = getelementptr inbounds %struct.table_test_args, %struct.table_test_args* %3, i32 0, i32 2
  store i32 0, i32* %7, align 4
  %8 = getelementptr inbounds %struct.table_test_args, %struct.table_test_args* %3, i32 0, i32 0
  %9 = load %union.decode_item*, %union.decode_item** %8, align 8
  %10 = load i32, i32* @table_test_fn, align 4
  %11 = call i32 @table_iter(%union.decode_item* %9, i32 %10, %struct.table_test_args* %3)
  ret i32 %11
}

declare dso_local i32 @table_iter(%union.decode_item*, i32, %struct.table_test_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
