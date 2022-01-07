; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-cgroup.c___blkg_prfill_u64.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-cgroup.c___blkg_prfill_u64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.blkg_policy_data = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"%s %llu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @__blkg_prfill_u64(%struct.seq_file* %0, %struct.blkg_policy_data* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca %struct.blkg_policy_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %5, align 8
  store %struct.blkg_policy_data* %1, %struct.blkg_policy_data** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.blkg_policy_data*, %struct.blkg_policy_data** %6, align 8
  %10 = getelementptr inbounds %struct.blkg_policy_data, %struct.blkg_policy_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i8* @blkg_dev_name(i32 %11)
  store i8* %12, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %22

16:                                               ; preds = %3
  %17 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @seq_printf(%struct.seq_file* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %18, i64 %19)
  %21 = load i64, i64* %7, align 8
  store i64 %21, i64* %4, align 8
  br label %22

22:                                               ; preds = %16, %15
  %23 = load i64, i64* %4, align 8
  ret i64 %23
}

declare dso_local i8* @blkg_dev_name(i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
